# Vitess Kubernetes Deployment Guide

This directory contains the Kubernetes manifests for deploying Vitess using the Vitess Operator.

## Files Overview

### `operator.yaml`
Contains the Vitess Operator deployment, which manages Vitess clusters in Kubernetes. This file includes:
- **CustomResourceDefinitions (CRDs)**: Defines VitessCluster, VitessKeyspace, VitessShard, and other Vitess resources
- **Operator Deployment**: The controller that watches for VitessCluster resources and manages their lifecycle
- **RBAC Resources**: Service accounts, roles, and bindings required for the operator
- **WATCH_NAMESPACE**: Configured to watch `default` and `cmms` namespaces

### `vitess_cluster.yaml`
Defines a complete Vitess cluster named `cmms-vitess-cluster` in the `cmms` namespace. This file includes:
- **VitessCluster Resource**: Main cluster configuration
- **Secret**: Contains authentication credentials, database initialization script, and RBAC rules

### `scripts/port-forward.sh`
A convenience script for managing port-forwards to Vitess services. Features:
- **Dynamic Service Discovery**: Automatically finds services with auto-generated hashes
- **Background Process Management**: Runs port-forwards in background with PID tracking
- **Port Conflict Detection**: Checks if ports are already in use
- **Multiple Commands**: start, stop, status, restart
- **Configurable Ports**: Via environment variables

## Cluster Configuration

### Key Components

1. **Cells**: Represents availability zones (configured as `zone1`)
2. **VTGate**: Gateway service that routes queries to appropriate tablets
3. **VTAdmin**: Web UI and API for cluster management
4. **VTCTLD**: Control plane service for cluster operations
5. **VTTablet**: Manages MySQL instances and handles query routing
6. **VTOrc**: Vitess Orchestrator for automated failover
7. **ETCD**: Topology store for cluster metadata

### Keyspace Configuration

- **Keyspace**: `schShared`
- **Sharding**: Unsharded (1 shard)
- **Tablets**: 2 replica tablets in `zone1`
- **Storage**: 10Gi per tablet using PersistentVolumeClaims

### Backup Configuration

- **Engine**: `xtrabackup` (Percona XtraBackup for MySQL backups)
- **Location**: `/tmp` on host (for development only)

## Run Commands

### 1. Create the Namespace

**Important**: The namespace must be created first because `operator.yaml` contains RBAC resources that reference it.

```bash
# Create the cmms namespace
kubectl create namespace cmms
```

### 2. Install the Vitess Operator

```bash
# Apply the operator manifest (installs CRDs and operator deployment)
kubectl apply -f kube/operator.yaml

# Verify operator is running
kubectl -n default get deployment vitess-operator
kubectl -n default get pods -l app=vitess-operator
```

### 3. Deploy the Vitess Cluster

```bash
# Apply the cluster configuration
kubectl -n cmms apply -f kube/vitess_cluster.yaml

# Watch pods come up
kubectl -n cmms get pods -w
```

### 4. Initialize the Shard Primary

After all pods are running (wait for all vttablet pods to show 3/3 Ready), you need to initialize the shard primary:

```bash
# Get the vtctld pod name (dynamically)
VTCTLD_POD=$(kubectl -n cmms get pods -o name | grep vtctld | head -1 | cut -d/ -f2)

# List tablets to see their aliases (format: zone1-XXXXXXXX)
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared

# Get the first tablet alias automatically
PRIMARY_TABLET=$(kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared 2>/dev/null | \
  head -1 | awk '{print $1}')

# Initialize the shard primary using the discovered tablet alias
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 EmergencyReparentShard schShared/- \
  --new-primary "$PRIMARY_TABLET" --wait-replicas-timeout 180s

# Verify shard status (should show primary_alias)
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetShard schShared/-

# Verify tablets are healthy (should show primary and replica)
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared
```

### 5. Create Test Data (Optional but Recommended)

To see data in VTAdmin, create a test table and apply VSchema:

```bash
# Get vtctld pod (dynamically)
VTCTLD_POD=$(kubectl -n cmms get pods -o name | grep vtctld | head -1 | cut -d/ -f2)

# Get primary tablet alias (dynamically)
PRIMARY_TABLET=$(kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared 2>/dev/null | \
  grep primary | awk '{print $1}')

# Create a test table
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ExecuteFetchAsDBA "$PRIMARY_TABLET" \
  "CREATE TABLE IF NOT EXISTS test_table (id INT PRIMARY KEY, name VARCHAR(100), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);"

# Insert test data
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ExecuteFetchAsDBA "$PRIMARY_TABLET" \
  "INSERT INTO test_table (id, name) VALUES (1, 'First Record'), (2, 'Second Record'), (3, 'Third Record');"

# Apply VSchema so VTAdmin recognizes the table
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ApplyVSchema --vschema '{"tables":{"test_table":{}}}' schShared

# Rebuild keyspace graph to refresh serving data
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 RebuildKeyspaceGraph schShared

# Verify table exists
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetSchema "$PRIMARY_TABLET" --table-names-only
```

### 6. Access the Cluster

#### Option A: Using the Port-Forward Script (Recommended)

Use the provided script for easy port-forwarding:

```bash
# Start all port-forwards
./kube/scripts/port-forward.sh start

# Check status
./kube/scripts/port-forward.sh status

# Stop all port-forwards
./kube/scripts/port-forward.sh stop

# Restart all port-forwards
./kube/scripts/port-forward.sh restart
```

The script automatically:
- Discovers service names (handles auto-generated hashes)
- Checks if ports are available
- Starts port-forwards in the background
- Tracks PIDs for easy management

**Default ports:**
- VTAdmin Web UI: `http://localhost:15000`
- VTAdmin API: `http://localhost:15001`
- VTGate MySQL: `localhost:3306`
- VTCTLD Web UI: `http://localhost:15002`
- VTCTLD gRPC: `localhost:15999`

**Custom ports via environment variables:**
```bash
VTADMIN_WEB_PORT=14000 VTADMIN_API_PORT=14001 ./kube/scripts/port-forward.sh start
```

**Note**: The `apiAddresses` in `vitess_cluster.yaml` must match your VTAdmin API port (default: `http://localhost:15001`).

#### Option B: Manual Port-Forward

**Important**: Service names include auto-generated hashes, so always use dynamic discovery:

```bash
# Port-forward VTAdmin (Web UI and API)
# Service name format: cmms-vitess-cluster-vtadmin-<hash>
VTADMIN_SVC=$(kubectl -n cmms get svc -o name | grep vtadmin | cut -d/ -f2)
kubectl -n cmms port-forward svc/$VTADMIN_SVC 15000:web 15001:api &
# Access Web UI at: http://localhost:15000
# Access API at: http://localhost:15001

# Port-forward VTCTLD (Control plane API and Web UI) - in a separate terminal
# Service name format: cmms-vitess-cluster-vtctld-<hash>
VTCTLD_SVC=$(kubectl -n cmms get svc -o name | grep vtctld | cut -d/ -f2)
kubectl -n cmms port-forward svc/$VTCTLD_SVC 15002:web 15999:grpc &
# Access Web UI at: http://localhost:15002
# Access gRPC API at: localhost:15999

# Port-forward VTGate (MySQL protocol) - in a separate terminal
# Service name format: cmms-vitess-cluster-zone1-vtgate-<hash>
VTGATE_SVC=$(kubectl -n cmms get svc -o name | grep zone1-vtgate | cut -d/ -f2)
kubectl -n cmms port-forward svc/$VTGATE_SVC 3306:3306 &
# Connect with: mysql -h 127.0.0.1 -P 3306 -u user1 -ppassword1 schShared
```

**Note**: If VTAdmin UI is blank or not showing keyspaces/tablets:
1. Ensure the shard primary is initialized (step 4)
2. Rebuild keyspace graph: `kubectl -n cmms exec "$VTCTLD_POD" -- vtctldclient --server localhost:15999 RebuildKeyspaceGraph schShared`
3. Restart VTAdmin: `kubectl -n cmms delete pod $(kubectl -n cmms get pods -o name | grep vtadmin | head -1 | cut -d/ -f2)`
4. The `apiAddresses` in `vitess_cluster.yaml` must match the port-forward port (default: 15001)
5. Hard refresh the browser (Ctrl+F5 or Cmd+Shift+R)

## Stop Commands

### 1. Stop the Vitess Cluster

```bash
# Delete the VitessCluster resource (this will gracefully shut down all components)
kubectl -n cmms delete vitesscluster cmms-vitess-cluster

# Watch pods terminate
kubectl -n cmms get pods -w
```

### 2. Delete All Resources in Namespace

```bash
# Delete all resources in the namespace
kubectl -n cmms delete all --all

# Or delete the entire namespace (this deletes everything)
kubectl delete namespace cmms
```

### 3. Stop the Operator

```bash
# Delete the operator deployment
kubectl -n default delete deployment vitess-operator

# Optionally delete CRDs (this will delete all VitessCluster resources)
kubectl delete crd vitessclusters.planetscale.com
kubectl delete crd vitesskeyspaces.planetscale.com
kubectl delete crd vitessshards.planetscale.com
# ... (delete other Vitess CRDs as needed)
```

## Useful Commands

### Check Cluster Status

```bash
# List all pods
kubectl -n cmms get pods

# Check pod status in detail
kubectl -n cmms get pods -o wide

# Describe a specific pod
kubectl -n cmms describe pod <pod-name>

# View logs
kubectl -n cmms logs <pod-name> -c <container-name>
```

### Check Vitess Resources

```bash
# List VitessCluster resources
kubectl -n cmms get vitessclusters

# Describe the cluster
kubectl -n cmms describe vitesscluster cmms-vitess-cluster

# List VitessKeyspaces
kubectl -n cmms get vitesskeyspaces

# List VitessShards
kubectl -n cmms get vitessshards
```

### VTCTLD Client Commands

All commands use dynamic pod and tablet discovery:

```bash
# Get vtctld pod (dynamically)
VTCTLD_POD=$(kubectl -n cmms get pods -o name | grep vtctld | head -1 | cut -d/ -f2)

# List all keyspaces
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetKeyspaces

# List tablets in a keyspace (shows aliases like zone1-XXXXXXXX)
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared

# Get shard information
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetShard schShared/-

# Get primary tablet alias dynamically
PRIMARY_TABLET=$(kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared 2>/dev/null | \
  grep primary | awk '{print $1}')

# Ping a tablet (using discovered alias)
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 PingTablet "$PRIMARY_TABLET"

# Get schema from a tablet
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetSchema "$PRIMARY_TABLET" --table-names-only

# Get VSchema for keyspace
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetVSchema schShared
```

### Troubleshooting

```bash
# Check events in the namespace
kubectl -n cmms get events --sort-by=.lastTimestamp | tail -20

# Check PersistentVolumeClaims
kubectl -n cmms get pvc

# Check services (note the hashes in service names)
kubectl -n cmms get svc

# Check operator logs
kubectl -n default logs -l app=vitess-operator --tail=100

# Check if tablets are healthy
for p in $(kubectl -n cmms get po -o name | grep vttablet | cut -d/ -f2); do
  echo "=== $p ==="
  kubectl -n cmms get pod "$p" -o jsonpath='{range .status.containerStatuses[*]}{.name}{" "}{.ready}{"\n"}{end}'
done

# Check VTAdmin logs for connection issues
VTADMIN_POD=$(kubectl -n cmms get pods -o name | grep vtadmin | head -1 | cut -d/ -f2)
kubectl -n cmms logs "$VTADMIN_POD" -c vtadmin-api --tail=50 | grep -i "error\|vtctld\|connection"

# Check VTCTLD logs
VTCTLD_POD=$(kubectl -n cmms get pods -o name | grep vtctld | head -1 | cut -d/ -f2)
kubectl -n cmms logs "$VTCTLD_POD" --tail=50 | grep -i "error"
```

### Common Issues

**VTAdmin UI is blank:**
1. Ensure shard primary is initialized (step 4)
2. Create at least one table and apply VSchema (step 5)
3. Verify `apiAddresses` in `vitess_cluster.yaml` is set to `http://localhost:15001`
4. Restart VTAdmin pod: `kubectl -n cmms delete pod $(kubectl -n cmms get pods -o name | grep vtadmin | head -1 | cut -d/ -f2)`
5. Hard refresh browser (Ctrl+F5 or Cmd+Shift+R)

**VTAdmin can't connect to VTCTLD:**
- Check for "too_many_pings" errors in VTAdmin logs (usually non-critical)
- Restart both VTAdmin and VTCTLD pods
- Verify service endpoints: `kubectl -n cmms get endpoints`

**Tablets stuck in Init or not Ready:**
- Check PVCs are bound: `kubectl -n cmms get pvc`
- Check pod events: `kubectl -n cmms describe pod <pod-name>`
- Ensure backup directory exists on nodes if using hostPath backups

## Important Notes

1. **Dynamic Service Names**: All service names include auto-generated hashes (e.g., `cmms-vitess-cluster-vtadmin-97a34abe`). Always use dynamic discovery commands or the port-forward script rather than hardcoded names.

2. **Port-Forward Script**: Use `./kube/scripts/port-forward.sh` for easy port-forward management. It handles dynamic service discovery, port conflicts, and background process management automatically.

3. **VTAdmin apiAddresses**: The `apiAddresses` field in `vitess_cluster.yaml` must match your port-forward port. Default is `http://localhost:15001`. If you change the port-forward port, update this value and restart VTAdmin.

4. **VTAdmin Display**: VTAdmin should show keyspaces and tablets even without tables. If it's blank:
   - Ensure shard primary is initialized
   - Rebuild keyspace graph
   - Restart VTAdmin pod
   - Verify port-forward is running and `apiAddresses` matches

5. **Backup Location**: The backup is configured to use `/tmp` on the host, which is suitable for development only. For production, use a proper object storage solution (S3, GCS, etc.).

6. **Resource Limits**: The current configuration uses minimal resources suitable for development. Adjust CPU and memory limits for production workloads.

7. **Durability Policy**: The keyspace uses `durabilityPolicy: none`, which means no semi-sync replication. For production, consider using `semi_sync` or `cross_cell`.

8. **Authentication**: The cluster uses static authentication with credentials stored in a Secret. For production, consider using more secure authentication methods.

9. **Namespace**: The operator watches `default` and `cmms` namespaces. If you deploy to a different namespace, update the `WATCH_NAMESPACE` environment variable in the operator deployment.

10. **Tablet Aliases**: Tablet aliases are auto-generated (format: `zone1-XXXXXXXX`). Always discover them dynamically using `GetTablets` command rather than hardcoding.

## Port-Forward Script Details

The `scripts/port-forward.sh` script provides an easy way to manage port-forwards to all Vitess services.

### Usage

```bash
# Start all port-forwards (default ports)
./kube/scripts/port-forward.sh start

# Start with custom ports
VTADMIN_WEB_PORT=14000 VTADMIN_API_PORT=14001 ./kube/scripts/port-forward.sh start

# Check status of running port-forwards
./kube/scripts/port-forward.sh status

# Stop all port-forwards
./kube/scripts/port-forward.sh stop

# Restart all port-forwards
./kube/scripts/port-forward.sh restart

# Custom namespace
NAMESPACE=my-namespace ./kube/scripts/port-forward.sh start
```

### Features

- **Automatic Service Discovery**: Finds services with auto-generated hashes
- **Port Conflict Detection**: Warns if ports are already in use
- **Background Execution**: Runs port-forwards in background, script exits cleanly
- **PID Tracking**: Stores PIDs in `/tmp/vitess-pf-*.pid` for easy management
- **Logging**: Logs stored in `/tmp/vitess-pf-*.log`
- **Signal Handling**: Properly cleans up on Ctrl+C

### Default Ports

- VTAdmin Web UI: `15000`
- VTAdmin API: `15001`
- VTGate MySQL: `3306`
- VTCTLD Web UI: `15002`
- VTCTLD gRPC: `15999`

### Environment Variables

All ports can be customized via environment variables:
- `NAMESPACE` - Kubernetes namespace (default: `cmms`)
- `VTADMIN_WEB_PORT` - VTAdmin web UI port (default: `15000`)
- `VTADMIN_API_PORT` - VTAdmin API port (default: `15001`)
- `VTGATE_PORT` - VTGate MySQL port (default: `3306`)
- `VTCTLD_WEB_PORT` - VTCTLD web UI port (default: `15002`)
- `VTCTLD_GRPC_PORT` - VTCTLD gRPC port (default: `15999`)

## Next Steps

After the cluster is running and the shard is initialized:

1. **Access Services**: Use the port-forward script to access VTAdmin, VTGate, and VTCTLD
2. **Verify Cluster**: Check VTAdmin UI to see keyspaces and tablets (should work even without tables)
3. **Create Schema**: Apply your database schema to the keyspace using `ExecuteFetchAsDBA` or `ApplySchema`
4. **Configure VSchema**: Define routing rules for your tables using `ApplyVSchema`
5. **Rebuild Keyspace Graph**: After schema/VSchema changes, run `RebuildKeyspaceGraph` to refresh serving data
6. **Test Connectivity**: Connect via VTGate and run test queries
7. **Monitor**: Use VTAdmin dashboard to monitor cluster health

### Example: Apply Your Own Schema

```bash
# Get vtctld pod and primary tablet (dynamically)
VTCTLD_POD=$(kubectl -n cmms get pods -o name | grep vtctld | head -1 | cut -d/ -f2)
PRIMARY_TABLET=$(kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 GetTablets --keyspace schShared 2>/dev/null | \
  grep primary | awk '{print $1}')

# Apply schema from a file (if you have schema.sql)
kubectl -n cmms exec -i "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ApplySchema --sql-file /dev/stdin schShared < your_schema.sql

# Or execute SQL directly
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ExecuteFetchAsDBA "$PRIMARY_TABLET" \
  "CREATE TABLE your_table (id INT PRIMARY KEY, data VARCHAR(255));"

# Apply VSchema for your table
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 ApplyVSchema --vschema '{"tables":{"your_table":{}}}' schShared

# Rebuild keyspace graph
kubectl -n cmms exec "$VTCTLD_POD" -- \
  vtctldclient --server localhost:15999 RebuildKeyspaceGraph schShared
```

For more information, refer to the [Vitess Operator documentation](https://vitess.io/docs/15.0/get-started/operator/).

