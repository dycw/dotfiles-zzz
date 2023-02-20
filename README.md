# dotfiles

My dotfiles, powered by [`dotbot`](https://github.com/anishathalye/dotbot).

## Installation

First:

```bash
sudo apt -y install curl
curl https://raw.githubusercontent.com/dycw/dotfiles/master/install | bash
```

## Machine-specific

### AMD PC

#### Nvidia graphics

[Source](https://bit.ly/3lUqP9i).

1. Install the drivers:

   ```bash
   sudo ubuntu-drivers autoinstall
   sudo reboot
   ```

#### Sleep/suspend crash/freeze

[Source](https://bit.ly/3ai1HXm).

1. Select `lightdm` as the default display manager:

   ```bash
   sudo apt install -y lightdm
   ```

1. Try the fix; reboot into the GRUB menu and change the Linux boot command:

   ```diff
   - linux /boot/vmlinuz-5.15.0-33-generic root=UUID=0078fc53-b302-4373-a300-ede04a2e826d ro quiet splash $vt_handoff
   + linux /boot/vmlinuz-5.15.0-33-generic root=UUID=0078fc53-b302-4373-a300-ede04a2e826d ro quiet splash  amd_iommu=off $vt_handoff
   ```

   Press `Ctrl` + `x` to boot.

   If you do not see the GRUB menu, hold down the `Shift` key or set
   `GRUB_TIMEOUT_STYLE=menu` in `/etc/default/grub` as per
   [here](https://bit.ly/3wNp6rm).

1. Make the fix permanent; edit `/etc/default/grub`:

   ```diff
   - GRB_CMDLINE_LINUX_DEFAULT="quiet splash"
   + GRB_CMDLINE_LINUX_DEFAULT="quiet splash amd_iommu=off"
   ```

   and then:

   ```bash
   sudo update-grub
   ```

### Intel NUC

#### Mounting HDD

1. List your disks:

   ```bash
   ❯ sudo fdisk -l

   ...
   Disk /dev/sdb: 931.53 GiB, 1000204886016 bytes, 1953525168 sectors
   Disk model: Samsung SSD 860
   Units: sectors of 1 * 512 = 512 bytes
   Sector size (logical/physical): 512 bytes / 512 bytes
   I/O size (minimum/optimal): 512 bytes / 512 bytes
   Disklabel type: gpt
   Disk identifier: 5623EA77-3F36-4FED-BC1D-4BA8FE591A05

   Device   Start        End    Sectors   Size Type
   /dev/sdb1 2048 1953523711 1953521664 931.5G Linux filesystem
   ...
   ```

1. Create a mount point:

   ```bash
   ❯ sudo mkdir /data
   ```

1. Add your disk to `/etc/fstab`:

   ```bash
   ❯ sudo vim /etc/fstab
   ...
   ❯ cat /etc/fstab
   ...
   /dev/sdb1    /data    ext4    defaults    0    0
   ...
   ```

1. Mount your disk:

   ```bash
   ❯ sudo mount /data
   ```
