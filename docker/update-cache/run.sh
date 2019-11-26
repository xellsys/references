#!/bin/bash


echo "we build the base cache with version 0.1 and tag it base-cache:latest"
docker build -f base-cache-0.1.dockerfile -t base-cache:latest .


echo "we build my-image:0.1"
docker build -f my-image.dockerfile -t my-image:0.1 .


echo "we run my-image:0.1"
docker run my-image:0.1


echo "we build a new base-cache:latest with version 0.2"
docker build -f base-cache-0.2.dockerfile -t base-cache:latest .


echo "we build my-image:0.2"
docker build -f my-image.dockerfile -t my-image:0.2 .


echo "we run my-image:0.2"
docker run my-image:0.2


echo "we run my-image:0.1 again"
docker run my-image:0.1

