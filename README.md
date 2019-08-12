# project_silverkey
Project Silver key is automating network CLOS based fabric provisioning. This project is focussed now only fabric made of linux switches.
Automation tool used is Ansible.
The fabric has 2 spines and 4 leafs, and l3-underlay is ebgp based.
Spine01: 65000
Spine02: 65001
Leaf01: 65002
Leaf02: 65003
Leaf03: 65004
Leaf04: 65005
To have almost zero touch fabric, please run bgp_provision.sh in linux based controller.


Please clone bgp_provisioning.sh script into controller, run it and let the magic unfold.
