# k0ctrh_infra
k0ctrh Infra repository

bastion_IP = 158.160.53.65
someinternalhost_IP = 10.28.0.19
testapp_IP = 158.160.51.13
testapp_port = 9292

ssh -J user@bastion_ip user@someinternalhost_ip

#!/bin/bash
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --core-fraction=20  \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata-from-file user-data=./user-data.yaml  \
  --metadata serial-port-enable=1 \

В рамках ДЗ packer-base утилитой packer сделан образ для установки VM reddit-app
