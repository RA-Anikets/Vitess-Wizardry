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


docker exec -it vtctld vtctldclient \
  --server vtctld:15999 \
  AddCellInfo \
  --server etcd:2379 \
  --root /vitess/zone1 \
  zone1


vtctldclient AddCellInfo --root /vitess/zone1 --server localhost:15999 zone1