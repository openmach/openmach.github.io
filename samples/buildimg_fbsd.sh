#!/bin/sh
mdconfig -a -t vnode -f /home/<user>/openmach.img -u 0
mount -t msdosfs -o rw /dev/md0s1 /mnt
rm -f /mnt/boot/kernel
rm -f /mnt/boot/bootstrap
cp /home/<user>/openmach/obj/kernel/kernel /mnt/boot/kernel
cp /home/<user>/openmach/obj/bootstrap/bootstrap /mnt/boot/bootstrap
umount /mnt
mdconfig -d -u 0
