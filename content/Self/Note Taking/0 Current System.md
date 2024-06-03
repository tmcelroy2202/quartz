High Level:
Im writing my notes in a language called markdown. I explain markdown syntax in [[5 Obsidian Itself]].

Those notes are then synced across all my devices using syncthing, and backed up using obsidian's git integration. 

Syncthing syncs my notes over to my server 

I use quartz to expose the notes to the internet 

I use olivetin to create a website that can be used to restart my quartz instance, so that when i make changes and want them to show up on the website,  I just have to hit the little restart button 

Flowchart of current system, if it is too small, right click on it, and click open in new tab :

![[notesflow.excalidraw.svg]]

Now, this is more complicated than one really needs it to be. Really, you could just use netlify and your flowchart would look like this: 


![[altnotesflow.excalidraw.svg]]

you could also add a domain to it, so that it wasnt just blablabla.netlify.app, by doing this ( example says github.io but this would work for netlify ) :

![[Pasted image 20240510131544.png]]

honestly it might be easier to just go the github pages route though. we will see. 

What im getting at is though: your setup does not need to be nearly as complex as mine is

The reason mine is as complex as it is is that i prefer to self host as much of my infrastructure as physically possible, and have an existing server for doing that with. 

I think you should just take the easiest route with the lowest required maintenance ( netlify or github pages ). 

