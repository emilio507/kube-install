# kube-install

## Install
- update inventory file according to install location
- add DNS entry and update in variables files for both roles or create a group vars file for shared variable (DNS entry can be either controller nodes or loadbalancer VIP IP/IPs)
- ansible-playbook kube-install.yml -i inventory/<region>/<tier>
- note token and ca_hash from output
- Use ansible vault to encrypt
- Add that output to roles/kubernetes-workers/vars/main.yml in relevant location
- ansible-playbook kube-workers.yml -i inventory/<region>/<tier>