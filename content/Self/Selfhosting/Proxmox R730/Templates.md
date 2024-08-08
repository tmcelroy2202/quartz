Each time I spin up a VM there are a few things I tend to do immediately, largely regardless of what the VM is for. 

I usually need docker, so i install docker, and I fix the permissions for docker so that non root users can use docker. I usually install helix so that I can have a nicer time editing text files. I usually configure ssh so I can have key-auth. 

These are things I have manually done each time I created a VM.

Not anymore though.

Now that I am switching to proxmox, I can just do all that one time, and then convert that one image to a template, so that all future images will be based on that image, and I do not have to worry about touching any of that ever again. 