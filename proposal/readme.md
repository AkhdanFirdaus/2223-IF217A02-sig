# Judul Aplikasi
...

## Deskripsi Masalah
- bahan baku makanan memiliki ketahanan atau masa kadaluarsa yang berbeda-beda
- manajer operasional kebingungan menentukan kapan saat untuk membeli bahan baku makanan
- jumlah pembelian bahan baku makanan sering tidak konsisten
- tidak semua pelaku bisnis food n beverage memiliki supplier tetap
- jarak antara lokasi penyedia food n beverage dan supplier tidak menentu

## Deskripsi Solusi
- mengimplementasikan metode economic order quantity untuk menentukan jumlah pembelian dan reorder point untuk menentukan  waktu pembelian
- menentukan lokasi supplier terdekat dari bahan baku makanan yang diperlukan

## Use Case
- Manajer Operasional menginputkan persediaan awal bahan baku makanan
- Manajer Operasional menginputkan resep makanan atau minuman
- sistem menghitung dan menampilkan jumlah dan waktu pembelian bahan baku makanan
- sistem menampilkan seluruh supplier yang tersedia di sekitar lokasi outlet food and beverage berdasarkan kebutuhan bahan baku makanan
- sistem memperhitungkan antara jarak, jumlah, dan ketahanan bahan baku makanan

## Struktur Data

### Outlet
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
nama | string | abc cafe
username | string | admin1
password | text | hash(password)
lokasi | point | lat, lon
kapasitas_penyimpanan | int | 40

### Supplier
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
nama | string | abc cafe
username | string | admin1
password | text | hash(password)
lokasi | point | lat, lon

### Bahan Baku
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
name | string | beras
satuan | string | kg
ketahanan | int | 4 (Mingguan)

### Menu
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
nama | string | rujak
harga | int | 20000
kategori| int | 0: makanan, 1: minuman

### Resep
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
UUID_bahan_baku | string | ooj73849r734mf34r3
UUID_menu | string | ooj73849r734mf34r3
qty | int | 2

### Penyimpanan
Nama Atribut | Tipe Data | Contoh
---|---|---
UUID | string | ooj73849r734mf34r3
UUID_bahan_baku | string | ooj73849r734mf34r3
UUID_outlet | string | ooj73849r734mf34r3
qty | int | 5

## Mockup UX
