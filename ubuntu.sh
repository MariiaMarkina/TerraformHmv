#!/bin/bash
apt-get -y update 
apt-get install wget -y
#wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
#rpm -ivh epel-release-latest-8.noarch.rpm
#yum --enablerepo=epel install ansible  -y
apt-get install git -y
apt install -y software-properties-common 
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y
#mkdir /etc/ansible/roles/ansible-role-nginx
#git clone https://github.com/nginxinc/ansible-role-nginx.git /etc/ansible/roles/ansible-role-nginx
#ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/ansible-role-nginx/molecule/common/playbooks/default_converge.yml
#nginx -s reopen
git clone https://github.com/geerlingguy/ansible-role-nginx.git /etc/ansible/roles/geerlingguy.nginx
#git clone https://github.com/geerlingguy/ansible-role-php.git /etc/ansible/roles/geerlingguy.php
#git clone https://github.com/geerlingguy/ansible-role-git.git /etc/ansible/roles/geerlingguy.git
#git clone https://github.com/geerlingguy/ansible-role-repo-remi.git /etc/ansible/roles/geerlingguy.repo-remi
ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/geerlingguy.nginx/molecule/default/converge.yml
#ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/geerlingguy.php/molecule/default/converge.yml 
git clone https://github.com/mariiamarkina/nginxandphprole.git /etc/ansible/roles/nginxandphprole
add-apt-repository ppa:ondrej/php
ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/nginxandphprole/playbookphp.yml
nginx -s reopen
#ansible-galaxy install geerlingguy.php
