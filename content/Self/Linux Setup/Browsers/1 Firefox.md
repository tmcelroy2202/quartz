There are a number of cool things about firefox which make it beat the competition, but they are primarily addons to firefox built by the community, not the browser itself. If firefox did not have addon support, there is no way I would ever use it.

Here are my favorite addons:
1. [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
2. [uBlock Origin](https://github.com/gorhill/uBlock#ublock-origin)
3. [I still don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
4. [FastStream](https://addons.mozilla.org/en-US/firefox/addon/faststream/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
5. [Tridactyl](https://github.com/tridactyl/tridactyl)
6. [uBlocklist](https://addons.mozilla.org/en-US/firefox/addon/ublacklist/)
7. [GhostText](https://addons.mozilla.org/en-US/firefox/addon/ghosttext/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
8. [BitWarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
9. [LibRedirect](https://addons.mozilla.org/en-US/firefox/addon/libredirect/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
10. [SingleFileZ](https://addons.mozilla.org/en-US/firefox/addon/singlefilez/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
11. [movie-web](https://addons.mozilla.org/en-US/firefox/addon/movie-web-extension/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)

I'll get into them in a moment though, because though they are cool, they are not unique to firefox necessarily, most of those can be achieved on other browsers. Chrome's extensions can be installed on most major chromium based browsers.



Firefox's focus on [[Free and Libre Open Source Software]] is nice, I like that im using an entirely free and libre browser, but mozilla is a company [primarily funded by google](https://www.techspot.com/news/101083-mozilla-raked-almost-600-million-2022-thanks-google.html) and gets to exist primarily so that google is not viewed as a monopoly. That does not inspire confidence. This means that them being open source is not my primary drive for using their browser, as I don't have a ton of faith in them as a company. I imagine it is hard to avoid the golden handcuffs there and I imagine they will do nothing major to fight google's [more malicious actions](https://arstechnica.com/gadgets/2023/07/googles-web-integrity-api-sounds-like-drm-for-the-web/) because of those golden handcuffs. Mozilla did [release a statement](https://github.com/mozilla/standards-positions/issues/852#issuecomment-1648820747) on that web integrity API ( as a comment in a github repo... ) , but did nothing more. 

So if it isn't mozilla as a company, then why firefox specifically?

Firefox is shipped just about everywhere, and is infinitely customizable. That's really it. They don't fight me. Not in any meaningful way. 

Most browsers give me a lot of what i consider to be bloat.
Tab bars.
Address bars.
window decorations (maximize minimize and close buttons). 
bookmarks bars.

Some browsers you can disable the bookmark bar on, but you really cannot disable any of the rest of that without going into fullscreen mode. 

I do not want any of that, almost ever. 

I want the website to take up the full browser window, at all times. I do not want to have to hit a button to initiate that either. I want it to just not have a tab bar or an address bar or window decorations. 

Firefox allows you to have this via editing userchrome.css

There is no way to get rid of the tab bar, or address bar, on normal google chrome. 

There are chromium based browsers which offer this kind of customizability ( see: [[4 Vivaldi]] ), but they still fail to reach the level of customizability that firefox offers. Have a look at : https://firefoxcss-store.github.io/

Firefox also does not have as strong of limitations on what my extensions can do, and sideloading extensions is much easier than normal chrome, which is nice. 

I would still like for firefox to have weaker artificial limitations on addons. Firefox still does stop extensions from doing a number of things that i wish they could do 

Examples of this:
* https://github.com/tridactyl/tridactyl?tab=readme-ov-file#webextension-related-issues
* https://github.com/tridactyl/tridactyl/issues/1800

Firefox is just the obvious winner though. It is so much less heavy than Vivaldi, and so much less annoying than vivaldi. It is so much more powerful than qutebrowser ( especially because it is much more extensible ), + it does a better job rendering webpages than qutebrowser. Same can be said of Vieb. It is free and libre, which chrome isn't and it is infinitely more customizable than chrome. 

There are a number of firefox forks you could ask me to use, but honestly, i have not seen any of them do anything impressive. I do not have any need for the security features of librewolf, and tridactyl handles my userchrome editing for me, so I do not need floorp. I really don't see what I would gain from switching to any other browser, and I would lose the ubiquity of my firefox config. I can switch to any device and just copy over my ~/.mozilla, and have a wonderful time. 

Alright, so now that we have covered why I use firefox, now we will cover what each of those extensions do:

Dark reader converts every webpage i go to into a drak mode version of that same webpage. It is very very configurable and it allows me to build my own themes for websites without modifying css myself.

canvas with dark reader:
![[Pasted image 20240418230645.png]]

canvas without dark reader:
![[Pasted image 20240418230657.png]]

uBlock origin is an adblocker. Really the gold standard for adblocking. Not even just an adblocker, also a ton of other stuff. I primarily use it for the adblocking though. It does a LOT of adblocking for me.

![[Pasted image 20240418230826.png]]

I still don't care about cookies just automatically hides those cookie popups that you get when you go to websites 

these:

![[Pasted image 20240418230907.png]]

I don't want to see those, and I haven't seen a single one since installing this addon. 

FastStream is a replacement for the video player of any website. It does a TON of cool stuff, but the main advantages for day to day life are finer control over resolution, and that it will continue to load things while you have paused or while you are far from them in the actual video. it loads the whole video, when you first render the video, instead of loading it slowly while you watch the video, so if your internet drops while watching, you will not notice. FastStream is really nice. 

Tridactyl allows me to use vim keybindings in my web browser, and replaces just about all of the brower's actual UI. I do not need a tab bar or an address bar or window decorations, that is all silly. Real men navigate purely through a cli 

![[Pasted image 20240418231154.png]]

uBlockList blocks websites from my search results. I can google "lasagna recipe" and not get any garbage spam in there. It just has a massive list of SEO focused domains, and it blocks all of them. If i run into any it doesn't block, I can also manually block them myself. 

GhostText allows me to edit textboxes from websites in a text editor of my choice. So i can open vim to edit a textbox on, for example, codehs. 

BitWarden is just the extension for my password manager. It autofills passwords. it does not even do a remarkably good job of it. 

LibRedirect automatically redirects you when you go to a bad invasive website and sends you to a good privacy respecting one. e.g. https://reddit.com -> https://redlib.kittywi.re/

SingleFileZ allows you to download a full page, with all javascript, into one html file, and zips it to save space. this is how i made https://powerschool.gamingjones.gay

movie-web is the extension for https://movie-web.github.io/docs/instances
It allows you to stream movies and tv directly through the extension without the website having to do a bunch of garbage to get the authority to do all that. love movieweb. 
