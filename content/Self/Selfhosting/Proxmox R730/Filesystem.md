The Filesystem you are using is something that people often do not think about, but it is pretty crucial.

Here are the core problems with using a server just like a normal computer:
1. Big hard drives are expensive
2. hard drives fail over time

running a fancy filesystem can solve both of those problems for you

One of the most common implementations of this is RAID 

RAID can do a few things, the most basic being:
1. mirroring
2. striping

mirroring is, as the name implies, mirroring the contents of 1 drive over to another. So if i save a file on this drive, it will also save the file to my second drive. this means that if my normal drive dies, then i can just switch to the second one, and I lose no data. This gives me redundancy. This is called RAID1
\
striping is combining the storage of the 2 drives. So if I have 2 1tb drives, then I can combine that to 1 2TB drive. this simplifies storing data across multiple drives. This configuration though, would give me no redundancy. This is called RAID0

You can combine mirroring and striping, if you have 4 drives. This means that you would have 4 1tb drives, with drive 1 and drive 2 mirrored, and drive 3 and drive 4 mirrored. Then you would take that mirrored set of drive 1 and 2 and stripe that with the mirored set of drive 3 and 4, giving you a capacity of 2tb, while keeping redundancy. Any one drive could fail, and the system would still work. This is referred to as RAID 1+0, because it is just using raid 1 and raid 0 combined. 

You can also have 3 drives, and use xor to create a parity drive which at any time can use the contents of 1 drive to get the contents of the other. This means you get redundancy, with half the parity drives. this is called RAID 3. 

There is a ton more that can be done with RAID, but im hoping you get the basic idea. 

RAID can be done at a software level, or a hardware level. 

At a hardware level it is done through a raid card. Hardware raid stops the operating system from even seeing the individual drives. The operating system only sees one big 2tb drive, not the 4 individual 1tb drives. 

The raid card connects to a pcie slot on your device, and accepts a SAS cable from your SAS Backplane of your server, or on a desktop, accepts sata.

the advantage of going for hardware raid, is that the calculations associated with raid are not done by your cpu, and are instead handled by the raid card itself, leading to better performance and reduced cpu loads. It is also generally simpler to setup than software raid.

There are a number of disadvantages of hardware raid though. If you wish to switch your drives over to another server, with a different raid controller, get fucked loser, you're not doing that. They are all proprietary and very very few of them will be compatible with your existing configuration. You will have to wipe all your drives in order to use them with another raid controller. Hope you have backups! You also cannot use things like ZFS with a hardware raid controller, because ZFS needs access to the individual drives in order to do any redundancy stuff or health checking.  This is also true of all other fancy filesystems like btrfs or ceph. You are also limited to only using what the raid card supports, which is often not a lot. I have yet to interact with a raid card which allowed for the mixing of hdds an ssds in a pool. Things like that can be annoying if you are cobbling together a setup from just what you have available.

The advantages of going for software raid are numerous. You can use fancy filesystems like ZFS which can do things like automatically decommission drives when they begin failing, and rebuild the filesystem afterward using a hot spare, or use your ram for a super fast cache of most frequently accessed areas of the drive, or automatically compress your data losslessly. It is really nice. Software raid also does not usually care very much about what your drives are, so you can mix hard drives and ssds all you want. Software raid also usually will have friendlier interfaces than hardware raid ( which is usually bios-like ) and software raid is not usually proprietary, which is always nice. 

The primary disadvantages of software raid are that the cpu has to do more processing as its doing all the raid stuff itself, and you have to set it up manually.

There are a number of tools which make software raid easy. Here are the most popular:
* proxmox
* unraid
* truenas
* openmediavault

unraid costs money and isnt FOSS so i do not use it 

proxmox has been the easiest experience with software RAID and ZFS I have had 

I describe the process on openmediavault here [[9 OpenMediaVault]] it was less than simple but it certainly worked. 

On proxmox, all I had to do, was connect my 4 drives to my SAS backplane, and then go to pve -> disks -> zfs -> create: zfs -> name it -> raid level raidz2 -> click create 

now i have a zfs pool with 2tb capacity and 2 drives for redundancy!

I can later add more storage, by getting another 4 drives, and doing the same thing again, and adding them as a raidz2 vdev to the existing pool

that can be done as described on this forum post: https://forum.proxmox.com/threads/adding-vdevs-to-an-existing-pool.114965/

  
`ls /dev/disk/by-id -lha`  
  
You will get a output resembling something like this  
`/dev/disk/by-id/scsi-35000c500d9f56e0f -> ../../sdi /dev/disk/by-id/scsi-35000c500d9f4d797 -> ../../sdj /dev/disk/by-id/scsi-35000c500da3bdeeb -> ../../sdk /dev/disk/by-id/scsi-35000c500da3bad7b -> ../../sdl /dev/disk/by-id/scsi-35000c500da01388b -> ../../sdm /dev/disk/by-id/scsi-35000c500da3bd143 -> ../../sdn /dev/disk/by-id/scsi-35000c500d9e8843f -> ../../sdo /dev/disk/by-id/scsi-35000c500da3bd08f -> ../../sdp`  
  
When you have found the right disks to add you need to add them as a vdev to the pool like this  
  
`zpool add -f -o ashift=12 vmpool raidz2 /dev/disk/by-id/scsi-35000c500d9f56e0f /dev/disk/by-id/scsi-35000c500d9f4d797 /dev/disk/by-id/scsi-35000c500da3bdeeb /dev/disk/by-id/scsi-35000c500da3bad7b /dev/disk/by-id/scsi-35000c500da01388b /dev/disk/by-id/scsi-35000c500da3bd143 /dev/disk/by-id/scsi-35000c500d9e8843f /dev/disk/by-id/scsi-35000c500da3bd08f`