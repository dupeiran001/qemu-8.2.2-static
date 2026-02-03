# To install

Make sure `wget` is installed.

```sh
wget -O- https://github.com/dupeiran001/qemu-8.2.2-static/raw/refs/heads/main/install.sh | sudo bash
```

## Installation

`qemu-system-i386` is going to be installed at `/usr/local/bin/qemu-system-i386`.
If you've installed the package from `apt` or `yum` or `dnf`, then you may need to do:

```sh
export QEMU=/usr/local/bin/qemu-system-i386
make qmeu-nox
```
