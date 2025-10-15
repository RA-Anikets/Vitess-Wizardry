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


CREATE USER 'vt_allprivs'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_app'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_dba'@'%' IDENTIFIED BY 'vitesspass';
CREATE USER 'vt_repl'@'%' IDENTIFIED BY 'vitesspass';

GRANT ALL ON *.* TO 'vt_allprivs'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'vt_app'@'%';
GRANT SUPER, RELOAD, PROCESS ON *.* TO 'vt_dba'@'%';
GRANT REPLICATION SLAVE ON *.* TO 'vt_repl'@'%';
FLUSH PRIVILEGES;