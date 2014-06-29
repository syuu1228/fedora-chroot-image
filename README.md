fedora-chroot-osv
=================

This is Fedora chroot image for OSv build enviroment, for other distribution user who wants to build OSv without various problems.


Instruction
-----------

```
wget -O fedora-osv.tar.xz "https://github.com/syuu1228/fedora-chroot-osv/blob/master/fedora-osv.tar.xz?raw=true"
sudo tar -xpf fedora-osv.tar.xz
sudo ./run-fedora-osv.sh
(You'll get root user shell inside of chroot)

cd ~
./bootstrap.sh
(This will install all required packages, then download OSv repository)
cd osv
make
./scripts/run.py
(OSv will startup in a sec)
```
