There are a number of good prebuilt options:
1. dell r730xd
2. dell r630 
3. dell r730
4. dell 430

I would love to be able to put a gpu in there, so i would like to get a 4U chassis so that i know it will be tall enough to put that GPU in there.  
https://www.ebay.com/itm/387112368924

there are 4U models of the r730 for pretty cheap. 

SAS Drives (2.5"):
1. https://www.ebay.com/itm/375444813361 (15$ 1TB)
2. https://www.ebay.com/itm/204798768486 (10$ 1TB)


Chassis: 
1. https://www.ebay.com/itm/375492991246
2. https://www.sliger.com/products/rackmount/4u/cx4150i/ ( would need jbod enclosure )
3. https://www.sliger.com/products/rackmount/storage/cx3701/ ( would not need jbod enclosure, but would need mini itx build. ) ( this too expensive i do not like it :((( )


If i go with chassis without drive space, JBOD enclosure:
1. https://www.ebay.com/itm/324663241031
2. https://www.ebay.com/itm/235542669824
3. https://www.ebay.com/itm/266428894440

Rack:
1. https://www.amazon.com/VIVO-Freestanding-Adjustable-Networking-CART-SR25U/dp/B0BFJKX5XB/
2. https://www.amazon.com/NavePoint-Networking-Equipment-Stationary-Capacity/dp/B01A6JQCR4
3. https://www.ebay.com/itm/154506885026
4. https://www.ebay.com/itm/166098095620

When I get one of these, I will also likely want a rackmounted switch
1. https://www.ebay.com/itm/276337898489 ( 8 port, 25$, power adapter)
2. https://www.ebay.com/itm/276337898489 ( gigabit poe 24 port rackmounted 34.99 $)


I will also likely want a rackmounted UPS, but those look like they can be found easily online for cheap. 

I will also like a rackmounted shelf most likely 
1. https://www.amazon.com/Rising-Cantilever-Server-Shelves-Aluminum/dp/B07NBVVY1X/ ( 8in depth )
2. https://www.ebay.com/itm/305656116183


I wound up buying a Dell r710, because i saw, what I thought was an incredibly good deal. I now know that it was not that crazy of a deal. I will likely upgrade to a better server later down the line. This one is very old, and has a CPU that is approx. half as powerful as my main computer CPU, and cannot be upgraded to anything good. 

This limits my GPU options down to 25w GPUs only, unless I do significant work  to externally power the GPU 

Many people use the gt730 or gtx 1050  / 1030 , which requires cutting a pcie slot. 

I also do not know if a GPU is even going to be valuable to me with this server, as it is relatively underpowered as a whole. I think it might wind up just being storage. 

I bought this ram https://www.ebay.com/itm/166340221322
64GB of it, for 23$ is a great deal, and I can later expand up to 144GB

![[Pasted image 20240709202251.png]]

there are a number of valuable threads for the r710:
1. https://www.reddit.com/r/homelab/comments/5ldiel/so_you_wantgot_an_r710/
2. https://www.spxlabs.com/blog/2019/3/16/silence-your-dell-poweredge-server
3. https://www.reddit.com/r/homelab/s/k0c2iDJsxt
4. https://www.reddit.com/r/homelab/s/W3MhryhSPE


From these resources I learned about iDRAC, which is how you remotely interface with the r710. The r710 comes with iDRAC express, which can do a number of things, but iDRAC enterprise allows you to do IP-KVM, and a numbre of other things  which are pretty coolio. 

you can get an iDRAC enterprise card for real cheap - im not going to yet, because I do not know for sure that the server I bought does not already have one, but once I verify I need one I will buy one. 

https://www.ebay.com/itm/176423235502

I still also need to get a rack. I also need rails. I also need a way to attach the two. 

rackstuds seem well loved for mounting

https://www.amazon.com/dp/B07W67MXRV/

https://www.rackstuds.com/try

rails seem comically expensive, and I *think* optional? not fully sure. regardless, I would like to get some. 

Looking for "B1" rails cheapest I see is 50$, which i think is absurd, but maybe ill cope? 

https://www.ebay.com/itm/305665269442

there are many for under 50$ but + shipping they all go up to 50+

https://www.ebay.com/itm/145837665596

^ says r710, 43.94$ 

for the rack, my options are limited.
I would like it to be as big as possible. 
Here is, as of now, my perfect scenario:

![[rack diagram.svg]]

ive just bought an r720 and r730.
i went with a vevor 20U rack for 100$ (shipped)

I need the following:
* switch - 
* pdu - 
* ups
* rails for:
	* dell r710
		* Needs dell B1 rails -
	* dell r720
		* Needs dell B6 rails -
	* dell r730
		* Needs dell B6 rails -
	* gaming computer
		* Needs some kind of strong shelf
			* could be r710 chassis 
			* could be navepoint adjustable rails  - 
* patch panel - 
* keystones for patch panel - 
* little cables to go from switch to patch panel  - 
* hard drives for servers 
* cable management channels  - 

for the patch panel: https://www.amazon.com/NavePoint-24-Port-Modular-Patch-Panel/dp/B0060RUTNU

for the little ethernet cables: https://www.amazon.com/dp/B079584P5Y/?th=1

for the keystones: https://www.amazon.com/NavePoint-Keystone-Coupler-Thermoplastic-15-Pack/dp/B0B5HNDBXJ/ ( 14.69 for 15 pack, but cat5e )

https://www.amazon.com/Sokqovt-Keystone-Coupler-Female-Ethernet/dp/B0D22R75VC ( cheapest, 9.99 for 24 pack, cat6, unshielded )

https://www.amazon.com/TRENDnet-Keystone-TC-KC06C6A-Shielded-Ethernet/dp/B0C5YYMVR1/ ( most expensive, and also nicest, 24$ for 6 pack, cat6a, shielded )

for the pdu: https://www.amazon.com/CyberPower-CPS1215RM-Basic-Outlets-Rackmount/dp/B00077INZU?th=1 - cheaper: https://www.ebay.com/itm/226234266183

more expensive but seemingly better: https://www.ebay.com/itm/204894350422

has switches: https://www.amazon.com/Outlets-Power-Protector-Switch-Control/dp/B084RYCNT7

vertical mounting can be done through something like https://tripplite.eaton.com/vertical-pdu-installation-bracket-for-server-racks~SRPDU4PHDBRKT?q=vertical%20pduu if i wish to go the vertical route 

nicest option reasonable: https://www.amazon.com/CyberPower-PDU15M2F12R-Metered-100-125V-Rackmount/dp/B003KBB35C/ 

50$ decent : https://www.ebay.com/itm/225161999033

for the rails:
r720 and r730: 
* https://www.ebay.com/itm/364932753601
* https://www.ebay.com/itm/115992195751
r710:
* https://www.ebay.com/itm/185931578907
gaming computer: 
* https://www.ebay.com/itm/186465484873
* https://www.ebay.com/itm/355811367089
* https://www.ebay.com/itm/355811367113

cable management channel:
* https://www.amazon.com/Vertical-Cable-Organizer-Finger-Ducts/dp/B01LN1TVCM?th=1
* https://www.amazon.com/Professional-Management-Capacity-Electrically-Computer/dp/B09DYMRL2T
* https://www.amazon.com/Trunking-Raceway-Concealer-Organizer-Management/dp/B09SZK9HLB/
* https://www.amazon.com/Updated-31%EF%BC%882x15-5%EF%BC%89-Management-Computer-L15-5inch/dp/B08LYKF8S1

switch
* https://www.ebay.com/itm/296496378936
* https://www.ebay.com/itm/166428109075
* https://www.ebay.com/itm/166361095148 ( 2 switches, unmanaged, 1000mbps, 40$.)

