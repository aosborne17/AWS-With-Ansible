#!/bin/bash

# NOTE ONLY RUN THIS FILE IF YOU HAVE VAGRANT DESTROYED

scp -i ~/.ssh/DevOpsStudents.pem -r ~/.ssh/DevOpsStudents.pem vagrant@192.168.33.12:/home/vagrant/AWS_Ansible
ssh vagrant@192.168.33.12 << EOF

sudo apt update -y
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

sudo apt install python -y
sudo apt install python-pip -y
sudo pip install --upgrade pip -y
sudo pip install boto

mkdir -p AWS_Ansible/group_vars/all/
cd AWS_Ansible
touch playbook.yml


vagrant ssh aws
