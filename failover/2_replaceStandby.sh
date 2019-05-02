#!/bin/bash
if [[ $# != 1 ]]; then
  echo "Usage: $0 <failed-node>"
  exit -1
fi
ansible-playbook \
	--become \
	-i ../inventory.yml \
	$EXCLUDE_HOST \
	conjurReplaceStandby.yml \
	--extra-vars "conjur_failed_container_name=$1" -vvvv
rm -f *.retry
