#!/bin/bash
ansible-playbook -i inventory.yml --ask-pass --become --ask-become-pass -c paramiko invBootstrap.yml
rm -f *.retry
