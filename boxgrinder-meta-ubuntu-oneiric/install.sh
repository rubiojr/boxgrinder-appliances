#!/bin/sh
echo "Downloading libguestfs packages"
wget --quiet -r -l1 -H -t1 -nd -N -np -A.deb http://rbel.frameos.org/misc/libguestfs-ubuntu/oneiric/ > /dev/null
echo "Installing guestfs..."
# Affected by this http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=645119
DEBIAN_FRONTEND=noninteractive DEBIAN_PRIORITY=critical dpkg -i *.deb
apt-get -fy install
rm -f *.deb 
wget --quiet http://rbel.frameos.org/tmp/guestfs-1.14.2.gem 
gem install --no-ri --no-rdoc guestfs-1.14.2.gem 
rm -f *.gem
echo "Installing Boxgrinder..."
gem install --no-ri --no-rdoc boxgrinder-build boxgrinder-ubuntu-plugin 
apt-get clean
