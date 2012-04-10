#!/bin/bash
kill `pidof dhclient3` 2> /dev/null
echo > /etc/resolv.conf
apt-get --purge clean > /dev/null
apt-get autoremove --purge -y > /dev/null
rm /etc/ssh/ssh_host_* 2>/dev/null
find /var/log/ -name "*log" -type f |xargs  -I % sh -c "cat /dev/null > %"
[ -f /var/log/wtmp ] && cat /dev/null > /var/log/wtmp
[ -f /var/log/syslog ] && cat /dev/null > /var/log/syslog
[ -f /var/log/auth.log ] && cat /dev/null > /var/log/auth.log
[ -f /root/.bash_history ] && cat /dev/null > /root/.bash_history
history -c
#shutdown -h now

