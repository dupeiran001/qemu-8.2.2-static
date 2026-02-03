#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "Please run this script as root"
	echo "# sudo $0"
	exit 1
fi

test -e /usr/local/share/qemu && mv /usr/local/share/qemu /usr/local/share/qemu.bak
wget https://github.com/dupeiran001/qemu-8.2.2-static/raw/refs/heads/main/local.tgz -O- | tar -C /usr/local/share -xpzf -
mv /usr/local/share/usr_local_share_qemu  /usr/local/share/qemu
wget -O- https://github.com/dupeiran001/qemu-8.2.2-static/raw/refs/heads/main/qemu.tgz | tar -C /usr/local/bin -xpzf -
echo "Installed Successfully"
