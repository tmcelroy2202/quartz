Immich is an alternative to google photos, which you selfhost.

It can be installed by following docs here https://immich.app/docs/overview/quick-start/ or like this:

1. make a directory for immich ( for me this is usually ~/immich )
2. grab the docker compose file:  
   ```bash 
wget -O docker-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml 
```
3. grab the .env file:
```bash
wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env
```
4. Fill in the env file with stuff you want ( my example below ):
```c
# You can find documentation for all the supported env variables at https://immich.app/docs/install/environment-variables

# The location where your uploaded files are stored
UPLOAD_LOCATION=/home/tommy/immich-app/immich-data
# The location where your database files are stored
DB_DATA_LOCATION=./postgres

# To set a timezone, uncomment the next line and change Etc/UTC to a TZ identifier from this list: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List
# TZ=Etc/UTC

# The Immich version to use. You can pin this to a specific version like "v1.71.0"
IMMICH_VERSION=release

# Connection secret for postgres. You should change it to a random password
DB_PASSWORD=mypass123 ( not real ) 

# The values below this line do not need to be changed
###################################################################################
DB_USERNAME=postgres
DB_DATABASE_NAME=immich
```
5. run ```docker compose up -d```
6. enjoy life

alternatively, this can be automated through this script:
```
curl -o- https://raw.githubusercontent.com/immich-app/immich/main/install.sh | bash
```

which does just about the same thing, and hosts the app on port 2283 


