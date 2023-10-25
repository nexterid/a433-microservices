#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 nexterid/item-app:v1

# login ke docker hub
docker login

# mengupload image ke docker hub
docker push nexterid/item-app:v1

# informasi ketika upload image ke docker hub selesai
echo "Image berhasil diunggah ke Docker Hub (atau GitHub Packages)."