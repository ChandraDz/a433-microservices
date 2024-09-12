#!/bin/bash
#bin bash untuk mengeksekusi script
# kita akan membuild dengan nama image item-app dan tag v1
docker build -t item-app:v1 .
# kita akan melihat semua image yang ada
docker images
# kita akan mengubah nama dari image agar sesuai dengan format
docker tag item-app:v1 zeandz/item-app:v1
# kita akan login ke docker hub sebelum login ke docker hub pastikan kalian export password kalian di terminal contoh : export PASSWORD=password_kalian 
echo $PASSWORD | docker login -u zeandz --password-stdin
# kita akan push image ke docker hub
docker push zeandz/item-app:v1   