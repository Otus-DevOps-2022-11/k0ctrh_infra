#!/usr/bin/env bash
sudo apt-get update
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv fhmul1vdo545fqtcdf32
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sleep 30
sudo apt-get update
sudo systemctl daemon-reload
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
