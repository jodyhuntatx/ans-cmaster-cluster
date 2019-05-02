#!/bin/bash
ansible-playbook -i inventory.yml --become conjurSetup.yml 
rm -f *.retry
