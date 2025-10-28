brew install vitess


https://github.com/vitessio/vitess/blob/main/examples/compose/docker-compose.yml

Diagram.
              ┌──────────────────────────┐
              │        vtctld            │
              │  (Vitess Control Plane)  │
              └───────────┬──────────────┘
                          │
                    (via etcd)
                          │
         ┌────────────────┴────────────────┐
         │                                 │
 ┌──────────────┐                 ┌─────────────────┐
 │   vttablet0  │  ⇄  shard0(MySQL)  │
 │ (manages DB) │                 │ (real DB data)  │
 └──────────────┘                 └─────────────────┘
         │
         │
     ┌──────────┐
     │  vtgate  │ ← Clients connect here (MySQL or gRPC)
     └──────────┘

CREATE USER 'vt_dba'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_app'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_allprivs'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_repl'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_filtered'@'%' IDENTIFIED BY 'vitesspass';

GRANT ALL ON *.* TO 'vt_dba'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, PROCESS, REFERENCES, INDEX, ALTER, SHOW DATABASES, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'vt_allprivs'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'vt_app'@'%';
GRANT REPLICATION SLAVE ON *.* TO 'vt_repl'@'%';
GRANT SELECT ON *.* TO 'vt_filtered'@'%';

FLUSH PRIVILEGES;



docker exec -it vtctld vtctlclient --server vtctld:15999 DeleteTablet zone1-0000000100
docker exec -it vtctld vtctlclient --server vtctld:15999 DeleteTablet zone1-0000000101
docker restart vttablet0 vttablet1
docker exec -it vtctld vtctldclient --server vtctld:15999 PlannedReparentShard cmms/0 --new-primary zone1-0000000101


docker exec -it vtctld vtctlclient --server vtctld:15999 PlannedReparentShard cmms/0 zone1-0000000100
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"
docker exec -it shard0 mysql -uroot -proot -e "SHOW MASTER STATUS\G; SELECT @@GLOBAL.GTID_EXECUTED\G"




vtadmin --addr "localhost:14200" --http-origin "http://localhost:14200" —http-tablet-url-tmpl "http://{{ .Tablet.Hostname }}:15{{ .Tablet.Alias.Uid }}" --tracer "opentracing-jaeger" --grpc-tracing --http-tracing --logtostderr --alsologtostderr --rbac --rbac-config=“./vtadmin/config/rbac.yaml" --cluster "id=local,name=local,discovery=staticfile,discovery-staticfile-path=./vtadmin/config/discovery.json,tablet-fqdn-tmpl=http://{{ .Tablet.Hostname }}:15{{ .Tablet.Alias.Uid }},schema-cache-default-expiration=1m" > “./vtadmin/logs/vtadmin-api.out" 2>&1