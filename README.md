# rpi-slax

This is an unofficial build of [slax](https://www.slax.org) for Raspberry Pi Single Board Computers.

> **WARNING**: This is a work-in-progress version! There be dragons!

## Notes

* Boots into squashfs rootfs stored in 01-core.sb
* Based on Linux kernel  5.4.51-v7+ with aufs5-standalone patches and otherwise default RaspiOS kernel config
* Based on 2020-05-27-raspios-buster-lite-armhf.zip (Debian Buster)
* Based on [linux-live scripts](https://github.com/Tomas-M/linux-live) with statically compiled dependencies for armv7l
* Got boot configuration working after great advice from IRC users #debianarm-port on irc.freenode.net (ShorTie, Tenkawa, c0rnelius)
* Tested on Raspberry Pi 2

## Bugs

* Right now it boots into systemd and the regular login prompt only with kernel cmdline option `debug` and manually executing `sh init` the first time the debug shell is offered during boot. Then just exiting the debug shell till the OS boots. My guess right now is that somewhere an error occurs and is fixed by executing code twice. 