# docker-compose file to create microsoft sql server container on linux platform or macOS

please following to step below before running docker-compose

1. setup .env file for MSSQL Server "SA" Password . (password="password")
2. chmod a+x up.sh & ./up.sh 
3. to reset docker volume and reset docker-compose images (incase you want to change "SA" password)

restore database backup file to container
-----------------------------------
1. sudo docker exec -t {container id} mkdir /var/opt/mssql/backup
2. sudo docker cp {backup file} {container id}:/var/opt/mssql/backup
3. use SSMS to restore database or cmd below

   `sudo docker exec -it {container id} /opt/mssql-tools/bin/sqlcmd -S localhost \
   -U SA -P '<YourNewStrong!Passw0rd>' \
   -Q 'RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/backup/wwi.bak"' \
   | tr -s ' ' | cut -d ' ' -f 1-2`
 

# .env
password=xxxx  no quote required.

delete volume
-----------------------------------
docker volume ls

docker volume rm <name_of_volume>

stop and delete docker images
-----------------------------------
docker-compose stop

docker-compose rm

delete all containers
-----------------------------------
docker rm $(docker ps -a -q) -f

Get SQL Operation Studio for macOS
-----------------------------------
https://docs.microsoft.com/en-us/sql/azure-data-studio/download?view=sql-server-2017
