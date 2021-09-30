#!/bin/sh
sudo apt install curl ca-certificates gnupg -y
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add-
sudo apt update
sudo apt install postgresql -y
echo "sudo echo local all all md5 >>  /etc/postgresql/10/main/pg_hba.conf"
echo "sudo service postgresql start"
echo "sudo su - postgres"
echo "psql"
echo "alter role postgres with password 'postgres';"
echo "\q"

