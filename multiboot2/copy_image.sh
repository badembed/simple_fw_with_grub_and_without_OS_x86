modprobe nbd max_part=8
qemu-nbd --connect=/dev/nbd0 disk.raw
mount /dev/nbd0p1 /mnt/
cp mykernel.bin /mnt/
umount /mnt/
qemu-nbd -d /dev/nbd0
