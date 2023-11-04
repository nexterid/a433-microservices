#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t karsajobs .

# Authenticate with GitHub Package Registry 
echo $CR_PAT | docker login docker.pkg.github.com -u nexterid --password-stdin

# Mengubah nama image agar sesuai dengan format Docker Hub /github pakage
docker tag karsajobs-ui docker.pkg.github.com/nexterid/a433-microservices/karsajobs:latest

# mengupload image ke docker hub/github package
docker push docker.pkg.github.com/nexterid/a433-microservices/karsajobs:latest

# informasi ketika upload image ke docker hub/github package selesai
echo "Image berhasil diunggah ke Docker Hub (atau GitHub Packages)."