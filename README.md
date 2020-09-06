# TerraformHmv
This is a repository for EPAM DevOps internal courses. Currently used for learning IaC.
# Table of contents 
* Structure of the project
* Links
# Structure of the project

1) terraform.tfvars - provide your vpc id, key name, etc. ami can also be changed, but now it works only with ubuntu.
2) providers.tf - your credentials should be added, it doesn`t have this information now.
3) main.tf creates networks, security_groups.tf creates security group, instances.tf and database.tf create ec2 instance and database in two networks. Variables are defined in variables.tf. ubuntu.sh is used for user data during instance creation. 

To check work of the php and nginx - go to instance_ip/info.php
Wordpress is not currently installed yet: working on it.

# Links

1) nginx role - https://github.com/geerlingguy/ansible-role-nginx
2) php role (wrote simple myself as there were compatibility issues with OS/nginx role when using php roles from internet) - https://github.com/mariiamarkina/nginxandphprole
