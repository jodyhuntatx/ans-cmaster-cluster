#!/bin/bash
ansible-playbook \
	-u ocuser \
	--become \
	-i ../inventory.yml \
	conjurRunTest.yml
rm -f *.retry
