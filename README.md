# this is a demo docker-compose file to create docker for microsoft sql server on linux platform or macOS

please following to step below before running docker-compose

1. setup .env file for MSSQL Server "SA" Password
2. chmod a+x up.sh & ./up.sh 
3. to reset docker volume and reset docker-compose images (incase you want to change "SA" password

delete volume
-----------------------------------
docker volume ls

docker volume rm <name_of_volume>

stop and delete docker images
-----------------------------------
docker-compose stop

docker-compose rm

Get Azure Data Studio for macOS
-----------------------------------
https://docs.microsoft.com/en-us/sql/azure-data-studio/download?view=sql-server-2017
