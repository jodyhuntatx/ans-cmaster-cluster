#!/bin/bash 
get_master_name() {
  cont_list=$(docker ps -f "label=role=conjur_node" --format "{{.Names}}")
  for i in $cont_list; do
    if [[ $(docker exec $i evoke role) == master ]]; then
      echo -n $i
      exit 0
    fi
  done
}
docker exec $(get_master_name) curl -sk localhost/health | jq -Mr .database.replication_status.pg_stat_replication[].replication_lag_bytes | grep -v ^0
