#!/bin/sh
mkdir -p fedora/var/lib/rpm
sudo rpm --root fedora --initdb
yumdownloader --destdir=./ fedora-release
sudo rpm --root `pwd`/fedora -ivh ./fedora-release*.noarch.rpm 
sudo yum -y --installroot=`pwd`/fedora --disablerepo=updates install yum
cat << EOS > bootstrap.sh
#!/bin/sh
yum -y groupinstall "minimal install"
EOS
chmod a+rx bootstrap.sh
sudo cp bootstrap.sh fedora/root/
sudo tar -cJpf fedora-chroot.tar.xz fedora run-fedora.sh
