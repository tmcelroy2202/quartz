Currently using obsidian, with the excalidraw plugin to draw things that require drawing, git for backups,  quartz for exposing it, and syncthing for syncing it across devices.

I do not like this, because obsidian is not open source. it is not libre. it is a core part of my life and it is proprietary. I hate that. It also is electron. I hate that aswell.

Other options:

Helix:
* love the binds
* is the editor im most comfortable with
* extremely performant
* terminal based exclusively
* cannot do inline images at all. i would be taking notes with likely 0 images, unless i was manually typing out their links, and pulling up a reference document on the side via the markdown lsp. 
* markdown lsp might actually be the move. helix is easily the most compelling to me of these options. The vim bindings are nice but they are no helix. they have too many button presses and dont feel fluid enough, which helix does. i dont think this is an objective helix feels better or is less button presses, its just personal preference. im also much more confident with it which is nice. it also has native multi cursor which is nice. i love helix. 

Qownnotes:
* can use scribble for drawing
* native image support
* vim mode 
* lighter than obsidian 
* native integration with owncloud and nextcloud, which would mean i could probably not have to use syncthing, which would be cool. 
* i hate it. i tried it and i just do not like it. it doesnt have any highlighting for bulleted lists in the editor, and its just not a compelling enough change for me to do it. i would have to get a setup for editing excalidraw files and exporting them to svgs myself and pasting them that i could do QUICKLY for usage in class too. just dont like it. 


Emacs:
* Can do inline images in gui mode
* has a terminal version too
* very cool editor
* heavy
* https://github.com/doomemacs/doomemacs
* https://github.com/wdavew/org-excalidraw
	* this is hacky and weird, but seems to work
* has been around for 50 years - is kinda the standard for this stuff. 

zim: 
* basic
* native image support because its gui
* Nothing about it really sticks out to me. it is *just* a markdown editor, and I mean that in a negative way. Just a markdown editor is what a lot of people want, but not what I want. What I want is a well optimized note taking program.

neovim:
* light
* terminal based, but with image support for terminals with image support
* https://github.com/jbyuki/venn.nvim
* no excalidraw support and I dont see a way to get any, other than to roll my own. 

# Review
I thought Qownnotes was gonna be nice. I wanted qownnotes to be nice. I just did not like it at all. super cool project, glad it exists, but not for me.

Emacs seems like it could do what I want. It has the ability to do images, but im not locked into a gui, it has an excalidraw integration, it has the community support to do anything else I ever could want to do. But it's consistently reviewed as "heavy".




# New Idea
Emacs + xournalpp

OR

helix + xournalpp

xournalpp is a pdf / image editor. 

helix can do all the text writing

helix can do markdown preview in a web browser  through mdpls
if i do not want to use mdpls, here are the options im aware of:
1. joplin
2. zettlr
3. formiko
4. marktext
5. pandoc conversion

for chemistry, what would be required is:
download cfu pdf 
fixtp does the following:
	teleports the cfu pdf into the right folder 
	makes a copy of it which is cfupdf.bak
	converts the cfu pdf to a png with
	convert -density 300 l1cfupdf.pdf -append out.png
	adds a link to that png into a newly created markdown file called "L1 CFU.md"
	maybe even a html embed would be prefered? they might be more universal. we will investigate further. 
	opens xournalpp on the pdf 

if i need to see how the markdown looks then:

mdprev does the following:
	converts a markdown file to html using pandoc 
	opens that html in a browser
	IMAGES NEED TO WORK 

Advantages of this setup:
* Everything is free and libre and open source
* would remove a lot of the clog from my quartz instance, as the excalidraw drawings would not show, and of course pdf files do not show in quartz, so it would actually just be what the people wanted to see.

Disadvantages:
* Certainly not as easy as obsidian
* Xournal is not the most fun to use, certainly less fun than excalidraw
	* Excalidraw can NOT still be used, as excalidraw cannot import pdfs in the web browser version
		* I could still use excalidraw if I converted the pdf to an image, and then used the excalidraw save to overwrite the image 
		* Saving these would be much more annoying. I think it could be done, and I could have it automatically move the files over, but it would be very hacky and probably not very good. 
	* Alternatives 
