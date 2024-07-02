This document is going to list out every service hosted across all my devices. Services that are currently running are marked with a check, services that are down are not. Services that are exposed to the web are marked with a - at the end. if it has no - then it is not exposed to the web in any way.

Here are my bits of documentation on each service im hosting ( that i have written documentation for):
* [[2 Kasm]]
* [[3 Quartz]]
* [[4 Bluebubbles and Beeper]]
* [[5  VL(M)ess WS TLS]]
* [[6 Monitoring ( Netdata and Uptime Kuma)]]
* [[7 Immich]]
* [[8 Music]]
* [[9 OpenMediaVault]]

Things that are on this list but not checked off im just not hosting for the moment. They have been hosted before.

# Fancy Gaming Computer ( 2 )
* [o] Kasm Workspaces - 
* [o] VNC Server - 
* [o] Quartz - 
* [o] Bluebubbles Server - 
* [ ] Nextcloud - 
* [o] Immich - 
* [o] VaultWarden - 
* [o] Paperless - 
* [ ] YAMS / 
   * [ ] Jellyfin - 
   * [ ] QBittorrent
   * [ ] Sonarr
   * [ ] Radarr
   * [ ] jackett
   * [ ] Lidarr

# HP Desktop (4)
* [o] VNC Server -
* [o] Quartz - 
* [ ] VaultWarden - 
* [o] Paperless - 

# Security for services

The most obviously insecure thing in here is exposing a VNC Server to the internet. This isnt really a big concern for me though, because im doing it through cloudflare, and cloudflare has a service called cloudflare access.

Cloudflare access allows me to require for a user to provide their email and it will send a code to their email which they have to enter in order to get to the web page. I get to choose which emails are accepted. This means you cant even get to the page where you enter the password to my vncserver without being an approved by me person. It still is just password based authentication though and not key based, which is less than optimal. The actual vnc server itself is localhost only, so I am in no way concerned about people on my local network accessing it or anything like that. 

If Cloudflare Access was bypassed though, once they were in the vnc server they could do a ton of damage.

The second biggest security concern is Kasm. Kasm is containerized, so they could not do anything to the server outside of Kasm, but Kasm still is a full fledged desktop on my wifi that im exposing to the internet, so thats less than optimal. It has its own login system though, and my login for kasm is pretty secure, so that part is good. Kasm is protected with Cloudflare Access - > Kasm's login system. 

If they bypassed Cloudflare Access though, they really could probably get through Kasm's login system.

Next biggest security concern is paperless. It is just a document scanner, but it is not behind cloudflare access ( it has a mobile app which cloudflare access would break ) and so its just the paperless login system protecting me. If they got into my paperless account then they could fill up my drive with a bunch of garbage i guess, and they could read all my scanned documents, but i dont think thats a massive problem.

Next biggest security concern is vaultwarden. It is a password manager, so it has some of the most sensitive information possible in it, but really my login for it is secure enough that there is no chance it is ever cracked ( 30 word passphrase ). If they bypassed the vaultwarden login system as a whole, then they could get in. Logging into my account should be necessary to decrypt anything I would imagine ( ive not read the source for vaultwarden ) though so what would they really gain from getting in ? Vaultwarden isnt behind cloudflare access either, because that breaks the bitwarden mobile app and bitwarden extension. 

Next biggest concern is Quartz. It is just straight up exposed to the web with no protection, because i cant really make you login in order to view my notes, that would be silly. I am also publicly detailing my security practices in it, which is not the coolest of plans. Should be fine though, because this is pretty standardized security for selfhosting. I have looked around and cannot find any articles on bypassing the security model of cloudflare access nor tunnels, so it really should probably be fine for now ? 

Bluebubbles is not a concern. Everything is done through google and cloudflare. Should be plenty secure. 

# In a perfect world
I would not need to use cloudflare tunnels at all, and none of these would be exposed to the internet. In a perfect world, i would be using tailscale / headscale to vpn into my network, and I would be accessing all my services just off the local network. 

This is not a valid solution, because tailscale uses the WireGuard protocol, and my school blocks the handshake that the WireGuard protocol uses to connect 2 clients. This is done via Deep Packet Inspection (DPI) and is a real nuisance.

There are a few ways around this:
* VPN Hotspot from phone data
* Shadowsocks
* V2Ray
* VPN Chaining

None of those are really feasible or at all easy though.

VPN Hotspot from phone requires phone to be rooted, which it is, and requires it to have a good data connection, which is not true in some of the buildings of the school.

Shadowsocks and V2Ray are not easy to host. The main way to do it that i see is through Outline, but last time i looked at that it was difficult. 

VPN Chaining is doable but a nuisance each time i connect, and is not supported by some operating systems. Its not great. Usually ive been doing it via vpn hotspot latched onto school wifi as rogue AP but routing all connections through [mullvad](https://mullvad.net/), and then connecting to tailscale from the chromebook. Its slow and its annoying to set up. 

