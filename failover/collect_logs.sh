#!/bin/bash
if [[ $# != 1 ]]; then
  printf "\n\nUsage: $0 <log-tag-text>\n\n"
  exit -1
fi

log_tag_text=$1

containers="conjur1 conjur2 conjur3"

for i in $containers; do
  mkdir -p $i-logs/$log_tag_text
  sudo docker cp $i:/var/log/syslog $i-logs/$log_tag_text/syslog
  sudo docker cp $i:/var/log/cluster.log $i-logs/$log_tag_text/cluster.log
done
 
