At it's core, what is required is:
  * ability to insert images with ease 
  * ability to take excalidraw drawings and import them into a directory with ease 
  * ability to create new excalidraw drawings with ease

These things COULD be implemented by helix, and it would be real nice, but that's not something I need.

I can implement all of these myself I *think*.

have a look at this project:
https://github.com/hsingko/emacs-obsidian-excalidraw

this guy uses the obsidian excalidraw plugin, and it's auto export feature, to do the actual creation of the file
and just inserts a link to the png or svg that it spits out into the document.

this is nice, but does rely on obsidian, which I do not love.

what I think I can do is make binds to:
  * xdg-open excalidraw.com
  * download image from excalidraw.com when I am done and move it to the directory of
    my current helix session. 
      * this can be done very simply, just by ctrl + s to get the .excalidraw file, and then using 
        https://github.com/Timmmm/excalidraw_export to export to svg, would automate doing this.
        would likely just each time a new .excalidraw file is created on my system in the downloads folder, 
        run excalidraw export on it, then move the image to the right directory. 
      * grabbing the directory of the current helix session via pwd, or via % register 
        ( "%p shows the absolute filepath of current file ), and maybe using pipe-to to escape it from helix?
      * moving file from downloads to helix session folder, naming it {helix file name} drawing.svg
      * moving .excalidraw file and doing same thing.
      * 
  * copy absolute path of that image to my clipboard 

disadvantages to this:
  * hacky, inherently unstable.
  



