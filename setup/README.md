# First we need to create the GPT partition table
# $ fdisk /dev/sda
#
# EXAMPLE LAYOUT
#
# /dev/sda1 512MB EFI SYSTEM
# /dev/sda2 8G    Linux swap                # You can put more size to the swap if you want
# /dev/sda3 200G  Linux filesystem          # Put all the rest remaining space here

# Then create the PV on /dev/sda3
# $ pvcreate /dev/sda3
# 
# then create a Volume group
# $ vgcreate Main /dev/sda3                 # We can add more PV into the same group here

# Then create all logical volumes
#
# EXAMPLE LAYOUT
#
# /dev/sda3
#  - /dev/sda3/Main-root 40G                # Used for root partition
#  - /dev/sda3/Main-home 60G                # Used for the home partition

# Format the partitions
# $ mkfs.fat -F 32 /dev/sda1                # Optional, if we have EFI partition
#

# Encryption
#
# lvcreate -L 40G -n cryptroot Main
# lvcreate -L 4G -n cryptswap Main
# lvcreate -L 1G -n crypttmp Main
# lvcreate -l 100%FREE -n crypthome Main
#
# cryptsetup luksFormat /dev/Main/cryptroot
# cryptsetup open /dev/Main/cryptroot root
# mkfs.ext4 /dev/mapper/root
# mount /dev/mapper/root /mnt


# Mount the file systems
# $ mount /dev/Main/root /mnt               # Mount the root
# $ mount --mkdir /dev/sda1 /mnt/boot       # Mount EFI partition
# $ mount --mkdir /dev/Main/home /mnt/home  # Mount the home partition


# Install the kernel and the base package
#
# $ pacman -Sy archlinux-keyring            # This might be needed if the pacstrap fails
#                                           # to verify the signatures
#
# $ pacstrap -K /mnt base linux linux-firmware

# Generate the fstab
#
# $ genfstab -U /mnt >> /mnt/etc/fstab

# Install lvm2 in /mnt
#
# $ arch-chroot /mnt
# $ pacman -Sy lvm2 networkmanager efibootmgr sudo
#
# Auto start the networkmanager
# 
# $ systemctl enable NetworkManager.service
# 

# Change the HOOKS in /etc/mkinitcpio.conf
#
# HOOKS=(base systemd keyboard autodetect modconf kms sd-vconsole block sd-encrypt lvm2 filesystems fsck)
#
# Generate the initramfs
#
# $ mkinitcpio -p linux

# Bootloader
#
# Add a efi boot entry
#
# IMPORTANT 
# 
# Make sure you use the UUID format of the LUKS superblock!!!
#
# $ efibootmgr --create --disk /dev/sda --part 1 --label "Arch Linux" --loader /vmlinuz-linux --unicode 'rd.luks.name=637e77aa-7dba-4ef7-b789-c6e32b121488=root rd.luks.options=timeout=60s root=/dev/mapper/root rw initrd=\initramfs-linux.img'


# Encrypting /home
#
# $ mkdir -m 700 /etc/luks-keys
# $ dd if=/dev/random of=/etc/luks-keys/home bs=1 count=256 status=progress
# $ cryptsetup luksFormat -v /dev/Main/crypthome /etc/luks-keys/home
# $ cryptsetup -d /etc/luks-keys/home open /dev/Main/crypthome home
# $ mkfs.ext4 /dev/mapper/home
# $ mount /dev/mapper/home /home

# Add in the /etc/cryptab
#
# home  /dev/Main/crypthome   /etc/luks-keys/home

# Add in the /etc/fstab
#
# /dev/mapper/home  /home   ext4 defaults 0 2

# Create user
#
# $ useradd -m kalin 
# $ passwd kalin
#
# Add the new user(kalin) into the /etc/sudoers file
# 
# kalin ALL=(ALL:ALL) ALL

# Set timezone
# 
# $ ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
# $ hwclock --systohc
