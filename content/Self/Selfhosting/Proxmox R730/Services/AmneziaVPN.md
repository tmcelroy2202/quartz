First service I set up on proxmox. 

This is a DPI resistant VPN solution. 

It uses a modified version of wireguard (amnezia-wg) to get around the ways wireguard is commonly blocked.

To set it up, I had to set permitrootlogin to yes in my vm, so that I could use the android app to install amnezia-wg to the server.

This is done by running vi /etc/ssh/sshd_config adding a line that says 

```
PermitRootLogin yes
```

once you get the vpn setup, you have to go and fix that though because that is obviously bad. Removing (or commenting out) the line is all you need to do. 

using the android app to install amnezia-wg was pretty straightforward. I just used the local IP for this. 

once you install it you need to port forward. This is what that looks like on openwrt

![[Pasted image 20240729211626.png]]

Now you are going to want to try to share your amnezia-wg config so that you can get a file version of it, and then you just wanna edit the ip in there to be your public IP instead of your computer's local IP. Now you re add that config as a seperate thing. boom. 

you could avoid having to do this by doing a dns rewrite. 