#!/bin/bash

echo 'Install Docker'
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker ubuntu

echo 'Run Jenkins'
sudo mkdir -p /var/jenkins_home
sudo chown -R 1000:1000 /var/jenkins_home/
sudo docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -d --name jenkins jenkins/jenkins:lts

echo 'Jenkins installed'
echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'

echo 'Es necesario instalar en el contenedor docker y crear un Dockerfile que use este Jenkins y cree un nuevo volumen -v /var/run/docker.sock:/var/run/docker.sock'