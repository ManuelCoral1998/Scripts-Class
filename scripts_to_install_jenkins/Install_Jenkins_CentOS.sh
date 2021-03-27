#!/bin/bash

echo 'Install Jenkins'
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum update -y
sudo yum install jenkins java-1.8.0 git -y
sudo systemctl daemon-reload
sudo service jenkins start

echo 'Install Docker'
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
sudo usermod -aG docker jenkins
sudo service jenkins restart