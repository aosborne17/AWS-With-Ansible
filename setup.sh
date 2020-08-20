#!/bin/bash


scp -i ~/.ssh/DevOpsStudents.pem -r ~/.ssh/DevOpsStudents.pem vagrant@192.168.33.12:/home/vagrant/AWS_Ansible
vagrant ssh aws

cd AWS_Ansible
chmod 400 DevOpsStudents.pem
ssh -i DevOpsStudents.pem ubuntu@34.241.186.80
