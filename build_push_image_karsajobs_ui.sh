#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t karsajobs-ui .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs-ui nexterid/karsajobs-ui:latest

# login ke docker hub
docker login

# mengupload image ke docker hub
docker push docker.pkg.github.com/nexterid/a433-microservices/karsajobs-ui:latest

# informasi ketika upload image ke docker hub selesai
echo "Image berhasil diunggah ke Docker Hub (atau GitHub Packages)."