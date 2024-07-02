Ok so there are 3 services I need for music:
1. Navidrome ( Music Server )
2. SLSKD ( Soulseek Daemon for aquiring music )
3. VPN of some kind ( I do not want to do peer to peer piracy without a VPN ) ( It would be fine to do this, most likely, but I still am not interested. )

then to access the music I use the following clients:
1. Symfonium ( Android )
2. Feishin ( Linux and Web ) 
3. SonicLair .NET ( Linux CLI )
4. Subsonic Streamer ( iOS )

I run these all in a VM, with the VPN on killswitch mode, to avoid leaking any connections to soulseek. 

I also make backups of all the contents of my music library, to my RAID array, and to another backup platform.

I am using linux mint in a VM for hosting this, which I know is NOT a recommended way to go about running a server, but it is the ISO I already had on my drive, and i feel like things are simpler when I can just access their desktop environment.

If I wanted things to be minimal I would be using tmux and ssh and it still wouldn't be difficult, and maybe one day I will, but today is not that day.

for me, navidrome is installed outside of the VM, which doesn't make a ton of sense, and it really should probably be inside the VM, but whatever. Doesn't really matter outside of modularity.

# navidrome can be installed like this:
1. make the relevant directories
```bash
sudo install -d -o <user> -g <group> /opt/navidrome
sudo install -d -o <user> -g <group> /var/lib/navidrome
```

your \<user\> and your \<group\> are probably just both your username. they were in my case. let me know if they arent.

2. install navidrome

you have to go to  https://github.com/navidrome/navidrome/releases/
and right click the latest one and copy it and replace the url in the wget command with that one 

```bash
wget https://github.com/navidrome/navidrome/releases/download/v0.XX.X/navidrome_0.XX.X_linux_amd64.tar.gz -O Navidrome.tar.gz
sudo tar -xvzf Navidrome.tar.gz -C /opt/navidrome/
sudo chown -R <user>:<group> /opt/navidrome
```

at the time of writing, thats https://github.com/navidrome/navidrome/releases/download/v0.52.5/navidrome_0.52.5_linux_amd64.tar.gz 

so i would do 

```bash
wget https://github.com/navidrome/navidrome/releases/download/v0.52.5/navidrome_0.52.5_linux_amd64.tar.gz -O Navidrome.tar.gz
sudo tar -xvzf Navidrome.tar.gz -C /opt/navidrome/
sudo chown -R <user>:<group> /opt/navidrome
```

3. create config file
go to /var/lib/navidrome and make a new file called navidrome.toml

and put in there

```toml
MusicFolder = "<library_path>"
```

so for me thats

```toml
MusicFolder = "/home/tommy/.local/share/slskd/downloads"
```

4. create a systemd unit

create a new file under /etc/systemd/system/ named navidrome.service

throw this in there:
```json
[Unit]
Description=Navidrome Music Server and Streamer compatible with Subsonic/Airsonic
After=remote-fs.target network.target
AssertPathExists=/var/lib/navidrome

[Install]
WantedBy=multi-user.target

[Service]
User=<user>
Group=<group>
Type=simple
ExecStart=/opt/navidrome/navidrome --configfile "/var/lib/navidrome/navidrome.toml"
WorkingDirectory=/var/lib/navidrome
TimeoutStopSec=20
KillMode=process
Restart=on-failure

# See https://www.freedesktop.org/software/systemd/man/systemd.exec.html
DevicePolicy=closed
NoNewPrivileges=yes
PrivateTmp=yes
PrivateUsers=yes
ProtectControlGroups=yes
ProtectKernelModules=yes
ProtectKernelTunables=yes
RestrictAddressFamilies=AF_UNIX AF_INET AF_INET6
RestrictNamespaces=yes
RestrictRealtime=yes
SystemCallFilter=~@clock @debug @module @mount @obsolete @reboot @setuid @swap
ReadWritePaths=/var/lib/navidrome

# You can uncomment the following line if you're not using the jukebox This
# will prevent navidrome from accessing any real (physical) devices
#PrivateDevices=yes

# You can change the following line to `strict` instead of `full` if you don't
# want navidrome to be able to write anything on your filesystem outside of
# /var/lib/navidrome.
ProtectSystem=full

# You can uncomment the following line if you don't have any media in /home/*.
# This will prevent navidrome from ever reading/writing anything there.
#ProtectHome=true

# You can customize some Navidrome config options by setting environment variables here. Ex:
#Environment=ND_BASEURL="/navidrome"
```

4. reload systemd stuff to make the service work
```bash
sudo systemctl daemon-reload
sudo systemctl start navidrome.service
sudo systemctl status navidrome.service
```

5. make navidrome start on startup
```bash
sudo systemctl enable navidrome.service
```

navidrome will be accessible on port 4533 

if you want to enable their lastfm integration, check out here: https://www.navidrome.org/docs/usage/external-integrations/

# installing slskd
they have a docker container you COULD use

i did not use that docker container though, mostly because im stupid.
so here is the tutorial to do it how I did it.

1. grab a copy of the latest release from here https://github.com/slskd/slskd/releases

you likely want the linux-x64 one if you're hosting on a normal desktop

2. unzip that release to some folder in your home directory
```bash
cd ~
mkdir soulseek
cp ~/Downloads/soulseekzipfromreleasesyouknowthename ~/soulseek
unzip soulseekzipfromreleases 
```
3. run the slskd binary
```bash
cd ~/soulseek
./slskd
```
4. make a autostart thing to do this for you on startup
because im using linux-mint, im launching this in gnome-terminal, so i can monitor stuff visually. I also am doing this through linux mint's autostart utility. you should not do what im doing. you should make an actual systemd service. Doesn't matter that much though so im not fixing it right now. 
in order to do the autostart thing anyway

open the file ~/.config/autostart/slskd.desktop

paste this in

```json
[Desktop Entry]
Type=Application
Exec=gnome-terminal -- /home/tommy/soulseek/./slskd
X-GNOME-Autostart-enabled=true
NoDisplay = false
Hidden = false
Name[en_US]=slskd
Comment[en_US]=No description
X-GNOME-Autostart-Delay=0
```

then check the autostarts app. if you have a systemd service which does this and opens the terminal send it to me so i dont have to do the ( trivial amount of ) work required to do that. 

you can then open localhost:5030 and slskd will be there!
5030 is http
5031 is https with a self signed certificate 

default username and password are slskd and slskd 

# installing mullvad ( VPN ) 
i just went to https://mullvad.net/download/vpn/linux/ 
and downloaded the ubuntu/debian one, and enabled lockdown mode, and autostart on startup. 