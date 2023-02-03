#!/usr/bin/env bash

# Make sure to change the UUID of the LUKS block and any other /dev/sdX devices

efibootmgr --create --disk /dev/sda --part 1 --label "Arch Linux" --loader /vmlinuz-linux --unicode 'rd.luks.name=637e77aa-7dba-4ef7-b789-c6e32b121488=root rd.luks.options=timeout=60s root=/dev/mapper/root rw initrd=\initramfs-linux.img'
