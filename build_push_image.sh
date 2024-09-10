#!/bin/bash
#bin bash untuk mengeksekusi script
# kita akan membuild dengan nama image item-app dan tag v1
docker build -t item-app:v1 .
# kita akan melihat semua image yang ada
docker images
# kita akan mengubah nama dari image agar sesuai dengan format
docker tag item-app:v1 zeandz/item-app:v1
# kita akan push image ke docker hub
docker push zeandz/item-app:v1 