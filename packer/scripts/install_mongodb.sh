#!/bin/sh
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add - # После пайпа sudo не убрано - а то не отработает добавление ключа
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update
sleep 30
apt install -y mongodb-org
sleep 30
systemctl daemon-reload
systemctl start mongod
systemctl enable mongod
