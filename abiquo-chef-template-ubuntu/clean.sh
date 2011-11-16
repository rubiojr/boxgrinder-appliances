rm -rf /etc/chef
rm -f /var/log/abiquo-chef-run.log
rm -f /var/lib/dhcp3/*
rm -f /var/lib/dhcp/*
rm *.gem
rm -f /var/log/chef-client.log
rm -f /var/log/abiquo-chef-agent.log
> ~/.bash_history
> /var/log/dmes
> /var/log/syslog
> /var/log/auth.log
pkill -9 -f chef-client
echo nameserver 8.8.8.8 > /etc/resolv.conf
echo abiquo-chef-template > /etc/hostname
apt-get remove --purge perl perl-modules apache2.2-common apache2-utils  apache2.2-bin -y
apt-get autoremove --purge -y
rm /var/cache/apt/archives/*
rm /var/log/*.gz

> /var/log/syslog
> /var/log/dmesg
> /var/log/kern.log
> /var/log/boot.log
> /var/log/dpkg.log
