#!/bin/bash
yum clean all --enablerepo='*'                 > /dev/null 2>&1

#
# Clean logs files and dirs
rm -rf /etc/chef                               > /dev/null 2>&1
rm -f /var/lib/dhcp3/*                         > /dev/null 2>&1
rm -f /var/lib/dhcp/*                          > /dev/null 2>&1
rm -f /var/log/chef-client.log                 > /dev/null 2>&1
rm -f /var/log/abiquo*                         > /dev/null 2>&1
rm -rf /var/log/chef/*                         > /dev/null 2>&1
for f in `find /var/log/ -type f -name '*.gz'`; do rm -f "$f";done
for f in `find /var/log/ -type f`; do > "$f";done
> ~/.bash_history                              > /dev/null 2>&1

# Restore resolver conf
echo nameserver 8.8.8.8 > /etc/resolv.conf
