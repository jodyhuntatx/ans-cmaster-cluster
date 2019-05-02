#!/bin/bash
if [[ $# != 1 ]]; then
  echo "Usage: $0 <seconds-to-pause>"
  exit -1
fi
ansible-playbook \
	-i ../inventory.yml \
	--become \
	conjurInduceFailover.yml \
	--extra-vars "pause_seconds=$1"
rm -f *.retry
