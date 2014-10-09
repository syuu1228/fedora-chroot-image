#!/bin/bash
mount -t proc none ./fedora/proc
mount -t sysfs none ./fedora/sys
mount --bind /dev ./fedora/dev
cp /etc/resolv.conf ./fedora/etc
chroot ./fedora
umount ./fedora/proc
umount ./fedora/sys
umount ./fedora/dev
