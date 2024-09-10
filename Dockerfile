#disini kita akan menggunakan base image dari node.js versi ke 14
FROM node:14
#untuk menentukan direktori kerja kita menggunakan WORKDIR
WORKDIR /app
#untuk menyalin semua file ke direktori kerja kita menggunakan COPY
COPY . .
#untuk menentukan aplikasi akan berjalan di mana
ENV NODE_ENV=production DB_HOST=item-db
#disini kita akan menginstall semua package yang diperlukan dan membuild packege
RUN npm install --production --unsafe-perm && npm run build
#menentukan port yang akan digunakan
EXPOSE 8080
#untuk menjjalankan container
CMD ["npm","start"]