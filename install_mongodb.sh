#!/usr/bin/env bash
sudo apt-get update
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 60
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl stop mongod
sudo mkdir -p /data/db
sudo chown -R $USER /data/db 
sudo chmod -R go+w /data/db
sleep 60
sudo apt-get update
sudo systemctl daemon-reload
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl restart mongod
