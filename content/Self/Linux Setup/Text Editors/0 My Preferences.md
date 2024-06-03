In order of quality of life:
1. Helix
2. Neovim
3. Vim
4. VScode

I generally do not use anything else.

Explanations for each of these are linked here:

[[1 helix]]

[[2 neovim]]

[[3 vim]]

[[4 vscode]]

Honorable mention: micro
micro is what i recommend people to use instead of nano if they do not want to learn vim. 

Quick explanation of why I care:
# Modality
Something being modal just means that it has multiple modes. 
In text editors, this usually means 4 main modes:
* Normal mode
* Command mode 
* Visual mode 
* Insert mode 

There are a few other modes depending on the editor. 

Insert mode is the mode you are used to. You open your text editor, you type your text, great! 

The problem with this is then navigating that text after. Most people use a mouse to do that navigation. That is not an efficient way to go about it. Using your keyboard to type things and then using your mouse to navigate them requires taking your hand of the keyboard putting it on the mouse, moving the mouse, and bringing your hand back to the keyboard. that is more work than navigating text should require. I explain further why I have beef with mice here: 
[[I do not want to spend any of my time using a mouse.]]

This is why you go into normal mode. Normal mode allows you to navigate the text purely with your keyboard. In most editors, j is down, k is up, h is left l is right. They work the same way as the arrow keys. they navigate you through the text, but without having you move your hand down to the arrow keys. 

It's not that simple though. There are a billion different keys for navigating text more efficiently. w to go forward a word. b to go back a word. e to go to the end of the next word. / to search. etc. 

when in normal mode, you can generally enter insert mode by hitting i, and then your text editor will work like normal. arrow keys will be the only way to navigate text by keyboard. Until you hit escape. 

Command mode is how you do things like saving the file or changing settings. There is no UI to be navigated by mouse usually, just a command system.
If you want to write to a flie then type :w while in normal mode, and hit enter. it will write the file. If you want to quit, :q
this is where the "couldn't quit vim had to throw away the computer" memes come from. if you do not know to hit : and then q, there is no clear and obvious way to quit. There is no file button where you can click to save and quit. There is only a textbox. 

visual mode is just how you select text. You can save the text you select to a buffer from visual mode, and you can do a number of other things with the text, but it mostly works like normal mode but just controlling 1 end of a selection line. h extends your selection 1 character to the left. k one line up. etc. 

This may all sound relatively complicated. You may be happy with how you currently edit text. You may not think using a mouse is that annoying. I am telling you: it is way better. When i am writing somtehing i barely think about the actual writing part, I never think about the program im using, it simply flows into my fingers. It is the closest I can get to brain computer interface. 

When I have to use a mouse it's like when people have to use a different keyboard layout. You hunt for every single key you have to press. With a mouse, you have to hunt for every single button you press. you have to search your screen and look for what to click on. It is not difficult, but it is also not reflexive. You are not going to develop muscle memory to automate it for a hot minute. With keyboard input, I never have to look for anything. I can just know :w to save. Vkky to select the line im on, and the 2 lines above it, and yank them ( meaning copy ) . Stuff like that is just so crucial for having a fluid experience interacting with text. 

[[3 vim]] defined the binds that most editors use ( e.g. hjkl, w, b, etc ). This means that once you learn the vim mode of an editor of your choice, you can also use the vim mode of any other program. Learning vim keybindings is so convenient. I am writing this in Obsidian's vim mode at this very moment. 