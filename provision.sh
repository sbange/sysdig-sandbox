#!/bin/bash

apt-get update
apt-get install -y nginx
apt-get install -y nodejs
# manual install of sysdig
curl -s https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public | apt-key add -
curl -s -o /etc/apt/sources.list.d/draios.list http://download.draios.com/stable/deb/draios.list
apt-get update
apt-get -y install linux-headers-$(uname -r)
apt-get -y install sysdig
