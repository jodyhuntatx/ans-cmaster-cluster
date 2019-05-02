#!/bin/bash
ansible-playbook \
	-u ocuser \
	--become \
	-i ../inventory.yml \
	conjurCheckReplicationLagZero.yml 
rm -f *.retry
