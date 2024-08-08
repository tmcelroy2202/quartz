I bought some 1.2 TB 2.5" hard drives off an ebay seller, for 11$ each, which I thought was a pretty great price ( 2.5" drives get expensive, fast ), but when I received them, they would not show up in my OS.

I was perplexed.

I then saw that they were being "blocked" by my raid controller, even though it is in HBA mode ( perc h730 ).

My solution was to grab my dell r720, which has a perc h710, and flash the h710 to IT mode. IT mode makes it directly pass through the drives which solves this problem. Once I did this, the drives showed up in lsblk, but did not have correct sizes. 

Solution to that was 

```bash
sudo apt install sg3_utils 

sg_format -v --format --size=512 /dev/sdx
```

obviously replacing sdx with correct drive which you get from lsblk. In my case this was sdb sdc and sdd 

I just ran the command in three different terminals at once. I strongly recommend running them at the same time, because it will take so long. 

running this will take forever and that's normal. just let it run for a million years.

If you do not have a device with an IT mode capable controller laying around, fuck. uhhhhh maybe cry a little?

You could always buy an H330 and that would work fine. Or an H710P and then flash it to IT mode. You must be aware of what cables you have in your existing system though of course. 