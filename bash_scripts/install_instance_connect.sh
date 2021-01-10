#!/bin/bash

sudo apt-get install -y git
git clone https://github.com/aws/aws-ec2-instance-connect-config.git
cd aws-ec2-instance-connect-config
sudo apt install build-essential devscripts debhelper
make deb
ls /usr/share/ec2-instance-connect/
sudo cat /lib/systemd/system/ssh.service.d/ec2-instance-connect.conf
echo "Instance Connect installed."
