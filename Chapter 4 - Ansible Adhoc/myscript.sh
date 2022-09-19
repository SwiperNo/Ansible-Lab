#!/bin/bash
#Ansible shell script

#Install Apache
ansible ansible1 -m yum -a "name=httpd state=latest"
#Start service and enabled
ansible ansible1 -m service -a "name=httpd state=started enabled=yes"
#create user account
ansible ansible1 -m user -a "name=anna"
#Copy host file from local to remote
ansible ansible1 -m copy -a "src=/etc/hosts dest=/tmp/hosts"
