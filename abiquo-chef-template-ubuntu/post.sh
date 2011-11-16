#!/bin/sh
gem install abiquo-chef-agent
apt-get remove -fy --purge build-essential gcc make libxml2-dev libxslt-dev ruby-dev
apt-get autoremove --purge -y
apt-get clean
sh /root/clean.sh
