#!/bin/bash

sudo apt-get update

echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "=========== INSTALLING =============="
echo "python3"
echo "pip3"
echo "unzip"
echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "**************************************"

sudo apt-get install -y python3

sudo apt-get install -y python3-pip unzip

echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "boto3 using pip"
echo "botocore using pip"
echo "ansible using pip"
echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "**************************************"

sudo pip3 install boto3 botocore ansible

echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "Exporting ansible"
echo "**************************************"
echo "**************************************"
echo "**************************************"

echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "======== Installing AWSCLI ==========="
echo "**************************************"
echo "**************************************"
echo "**************************************"

sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

echo "**************************************"
echo "**************************************"
echo "**************************************"
echo "ADDING ANSIBLE.CFG"
echo "**************************************"
echo "**************************************"
echo "**************************************"


sudo mkdir /etc/ansible

sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg -o /etc/ansible/ansible.cfg

