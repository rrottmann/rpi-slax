#!/bin/sh
i=$PWD/initrd-5.4.51-v7+
d=/dev/shm/extract-initrd
[ -d "$d" ] || exit 1
[ -f "$i" ] && cp "$i" "$i.bak"
cd "$d"
find . | cpio --create --format=newc | gzip >> "$i"
ls -al "$i"
