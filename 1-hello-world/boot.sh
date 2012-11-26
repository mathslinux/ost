#!/bin/bash

QEMU_IMG=~/usr/bin/qemu-img 	# qemu-img path
QEMU_BIN=~/usr/bin/qemu-system-x86_64 # qemu binary path

if [ ! -f ost.img ]; then
	$QEMU_IMG create -f qcow2 ost.img 100M
fi

$QEMU_BIN -m 4 -fda bootstrap.img -hda ost.img -boot a
