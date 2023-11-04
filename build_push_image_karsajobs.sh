#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t karsajobs .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs nexterid/karsajobs:latest

# login ke docker hub
docker login

# mengupload image ke docker hub
docker push docker.pkg.github.com/nexterid/a433-microservices/karsajobs:latest

# informasi ketika upload image ke docker hub selesai
echo "Image berhasil diunggah ke Docker Hub (atau GitHub Packages)."