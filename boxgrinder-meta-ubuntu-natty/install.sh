#!/bin/sh
echo "Downloading libguestfs packages"
wget --quiet -r -l1 -H -t1 -nd -N -np -A.deb http://libguestfs.org/download/binaries/ubuntu1104-packages/ > /dev/null
rm *ocaml*deb libguestfs-doc* libguestfs0-dbg* >/dev/null 2>&1
echo "Installing guestfs..."
apt-get update 
dpkg -i *.deb 
apt-get -fy install 
rm -f *.deb 
wget --quiet http://rbel.frameos.org/tmp/guestfs-1.14.2.gem 
gem install --no-ri --no-rdoc guestfs-1.14.2.gem 
rm -f *.gem
echo "Installing Boxgrinder..."
gem install --no-ri --no-rdoc boxgrinder-build boxgrinder-ubuntu-plugin 
apt-get clean
