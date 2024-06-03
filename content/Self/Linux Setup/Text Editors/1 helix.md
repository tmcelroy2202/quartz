Helix deviates from regular vim bindings in a number of ways, and I love most of them.

Helix centers it's bindings around kakoune. In normal vim, if you want to do something, it is action -> how many ->  selection
so if i want to delete 3 words in vim i say
d 3 w 
action being delete - im going to delete whatever i continue to say
3 being 3 of the next thing
w being word 

so i delete 3 word

in helix, if you want to do something, it is selection - > action 

in helix, if i want to delete 3 words, i say v3wd 

yes, this is a longer string of characters, but it much more clearly illustrates what im about to do. 

Helix character inputs are not universally longer, many of them are actually shorter.

if i want to delete the 5th word from my current location, so:

hello how are you doing 
^ my location           ^^^^ word to delete

i can say 5wd 

if i wanted to do that in vim, it would be 4wdw

helix also just has a number of saner binds. If you want to go to the end of the page in vim it is G, and if you want to go to the beginning, it is gg, this makes sense, gg meaning go to beginning and G meaning GOTO END, you can remember that. If you want to go to the end of the line though, thats just $. or beginning of the line, 0. helix has much saner binds for this. g means goto, and so if you want to go to the end of the file, ge, if you want to go to the top gg ( you can also use gg to go to a specified line number, top is just the default ), if you want to go to the end of the line, gl ( goto right! ( l moves your selection to the right in all of these editors  ) ), if you want to go to the beginning, gh ( goto left ) .

Helix also comes out of the box with a lot of the features you would use neovim to add to vim. In order to do that with neovim, you have to learn a bunch of stuff about the neovim config system, and neovim package managers, and such like that. Helix requires you to do none of that. Helix just has LSP built in. Helix just has a file picker built in. Stuff like that is so nice.

It does suck that helix has no extensions system. They are [working on one](https://github.com/helix-editor/helix/discussions/3806) but there has been nothing released to stable yet. This is a turn off for a lot of people. There are a lot of features many people want that simply cannot exist because there is no plugin system. This is not a problem really for me though, as helix already has a majority of what I need. 

The only feature I would want from helix getting a plugin system would be integration with ghosttext. 

helix's kakoune style binds i have gotten so used to and love so much that i have no interest in switching

helix is also much much more performant than a lot of the other options, which is nice. I imagine neovim probably beats it, but I love helix binds enough that I am not interested in switching to neovim.