# Bluebubbles
[Bluebubbles](https://bluebubbles.app/) is a server that runs on a mac and then serves up access to IMessage to all your other devices. It has a android client, a desktop client, a web client etc. It supports most of the features of IMessage. 

The features it supports though vary across versions.

I own a mac mini ( Late 2012 ), and this Mac Mini is too old to natively support installing the latest version. The latest version it can install is high sierra, which came out in 2017. This is not a late enough version to support ALL of the features of bluebubbles ( see [this](https://bluebubbles.app/faq/) chart, under Q: What is the best macOS device and version to use? ).

This means that i have three options:
* Deal with the features it supports on the mac i have
* Patch my mac to a higher version via [opencore patcher](https://dortania.github.io/OpenCore-Legacy-Patcher/) 
* Use a macos virtual machine on a more fancy computer ( via [docker osx](https://github.com/sickcodes/Docker-OSX))

Dealing with the features it supports on the mac I have would be fine I guess, but there are other limitations of the mac i have too. Chrome remote desktop does not properly render the desktop while i am remote controlling it, and the mac is very very slow in general ( its from 2012, so that makes sense ). 

Patching the mac to a higher version I have done now. It is now on Monterey. It runs and it works, but when i launch bluebubbles the entire system immediately hangs. I cannot get bluebubbles to work. I asked the bluebubbles support discord about this and they said it might be because of some of the hardware acceleration changes the patches make to get the newer versions to work. I do not think i can get around that, so it seems like the patched mac is not an option

Using a macos virtual machine though is a wonderful option. Docker osx is a joy to set up ( it took almost no work ) and runs like butter on the fancy gaming computer. I am worried about setting up too much on the fancy gaming computer, because of the kernel panics i was getting on linux mint, but ive been running docker osx for a while and it has not caused any problems yet. 

Bluebubbles runs like butter on the gaming computer docker osx. Private API is set up and everything is great. 

# Beeper
Similar idea to BlueBubbles in a sense. The real concept behind beeper is that its all your chat apps in one place, everywhere. You dont have to remember your login to instagram and signal and whatsapp, and you dont have to be at your phone, and you dont have to install their apps, you just remember your beeper login, and you have a great time.

Beeper is based off of [Element](https://element.io/) which is a client for [matrix](https://matrix.org/) . 

It's relation to bluebubbles is that it supports IMessage. Relying on the beeper team though to keep their imessage bridge has been pretty sucky. 

They have a cool concept, they have fully reverse engineered the protocol behind IMessage, and this means they can send IMessage natively from android. This removes a lot of the security concern with their old method, which was similar to what bluebubbles is doing, and was just a mac in some server farm logged in under your apple ID intercepting your messages. 

Even though native sending is really cool, it is not cool that it does not work right now. They are trying to fix this, and they are a really cool team, but it is not acceptable for your primary method of communication with people to just drop out at random and for you to be suddenly unable to respond to messages. This may stabilize at some point, but they have really started a fight with apple and they are likely to lose it longer term. 

There is now a bridge for beeper which makes it so beeper can puppeteer your bluebubbles server. This is exceedingly cool:
	https://github.com/mautrix/imessage/tree/bluebubbles

I have been using the bluebubbles beeper bridge for a while now, and it is quite nice. It is far better than the old sh-imessage bridge, and should be used by everyone. Dev of it is also really nice and helpful. 