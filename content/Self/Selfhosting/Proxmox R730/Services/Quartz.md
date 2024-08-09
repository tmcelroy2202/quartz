This hosts my notes. Initial setup is documented here [[3 Quartz]]

That setup had some problems though, so in this page I document solutions to the following:
* npx quartz build --serve is NOT a secure way to host things 
* --serve does not properly interpret syncthing syncing things over sometimes. It just wont rebuild the stuff.

My solution to this:
* npx quartz build generates a public directory of html files 
* I use nginx to serve up that public directory 
* I use a systemd service to generate md5 hashes for my content directory once every 2 minutes, and if the hash changes, I rebuild quartz. This means any change to the content directory will successfully force a quartz rebuild. 

here is /etc/nginx/nginx.conf:

```nginx.conf
events {
    worker_connections 1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;
    keepalive_timeout  65;

    server {
        listen 8079;
        # server_name example.com;

        root /var/www/html/public;
        index index.html;

        location / {
            try_files $uri $uri.html $uri/ =404;
        }

        error_page 404 /404.html;
        location = /404.html {
            internal;
        }
    }
}

```

here is /home/tommy/check_quartz_update.sh:
```sh
#!/bin/bash

DIR="/home/tommy/quartz/content"
HASH_FILE="/home/tommy/quartz/content_hash.txt"

# Generate a new hash of the content directory  
NEW_HASH=$(find "$DIR" -type f -exec md5sum {} + | sort | md5sum | awk '{ print $1 }')

if [ -f "$HASH_FILE" ]; then  
    OLD_HASH=$(cat "$HASH_FILE")
else  
    OLD_HASH=""
fi

if [ "$NEW_HASH" != "$OLD_HASH" ]; then  
    echo "Changes detected, rebuilding Quartz..."
    /home/tommy/.nvm/versions/node/v22.6.0/bin/npx quartz build  
    /bin/cp -r /home/tommy/quartz/public/. /var/www/html/public/

    echo "$NEW_HASH" > "$HASH_FILE"
else  
    echo "No changes detected."
fi

```

here is /etc/systemd/system/check_quartz_update.service:
```json
[Unit]
Description=Check for Changes in Quartz Content and Rebuild

[Service]
Type=oneshot  
ExecStart=/home/tommy/quartz/check_quartz_update.sh
WorkingDirectory=/home/tommy/quartz
```

here is /etc/systemd/system/check_quartz_update.timer:
```json
[Unit]
Description=Run Quartz Update Check Every Other Minute

[Timer]
OnBootSec=2min  
OnUnitActiveSec=2min  
Unit=check_quartz_update.service

[Install]
WantedBy=timers.target
```

I also tried using a path service to watch for pathmodified /home/tommy/quartz/content but that did not detect changes some of the time, so I went with a more foolproof solution ( generating hashes every 2 minutes ) . 