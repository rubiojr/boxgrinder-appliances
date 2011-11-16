#!/bin/sh
gem install abiquo-chef-agent
apt-get remove -fy --purge build-essential gcc make libxml2-dev libxslt-dev ruby-dev
apt-get autoremove --purge -y
apt-get clean
mkdir /var/lib/dhcp3
mv /etc/init/abiquo-chef-agent.conf.* /etc/init/abiquo-chef-agent.conf
sh /root/clean.sh
