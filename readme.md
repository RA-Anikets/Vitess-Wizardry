# Vitess — local compose cluster (instructions)

This repository includes a docker-compose setup to run a small Vitess cluster locally (etcd, vtctld, vtgate, multiple vttablets + MySQL shards).

Files of interest
- `docker-compose.yml` — the compose services for etcd, vtctld, vtgate, vttablets and MySQL shards
- `.env` — environment variables used by the compose file (recommended; see example below)
- `vars` — shell-exported environment variables you can `source` instead of using a `.env`
- `mysql/` — MySQL configuration, init scripts and schema files (put .sql files under `mysql/schemas/`)

Quick diagram

            vtctld  (control plane)
                   |
             etcd (topology storage)
                   |
       vtgate  (clients connect here — MySQL/gRPC)
             / | \\
 vttablet0 vttablet1 vttablet2  (manage MySQL instances)
            |        |         |
      shard0  shard1    shard2  (underlying MySQL containers)

# Prerequisites

- Docker and Docker Compose installed
- At least 4–8GB free memory to run the containers comfortably

# Configuration

1. Set the required environment variables used by `docker-compose.yml`. You can EITHER:
   - create a `.env` file in the repo root (Compose auto-loads this), OR
   - run `source ./vars` in your shell to export the same variables.

Important variables:

- `VITESS_VERSION` — Vitess image tag (example: `v22.0.1`)
- `VTCTLD_CELL` — cell name (example: `zone1`)
- `VTTABLET_KEYSPACE_SHARED` / `VTTABLET_KEYSPACE_TENANT` — keyspace names used by the example
- `VTTABLET_SHARD` — shard name (example: `0`)

Example `.env` (you can copy/paste and adjust):

```env
# etcd
ETCD_VERSION=3.5.9
ETCD_NAME=etcd0
ETCD_ADVERTISE_CLIENT_URLS=http://0.0.0.0:2379
ETCD_LISTEN_CLIENT_URLS=http://0.0.0.0:2379
ETCD_LISTEN_PEER_URLS=http://0.0.0.0:2380
ETCD_DATA_DIR=/etcd-data
ETCD_AUTO_COMPACTION_RETENTION=1
ETCD_SNAPSHOT_COUNT=10000

# vitess core
VITESS_VERSION=v20.0.8
VTCTLD_TOPO_IMPL=etcd2
VTCTLD_TOPO_GLOBAL_ADDR=etcd:2379
VTCTLD_TOPO_GLOBAL_ROOT=/vitess/global
VTCTLD_CELL=local
VTCTLD_SERVICE_MAP=grpc-vtctl,grpc-vtctld
VTCTLD_BACKUP_STORAGE_IMPL=file
VTCTLD_FILE_BACKUP_ROOT=/vt/vtdataroot/backups
VTCTLD_LOGTOSTDERR=true

# keyspaces and tablets
VTTABLET_KEYSPACE_SHARED=schShared
VTTABLET_KEYSPACE_TENANT=schTenant
VTTABLET_SHARD=0
VTTABLET_SERVICE_MAP=grpc-queryservice,grpc-tabletmanager,grpc-updatestream
```

2. Put your schema files in `mysql/schemas/` (this repo already contains `schShared.sql`, `schTenant.sql` and a `schShared/` folder with split parts).

# Start the cluster

From the repository root:

```sh
# Option A: using .env in repo root (auto-loaded by Compose)
docker compose up -d

# Option B: using the provided 'vars' file
source ./vars
docker compose up -d
```

Give etcd and vtctld a bit of time to become healthy. The compose file already uses healthchecks and `depends_on` conditions to ensure components start in sensible order.

# Verify services

List running containers:

```sh
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"
```

Check vtctld web UI (default port from compose):

```
http://localhost:15000
```

Check vtgate MySQL gateway port (default in compose):

```
MySQL protocol: localhost:15306
HTTP UI: http://localhost:15001
gRPC: localhost:15991
```

vtorc UI (optional):

```
http://localhost:13000
```

# Apply keyspaces and schemas

The compose file includes an initialization step that creates keyspaces via `vtctldclient`. If you prefer to apply schemas manually (or to re-apply):

1. Copy or mount schema files under `mysql/schemas/` so they appear inside the `vtctld` container at `/vt/vtdataroot/` (this repo already mounts that path in compose).

2. Apply shared schema (example):

```sh
docker exec -it vtctld vtctldclient --server vtctld:15999 ApplySchema --sql-file /vt/vtdataroot/schShared.sql schShared
```

3. Apply tenant schema (example):

```sh
docker exec -it vtctld vtctldclient --server vtctld:15999 ApplySchema --sql-file /vt/vtdataroot/schTenant.sql schTenant
```

If your schema has foreign-key dependencies across tables and you get errors on create, use the pre-split files in `mysql/schemas/schShared/` (the repo includes `schShared_part_*.sql` and helper files). You may also:

- apply tables in dependency order, or
- remove foreign key constraints during initial load and add them back after all tables are present.

# MySQL access and common commands

Open a shell into one of the MySQL containers:

```sh
docker exec -it shard0 mysql -uroot -proot
```

Show MySQL master status (useful for replication/GTID troubleshooting):

```sh
docker exec -it shard0 mysql -uroot -proot -e "SHOW MASTER STATUS; SELECT @@GLOBAL.GTID_EXECUTED;"
```

Planned reparent (change primary of a shard) example:

```sh
docker exec -it vtctld vtctldclient --server vtctld:15999 PlannedReparentShard schShared/0 --new-primary zone1-0000000101
```

# Stopping and tearing down

```sh
docker compose down
```

To remove volumes as well:

```sh
docker compose down -v
```

# Notes and troubleshooting

- The compose file mounts `mysql/scripts/` into the MySQL containers' `/docker-entrypoint-initdb.d/` — check those scripts for user creation and additional initialization.
- If vtctld fails to detect keyspaces or schemas, check the `vtctld` logs:

```sh
docker logs vtctld
```

- If apply-schema fails with foreign-key errors, create tables in dependency order (or use the `schShared/` split SQL files that already split the schema).

If you want, I can:

1. Generate a fully ordered SQL file for `schShared` that creates tables in dependency-safe order (reads `mysql/schemas/schShared_schema_only.sql`).
2. Modify `docker-compose.yml` to run an automated schema-applying step after vtctld is healthy.

Choose one and I'll proceed.
