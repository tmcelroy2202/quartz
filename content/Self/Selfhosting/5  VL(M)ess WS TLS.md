I have set up a VPN into my home wifi which works on the school wifi. This was much more difficult than it ever should be, because my school hates fun. The knowledge I have gained from this will only ever be helpful to me after school if I go to China.

Ok, so here is the core problem:
My School is using Deep Packet Inspection ( DPI ) to reject all packets that aren't TCP and aren't HTTP or HTTPS. They are also blocking wireguard as a protocol by analyzing the packets and blocking the little header wireguard uses. The school's DPI setup means that if you want to VPN into your home wifi ( which I will explain why you want this shortly ), you have to do a whole ton of work to get around their DPI.

The Solution I am using is VLess WS TLS, which I will now unpack:
* VLess : the protocol used to bridge between my Server and the Client. It is an implementation of [V2Ray](https://www.v2ray.com/), which is primarily used by people in china to get around the Great FireWall ( GFW ). Attempting to find documentation on V2Ray has also been the first time in my life where only knowing English has actually inconvenienced me. 
* WS : WebSockets. It is doing the entire vpn connection over a websocket. You might know websockets from discord bots and such like that. If you don't know websockets, the core concept is doing communication with a server over a website. Think connecting to https://tommysite.com/sendnewmessage/hello_tommy_hi_how_are_you to send the message " hello tommy hi how are you " to the server. This isn't an accurate description of how the technology works ( it is a full implementation of TCP ), but it is a good enough one for the purposes of this article. 
* TLS: Encryption.  "Transport Layer Security". Allows for my communications with my server to be fully encrypted, so that anyone snooping on the network im connected to can't read my traffic. 

Here is the config I am using: https://github.com/azadrahorg/v2rayCaddy-vless-vmess-ws-tls
# Why do i want a vpn into my home wifi?
I explain this in part here: [[1 Overall Architecture#In a perfect world]]
Here is a bulleted list form though:
* I host a lot of stuff
* stuff you host is only accessible on your local network, unless you expose it outward in some way
* You can do that through the following options:
	* Port forwarding ( anyone on the internet can access your stuff, or atleast the login for your stuff  )  ( this is bad, because what if there is a security flaw in the login for your stuff? what if they can privilege escalate and infiltrate your whole system? Your whole network? Not good. )
	* Cloudflare tunnels / a reverse proxy ( I'm using cloudflare tunnels. It puts cloudflare in between my server and my clients. This means if my server is ever DDOS'd all I have to do is turn off the cloudflare tunnel. This also means that in order to get access to the actual connection to any of my clients you have to get past cloudflare access, which requires sending a OTP ( One Time Password ) to an approved email, and then logging in with that OTP. Using that OTP system is pretty secure, but cannot be done for all programs, as some have mobile apps, and that OTP thing will break any mobile app. It is trying to connect to the server and it is hit with an entirely unexpected page and it just won't work, so I have to run some services without cloudflare authentication layered on, which is concerning ) 
	* A VPN ( You can VPN into your home network and just access your services as if you were on that local network. This means that the only security concern is the VPN itself. VPNs are built to be port forwarded, so they have pretty good security standardized. Usually its easy to host a vpn and vpn into your home network, but my school blocks all the easy ways like [Tailscale](tailscale.com) or [ZeroTier](https://www.zerotier.com/)) 
* I also have a lot of devices
* normal vpns limit how many devices you can connect
* mullvad ( one of few vpns which have a shadowsocks implementation which bypasses my school wifi ) has a limit of 5 devices
* I have many more than 5 devices that need a VPN
* VPN Hotspots kinda help with this, but are annoying. 
* Having a VPN into my home network would mean I could then layer on a connection to mullvad on top, and then I would have no such problem with device limits. 
* I need a ( non hosted by me ) VPN for all of the LEGAL torrenting I am doing. Torrenting of PUBLIC DOMAIN shows and TV, and Linux ISOs. I also need a VPN so I can click on random garbage links in virtual machines and not be concerned about being deanonymized. I also need a VPN to bypass the bans I have received from a number of services.

# Setup
There are a few things you need:
* A Linux device that can be running 24/7
* The ability to port forward ( I have not figured out cloudflare tunnels for this yet, but they should theoretically be possible ? )
* A Client device that can run a V2Ray client ( Your enrolled chromebook cannot download programs, so it cannot run a V2Ray client )
* A Domain 

In order to port forward, you need to find your router's login page, and set port 443 to public. 

You need to then go to whatever you are using to manage your domain, and make a CNAME A Record pointing to your public IP. You can find your public IP just by going to whatismyip.com. You want your IPv4. 

Here is what my cloudflare dashboard looks like after I did this : ![[Pasted image 20240213214546.png]]

v2ws is the subdomain on gamingjones.gay which points to my ip. 
DNS only means that cloudflare isnt proxying the connections, which you would want to enable if you were sharing this with people, but I am not, as of yet. 

Once you have port forwarded and added an A record for your domain, then you need to run the installer from this github: https://github.com/azadrahorg/v2rayCaddy-vless-vmess-ws-tls

here is the command to run that installer: 
```sh
bash -c "$(curl -L https://raw.githubusercontent.com/azadrahorg/v2rayCaddy-vless-vmess-ws-tls/main/v2rayCaddy-vless-vmess-ws-tls.sh)"
```

You will probably need to run that with sudo or su. 

That should give you a vmess:// url or a vless:// url. just import that into whatever v2ray client you choose, and it should be all good ! if you have any questions message me.

# Clients
Here are my recommendations:
* Android: V2RayNG
* Linux: Nekoray

As I try more platforms ( windows and iOS )  ( I am unlikely to try MacOS ) I will update this.

There is also a list of clients on the xray github: https://github.com/XTLS/Xray-core

Here is that list:
- OpenWrt
    - [PassWall](https://github.com/xiaorouji/openwrt-passwall), [PassWall 2](https://github.com/xiaorouji/openwrt-passwall2)
    - [ShadowSocksR Plus+](https://github.com/fw876/helloworld)
    - [luci-app-xray](https://github.com/yichya/luci-app-xray) ([openwrt-xray](https://github.com/yichya/openwrt-xray))
- Windows
    - [v2rayN](https://github.com/2dust/v2rayN)
    - [NekoRay](https://github.com/Matsuridayo/nekoray)
    - [Furious](https://github.com/LorenEteval/Furious)
    - [HiddifyN](https://github.com/hiddify/HiddifyN)
    - [Invisible Man - Xray](https://github.com/InvisibleManVPN/InvisibleMan-XRayClient)
- Android
    - [v2rayNG](https://github.com/2dust/v2rayNG)
    - [HiddifyNG](https://github.com/hiddify/HiddifyNG)
    - [X-flutter](https://github.com/XTLS/X-flutter)
- iOS & macOS arm64
    - [Mango](https://github.com/arror/Mango)
    - [FoXray](https://apps.apple.com/app/foxray/id6448898396)
    - [Streisand](https://apps.apple.com/app/streisand/id6450534064)
- macOS arm64 & x64
    - [V2rayU](https://github.com/yanue/V2rayU)
    - [V2RayXS](https://github.com/tzmax/V2RayXS)
    - [Furious](https://github.com/LorenEteval/Furious)
    - [FoXray](https://apps.apple.com/app/foxray/id6448898396)
- Linux
    - [v2rayA](https://github.com/v2rayA/v2rayA)
    - [NekoRay](https://github.com/Matsuridayo/nekoray)
    - [Furious](https://github.com/LorenEteval/Furious)

I have to say when I used V2RayA I was very unhappy. Was not a fun time. I know I tried Furious too and I remember not liking something but I honestly can't remember trying it so I can't be too strong there. V2RayNG has been really simple and I have loved it on Android. 