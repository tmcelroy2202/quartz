Kasm Workspaces is really really cool.

It is not at all meant for what im using it for though.
There are probably better solutions for what im doing, but i have had trouble finding them. Kasm has done a lot of work on the underlying protocol for VNC that makes Kasm way better than most solutions that are out there. I could set up my own KasmVNC server, but that would not support audio unless I was an enterprise customer. 

I am doing a number of hacky workarounds to get kasm to work how i want.

Kasm by default does not allow you to do anything as root, so i have to add a little snippet to the docker exec config to fix that 

```json
{
 "first_launch":{
      "user":"root",
      "cmd":"bash -c 'apt-get update && apt-get install -y sudo && echo \"kasm-user  ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers'"
  }
}
```

Kasm by default also does not allow anything to persist after a session - all your changes are completely forgotten.

To get around this I had to make a [persistent profile](https://www.kasmweb.com/docs/latest/guide/persistent_data/persistent_profiles.html#persistent-profiles) for myself. It works really well and I kinda love it. It means my system is so much more portable and its kinda rad. The disadvantage to this though is that it only persists my home folder. This means that if I sudo apt install something, and it installs it system wide, then that will still be wiped when I restart the workspace. To get around this for right now i am just building all the programs I install from source. Whatever programs i cant install from source i am using a script in my bashrc to install automatically after i open a terminal. this script is TRULY TERRIBLE. I could not find a way to just run a program on startup of the kasm workspace though, which is really really weird. here is the script im using: 

so in the bashrc i have:
```bash
if ! which tilix > /dev/null; then
    sudo nohup ~/.generator.sh &
fi
clear
```

and then here is .generator.sh
```bash
#!/bin/sh

echo "starting"
sleep 5

if ! which tilix > /dev/null; then
    sudo /home/kasm-user/Desktop/helixinstall.sh
fi
```
and then here is helixinstall.sh
```bash
# sudo apt-get install firefox-geckodriver -y
sudo apt-get install tilix -y
sudo apt-get install btop -y
# sudo apt install openjdk-17-jdk -y
# sudo apt install screenfetch -y
# sudo apt install xfce4-screenshooter -y
# sudo apt install xfce4-taskmanager -y 
sudo apt-get update
# Downloads/activitywatch/./aw-qt

```

the literal only purpose of generator.sh is that it sleeps 5 seconds.
i really should just fix the whole thing but it *works* even if it is DUMB that i have 2 scripts here.
let me be clear: this is stupid and i should just have this built into the bashrc or it should be one script executed from the bashrc. there is no reason for there to be another jump in the middle.

What this script does though is if i do not have tilix installed when i open a terminal, it runs sudo apt-get install to install all of the programs that I need, and it suppresses the output of sudo apt-get install by running it with nohup. The 5 second sleep is necessary because without it the container breaks for whatever reason. Like you just cant start it at all.

Kasm also automatically kills a session after an hour of it being inactive, which meant i had to pause instead of killing that session. Pausing though often breaks, and i dont love that as a solution. I also was looking for how i did that in their documentation and i could not find it within ~2 minutes, so I do not know how i will do that again in the future. 

My setup within kasm ubuntu though is pretty nice. I have Firefox fully themed and setup to always be dark mode and never require a mouse. A grand majority of my workflow is mouseless when im on kasm and that is really quite nice. 