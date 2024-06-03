Note taking can be done in solely obsidian, and can be done that way easily.

Git is a tool which allows you to have version control on your notes, so if you delete something accidentally, you can always restore it. Git also allows you to see who added what, and when, which is nice. Git turns a folder into a "repository" of data, with a .git folder inside of it that does all the tracking.

Github is a website which you can back up your git repository to. Using github allows you to collaborate with people by pulling their changes via git pull and pushing your changes out to them with git push. 

Quartz is a tool which takes your obsidian vault, and converts it to a website someone else can access. There are a number of ways it can do this, but the most obvious way for this usecase is to use github pages. Quartz can just run after each commit you make and build a website based on your current notes, and then publish that to github pages, so that it is accessible at: yourgithubusername.github.io/yourrepositoryname ( in my case, tmcelroy2202.github.io/quartz )

You do not NEED git, or github, or quartz, as long as you are not sharing your notes to people. 

I still would recommend git and github, even if you arent sharing your notes, purely because having backups is always good practice, and having version control is also always good practice. 

In order to install obsidian, you will need to be able to install a program to a device somewhere. I know that sounds really vague, but ill explain momentarily.

School Enrolled Chromebooks cannot install the native obsidian app, because the school does not allow you to enable chromeos's linux support ( which would allow you to install the linux program ), nor does the school allow you to download obsidian's android app from the google play store. 

This does not mean that school enrolled chromebooks definitively cannot access obsidian though. 

There are a number of ways to go about giving access to a school enrolled device to obsidian, but they all basically boil down to fancy remote desktop. Obsidian runs on some other computer far away, and the school computer controls that other computer. It is not laggy enough to be a problem for note taking. 

If you ( Mrs Jacobson ) want to allow students access to a remote computer, that would certainly be cool, but would also mean they would only have access to it for the duration of them being in your class. 

The way I would give people access to a remote linux device is [kasm workspaces](https://www.kasmweb.com/docs/latest/install/single_server_install.html). This would allow them to remotely control a instance of whatever operating system you chose, and is incredibly cool, but in order to do this you would need to setup your own hardware for the server aspect, and in order for larger classes to use it all at once, assuming you give each student 4gb of ram, could be a lot. 

If you wanted students to do remote desktop themselves, you could have them use cloudflare's browservnc ( i can elaborate on this if you wish )

I do not know if I would honestly recommend that you do any of that.

If the students have their own personal computers, sure, show them obsidian, but I don't know how you would work that into class time, as a lot of your students likely wont bring their own personal computers. 

I think the value of this to you is likely going to be showing kids resources quickly and easily on the topics were discussing. Asking the kids themselves to host something like this I have my doubts about going well. 

I would love for a class like this to cover linux basics and development environment tooling basics ( vim basics, how to use git, bash basics, how to troubleshoot problems, FLOSS, etc ) , but I do not think that class can feasibly be AP Computer Science A, as there's already a ton of stuff crammed into AP Computer Science A. I also do not think that class can be principles, as there's already a ton of stuff crammed into principles, and these are way more advanced topics than need to be covered by principles. That would likely need to be its own class ( a person could totally plan an entire class around the various cool aspects of a development environment. ). 

Now, for a much less techie and educational way to achieve *mostly* the same thing, you could just have the kids use notion. Notion works a LOT like obsidian, they have very similar goals, but notion works purely in a browser, and is cloud based. This is something i strongly dislike for my own purposes ( cloud based proprietary software :( ), but totally makes sense for students in your classes. 

You could easily have them make notion accounts and notion can do everything they would ever want to do in their notes, and it will be immediately shareable. Collaboration works just like google docs. I believe it also has easy search of all your notes, though i'm unwilling to use notion myself in order to find out. If you do ask for kids to use notion be willing to let them use other stuff if they have other preferences please cause if I was made to use notion I would not be happy. 