The idea behind vieb is the whole browser is built purely for proper vim key support. They want their browser to be fully modal / keyboard driven / vim based. I want that as well. [[I do not want to spend any of my time using a mouse.]]

Vieb is a close second, and if Firefox and all it's forks became unusable right now, I would probably have a pretty good time on Vieb. 

Really, Vieb is only missing one crucial feature I need. Extension support. 

They are very aware of this. 
* https://github.com/Jelmerro/Vieb/issues/130
* https://github.com/Jelmerro/Vieb/issues/385

Their solution for this is to just build every single extension people would want into the browser.

This is not a valid solution for me. 

They also have iffy rendering of webpages sometimes. I do not know what's up with that. 

Example:

Firefox rendering of https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_input_test with dark reader on:

![[Pasted image 20240418222022.png]]

Vieb rendering of the same page, also with dark reader on:
![[Pasted image 20240418222047.png]]

see how you cant see anything?

weird right???

disabling dark reader makes the text readable:

![[Pasted image 20240418222132.png]]

but there is still no top bar.

sucks real bad. 

I can't really use a browser if i cannot trust how it renders webpages. 

Vieb does a number of things way better than firefox though, and if Vieb can work out their weird rendering, I might be able to look over that extensions thing. Please note: it is entirely possible i broke something and now rendering is messed up purely because of me. 

The extensions that I want that I do not have on Vieb are:
* I still don't care about cookies 
* FastStream
* uBlocklist
* GhostText
* BitWarden
* SingleFileZ
* movie-web

All other extensions are implemented in some way by the browser itself.
Them being implemented by the browser means that they are actually way better than how firefox does things, because tridactyl cannot integrate itself into another extension's page. Firefox won't let tridactyl toggle dark reader on or off. Vieb will allow me to do that easily, through their commandline. 

![[Pasted image 20240418222552.png]]

Very cool. 

I also love some of Vieb's documentation. Their cheatsheet is way better than I've seen from tridactyl.

https://vieb.dev/cheatsheet

Their help page when you do :help in the browser is also very built out. The entire thing seems well documented and I like that. 

Because they built their own browser, they do not have any of the limitations that tridactyl had. You can still use all your binds while you are on a website that is loading. No one is going to take them down if they make their vim bindings too functional. 

Vieb's adblock is pretty solid too. 

![[Pasted image 20240418223119.png]]

I have not ran into a single ad while using it. 

Their darkreader implementation is a bit slow. 
I get this for a few seconds before it can actually apply all the css to everything:

![[Pasted image 20240418223250.png]]

less than optimal. 

I also have had trouble figuring out their system for vimCommand and that has sucked.

This browser is not there yet for me, but it is getting ever so much closer each day. 