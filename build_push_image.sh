#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t shipping-service .

# Authenticate with GitHub Package Registry 
echo $CR_PAT | docker login docker.pkg.github.com -u nexterid --password-stdin

# Mengubah nama image agar sesuai dengan format Docker Hub /github pakage
docker tag shipping-service docker.pkg.github.com/nexterid/a433-microservices/shipping-service:latest

# mengupload image ke docker hub/github package
docker push docker.pkg.github.com/nexterid/a433-microservices/shipping-service:latest

# informasi ketika upload image ke docker hub/github package selesai
echo "Image berhasil diunggah ke Docker Hub (atau GitHub Packages)."