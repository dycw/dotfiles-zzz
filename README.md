# dotfiles

My dotfiles, powered by [`dotbot`](https://github.com/anishathalye/dotbot).

## Installation

```bash
sudo apt -y install git
git clone --recurse-submodules https://github.com/dycw/dotfiles.git "$HOME"
cd "$HOME/dotfiles"
git remote set-url origin git@github.com:dycw/dotfiles.git
./install
```

## Mounting HDDs

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
