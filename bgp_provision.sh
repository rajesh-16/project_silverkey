#!/bin/bash

git clone https://github.com/rajesh-16/project_silverkey
mkdir host_vars;
mv project_silverkey/spine*.yml host_vars;
mv project_silverkey/leaf*.yml host_vars;
mv project_silverkey/bgp*.yml .
ansible-playbook bgp_provision_spine01.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
ansible-playbook bgp_provision_spine02.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
ansible-playbook bgp_provision_leaf01.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
ansible-playbook bgp_provision_leaf02.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
ansible-playbook bgp_provision_leaf03.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
ansible-playbook bgp_provision_leaf04.yml --extra-vars 'ansible_ssh_pass=CumulusLinux!'
