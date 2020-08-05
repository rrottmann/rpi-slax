#!/bin/sh
i=$PWD/initrd-5.4.51-v7+
d=/dev/shm/extract-initrd
[ -f "$i" ] || exit 1
[ -d $d ] || mkdir $d
cd $d && cat $i | cpio -id
ls -al $d
