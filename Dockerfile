# download image base node.js versi 14
FROM node:14-alpine

# working direktory di /app
WORKDIR /app

# copy seluruh sourcode ke working direktory
COPY . /app

# seting variable ke versi produksi dan koneksi ke item-db
ENV NODE_ENV=production
ENV DB_HOST=item-db

# instal dependencies untuk produksi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# ekspos port 8080 yang digunakan oleh aplikasi
EXPOSE 8080

# saat container dijalankan, jalankan server dengan perintah npm start
CMD ["npm", "start"]