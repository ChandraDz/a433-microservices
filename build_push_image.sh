#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 zeandz/item-app:v1
docker push zeandz/item-app:v1 