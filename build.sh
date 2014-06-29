#!/bin/sh
mkdir -p fedora-osv/var/lib/rpm
sudo rpm --root fedora-osv --initdb
yumdownloader --destdir=./ fedora-release
sudo rpm --root `pwd`/fedora-osv -ivh ./fedora-release*.noarch.rpm 
sudo yum -y --installroot=`pwd`/fedora-osv install yum
cat << EOS > bootstrap.sh
#!/bin/sh
yum -y groupinstall "minimal install"
yum -y install git ant autoconf automake boost-static gcc-c++ genromfs libvirt libtool flex bison qemu-system-x86 qemu-img maven maven-shade-plugin python-dpkt tcpdump gdb
git clone https://github.com/cloudius-systems/osv.git
cd osv
git submodule update --init --recursive
EOS
chmod a+rx bootstrap.sh
sudo cp bootstrap.sh fedora-osv/root/
sudo tar -cJpf fedora-osv.tar.xz fedora-osv run-fedora-osv.sh
