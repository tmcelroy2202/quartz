it gets its own VM.

To run it I just ran 

```bash
docker pull vaultwarden/server:latest

docker run -d --name vaultwarden -v /vw-data/:/data/ --restart unless-stopped -p 80:80 vaultwarden/server:latest
```

It was then accessible at port 80.

I needed https in order to use it with firefox though, so I setup cloudflared so that it would be hosted on my domain

![[Pasted image 20240808122501.png]]

I then just logged in, hit import, and used a encrypted json of my previous vault. everything imported smoothly and im happy. 