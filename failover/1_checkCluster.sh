#!/bin/bash
ansible-playbook \
	--become \
	-i ../inventory.yml \
	conjurCheckCluster.yml 
rm -f *.retry
