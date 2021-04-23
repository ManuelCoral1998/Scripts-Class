#!/bin/bash

echo "=========== INSTALLING =============="
echo "python3"
echo "pip3"
echo "unzip"

sudo apt-get install -y python3

sudo apt-get install -y python3-pip unzip

echo "boto3 using pip"
echo "botocore using pip"
echo "ansible using pip"

sudo pip3 install boto3 botocore ansible

echo "Exporting ansible"

echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

echo "Installing AWSCLI"

sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

sudo mkdir /etc/ansible

sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg -o ansible.cfg
