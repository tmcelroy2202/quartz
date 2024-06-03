I need to set up a password manager 
my choices:
https://keepassxc.org/
or 
https://bitwarden.com/

I would prefer to use keepass unless it is too much of a nuisance 

vaultwarden is also having good things said about it 
https://github.com/dani-garcia/vaultwarden
^ selfhosted bitwarden

I think i wanna do vaultwarden now that i look at it.

Sharing a key file across multiple things is a little bit rough.


vaultwarden is in a docker container though and docker containers i do not fully understand how they work, so i would like to get a more intimate understanding of docker before i commit all my passwords into something that i dont really know how to rifle through.

( i cant reconfigure my kasm instance's various things and it confuses me )

how would i expose that vaultwarden instance to the web so that i could access it from all my devices though?
i cant do a vpn ( tailscale ) because wireguard is blocked by my school. 
i can do a cloudflare tunnel, but it will break the app if i add authentication to it.
it is also a security no no to do a cloudflare tunnel and expose my PASSWORD MANAGER to the WHOLE INTERNET. Even if it does have authentication and even if i do setup fail2ban, it still is a security no no. 

vaultwarden + cloudflare tunnel COULD be something i would do.

Yubikey should be looked into 

Alternatively i could do keepassxc with the database file on a flash drive 

The flash drive syncing with my other devices though i do not know how i would do 

i could sync the keepass database file through syncthing or through git, sure, but how would the flashdrive get synced on devices that dont have git ? would i connect the flash drive to linux on the chromebook and git pull ? 

i could not use syncthing as i would be using it on arbitrary devices 
i also would have to authenticate on all my devices unless i could put my git auth stuff in there 

Yes you can put a config in .git and have it auth with that. i think i will do that. i will use the flash drive to do the auth and then pull to the flash drive whenever, then re add and commit things after i change them. 


password for keepass would be a ten word passphrase 
password for linux box should also be a passphrase 
( think funny arch related quips ) 

A hardware password manager might be the strat here, atleast for the logins for the computers themselves. 

look at onlykey
^ a solution like this is what i want really

yubikey seems like not what i want.
your yubikey is the ONLY way to get into your accounts. 

onlykey emulates a keyboard and just types whatever passwords i set and navigates to webpages if necessary. 

i do not need it to navigate to webpages as i would use keepass once i was into the device, but i would totally want it to auth with the device 

the onlykey would have the:
  master passphrase for the keepassxc db
  desktop user and password for login through tty / ssh
  Razer Laptop password
  Thinkpad password
  School Chromebook password 
  My Chromebook password


so i need a total of 6 slots  
onlykey can do that for me 
https://onlykey.io/collections/all/products/onlykey-color-secure-password-manager-and-2-factor-token-u2f-yubikey-otp-google-auth-make-password-hacking-obsolete?variant=41694199546042

then the keepass db would have all relevant online accounts including selfhosted ones ( pikvm kasm jellyfin etc ) 

keepass db would also allow me to properly track ips for my servers which would be baller 

if i do vaultwarden i just dont know how i will properly secure it.

It's not a thing you want publicly facing. 

i need to setup virtualization on my windows installations - installing random executables on windows does NOT spark joy. 

if i did do vaultwarden then the onlykey setup would work similarly. 


onlykey + vaultwarden or onlykey + keepass would be the best case scenario sure

but it is not at all necessary for me to go that baller at the beginning.

I think i should try out keepass 

after playing with HIBP more, it says that none of my passwords ( other than 15561556 ) are compromised anywhere.I dont even know if this is worth playing with anymore. 

after playing with vaultwarden though it is quite nice and i could totally use it everywhere. 


