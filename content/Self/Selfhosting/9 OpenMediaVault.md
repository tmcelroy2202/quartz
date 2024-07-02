OpenMediaVault is an operating system used for NAS devices. It allows for you to use a nice UI for configuring thinsg like a RAID array or SMB shares or NFS shares. 

I have it running in a virtual machine.

In order to install:
1. download the iso
https://www.openmediavault.org/download.html
you probably want stable
2. make your vm or flash it to your computer
3. boot it up 
4. by default, username: admin, password: openmediavault


you probably want to go to disks and make sure all your disks are there. 

I would also say install the ftp plugin, but thats just because FTP is commonly used for filesharing devices.


im going to be using zfs for the rest of this, because its cool. if you arent using zfs, your life gets easier. zfs does not come with openmediavault, so you must first install the omv-extras repository into your sources. This may sound complex, but it is just a simple script. You can run this through ssh or through the wetty plugin, or through the actual terminal. Remember when logging into the terminal, you're not using your openmediavault credentials, you're using your credentials you set for the VM. So this is gonna be whatever you said the root password was. username: root, password: whatever you chose

```bash
wget -O - [https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install](https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install "https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install") | bash
```

then, go to plugins, search for zfs, and install the plugin.

then reboot the device. 

to setup disks for RAID : 
go to disks -> zfs -> pools -> + sign -> add pool -> pool type is mirror if you only have 2 disks ( do not do raid z1 for 2 disks. ), if you have more than 2, consider the other raid options. -> select your devices and such like that and enable compression -> save -> mount filesystem.

you should now see that you have a pool with available half of your total storage space. 

to setup NFS:
go to shared folders, create, name it, set filesystem, and choose the permissions people will have ( i went for everyone read/write )

services -> nfs -> settings -> check the box that says enabled

services -> nfs -> shares -> create -> select your zfs pool -> client = * -> permission read/write -> extra options are subtree_check,insecure,rw -> save 

to setup SMB:
services -> smb/cifs -> enabled at the top 
services -> smb/cifs -> shares -> create -> select your zfs pool as the shared folder -> public = guests only -> save

to access smb:
use your distro's package manager to install cifs-utils and psmisc
so for example
```bash
sudo apt install psmisc cifs-utils
```

then you are going to run this script, replacing the ip address in there with your ip address, and the user in there with your linux username.

```bash
#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script requires sudo privileges. Please enter your password:"
   sudo bash "$0" "$@"
   exit $?
fi

if [ -z "$1" ]; then
   IP_ADDRESS="222.222.2.22.2.2.2.2.2.2 ( replace with your ip )"
else
   IP_ADDRESS="$1"
fi
MOUNT_POINT="/mnt/smb"

sudo mount -t cifs //"$IP_ADDRESS"/tommynas "$MOUNT_POINT" -o uid=$(id -u yourusername!!!),gid=$(id -g yourusername!!!)

echo "SMB share mounted at $MOUNT_POINT"
```

i recommend copying this into a shell script, and then making an alias to that shell script. 

you can then pass an ip to that shell script, or you can run the shell script without an argument to have it connect to the default ip.