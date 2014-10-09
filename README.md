fedora-chroot-image
=================

This is Fedora chroot image and its build script, for other distribution users who want to use Fedora without virtualization / re-install Linux.

Current version of the image is : Fedora 20/x86_64

Usage
-----------

```
wget -O fedora-chroot.tar.xz "https://github.com/syuu1228/fedora-chroot-image/blob/master/fedora-chroot.tar.xz?raw=true"
sudo tar -xpf fedora-chroot.tar.xz
sudo ./run-fedora.sh
(You'll get root user shell inside of chroot)

cd ~
./bootstrap.sh
(This will install base packages of Fedora)
```

Rebuild tar.xz
--------------
You need to run this on Fedora.
```
./build.sh
```
