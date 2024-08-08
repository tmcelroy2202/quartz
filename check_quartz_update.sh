#!/bin/bash

# Set the directory and hash file path  
DIR="/home/tommy/quartz/content"
HASH_FILE="/home/tommy/quartz/content_hash.txt"

# Generate a new hash of the content directory  
NEW_HASH=$(find "$DIR" -type f -exec md5sum {} + | sort | md5sum | awk '{ print $1 }')

# Check if the hash file exists and read the old hash  
if [ -f "$HASH_FILE" ]; then  
    OLD_HASH=$(cat "$HASH_FILE")
else  
    OLD_HASH=""
fi

# Compare the hashes  
if [ "$NEW_HASH" != "$OLD_HASH" ]; then  
    # If different, rebuild and update the hash file  
    echo "Changes detected, rebuilding Quartz..."
    /home/tommy/.nvm/versions/node/v22.6.0/bin/npx quartz build  
    /bin/cp -r /home/tommy/quartz/public/. /var/www/html/public/

    # Update the hash file  
    echo "$NEW_HASH" > "$HASH_FILE"
else  
    echo "No changes detected."
fi
