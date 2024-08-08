# My Notes!

heyyy

hell

Im hosting this off of a server in my home - just an old hp desktop running [debian](https://www.debian.org/distrib/) server. It is an instance of [quartz](https://github.com/jackyzha0/quartz).

I use another server ( my more powerful gaming desktop ) for editing the notes. It also runs an instance of quartz ( located [here](https://notes.gamingjones.gay) ), with its content folder ( where all the notes are stored ) linked to the Notes folder in the persistent storage of my ubuntu [Kasm Workspaces](https://www.kasmweb.com/images) instance. 

This allows me to launch [obsidian](https://obsidian.md/) or [helix](https://helix-editor.com/) from within that kasm desktop ubuntu. Meaning I can have a full fledged beautiful remote notes editing workspace accessible through the browser. 

I then sync that quartz instance over to the other server by syncing the entire quartz folder between both of them with [Syncthing](https://syncthing.net).  Why not just sync the content folder ? Because i want to save server configuration changes between servers too!

I do this because the gaming desktop has [this issue](https://askubuntu.com/questions/1463742/random-kernel-panics-on-ubuntu-server-22-04-2-lts) and so will become completely unresponsive at at random. To my knowledge what is required here is a whole new CPU, which isnt super expensive, but still is a nuisance, and will likely take a while to happen.
The older hp desktop does not kernel panic, and therefore is completely reliable.

I expose both of the servers to the internet via a [Cloudflare Tunnel](https://www.cloudflare.com/products/tunnel/) . This allows for me to NOT port forward, and mitigate *most* of the negative aspects of what would come of a ddos attack, because of cloudflare's huge CDN.  My server could still be overloaded by an abundance of requests, but really it would just be a matter of turning off the tunnel to fix that. There is no scenario in which they can do anything bad to my actual router or home network, unless there was a massive vulnerability in something i was hosting which allowed them to privilege escalate. 

Here is an illustration of the current infrastructure:
![[Drawing 2023-12-18 12.29.05.excalidraw.svg]]

If you have anything to say about this to me, contact me! Really, it could be anything. All of these would be both acceptable and appreciated: 
* This is cool!
* This issue x is a security vulnerability 
* Why are you doing x
* Can you explain further how you do x 
* Can you send me the source for x 
* Have you seen x selfhostable service? 

If you want to hear more of this, go to the Explorer at the bottom - > Self - > Selfhosting

Thanks for reading !
