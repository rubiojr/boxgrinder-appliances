#!/bin/sh
echo deb http://security.ubuntu.com/ubuntu oneiric multiverse >> /etc/apt/sources.list
apt-get update
apt-get install -fy linux-headers-virtual
apt-get install -fy --no-install-recommends open-vm-dkms
apt-get install -fy --no-install-recommends open-vm-tools
apt-get clean
