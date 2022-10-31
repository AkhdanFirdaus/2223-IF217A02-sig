# Judul Aplikasi
Penentuan Pemeliharaan Jalan menggunakan Indeks Kondisi Perkerasan Jalan di Wilayah UPTD 3 Jawa Barat
...

## Deskripsi Masalah
- Kondisi jalan di beberapa wilayah Jawa Barat rentan mengalami kerusakan (umur jalan, bencana alam)
- Pemeliharaan dan perbaikan jalan terhambat karena kerusakan jalan yang tidak terlaporkan
- Sering terlihat perbaikan jalan pada ruas jalan yang tidak memerlukan perbaikan (salah sasaran)
- Sering terjadi pemeliharaan dan perbaikan jalan pada waktu yang tidak tepat (jalan ramai)

## Deskripsi Solusi
- Mengklasifikasikan ruas jalan yang rentan mengalami bencana alam
- Membuat form pelaporan kerusakan jalan
- Penentuan keputusan pemeliharaan dan perbaikan jalan menggunakan indeks kondisi perkerasan jalan
- Penentuan prioritas pemeliharaan dan perbaikan jalan

## User
- Masyarakat
- Petugas Lapangan
- Admin

## Use Case
- Masyarakat melaporkan kerusakan jalan dan harus memfoto kondisi jalannya
- Petugas lapangan menyurvei tempat dan melengkapi data laporan (koordinat, ruas jalan, dll)
- Seluruh user dapat melihat sebaran kondisi dan kerusakan jalan

## Struktur Data

### User
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
foto | string | fotoProfil.png
nama | string | Akhdan
email | string | akhdan@email.com
password | text | hash(password)
role | int | 1:admin

### Wilayah
uuid | string | ooj73849r734mf34r3
---|---|---
wilayahUid | string | ooj73849r734mf34r3 [Opsional]
nama | string | ooj73849r734mf34r3
🌏 area | polygon | [[106.03794 -6.39284693], [106.03794 -6.39284693], [106.03794 -6.39284693]]
luas | int | 427.342
level | int | ... 3: kab/kota ...

### Ruas Jalan
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
nama | string | abc cafe
wilayahUid | string | ooj73849r734mf34r3 (UID Wilayah)
jenisPermukanUid | string | ooj73849r734mf34r3 (UID Jenis Permukaan)
🌏 koordinat | point | [0, 0]
🌏 ruas | line | [[0, 0], [1, 1]]
ketinggian | double | 976.971
panjang | int | 10000
lebarRata | double | 6
luas | double | 17,624
asalKm | string | ooj73849r734mf34r3 (UUID ruas jalan lain)
kmAwal | int | 36670
kmAkhir | int | 39550

### Jenis Permukaan
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
nama | string | Hotmix

### Laporan
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
pelaporUid | string | ooj73849r734mf34r3 (UID Masyarakat)
deskripsi | text | lorem ipsum dolor sit amet
foto | string | path_image.png
lokasi | string | Jl. A.H. Nasution
🌏 koordinat | point | [196.123, 812.123]
tanggal | datetime | 2022-10-30 07:30:00

### Survey
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
petugasUid | string | ooj73849r734mf34r3 (UID Petugas)
laporanUid | string | ooj73849r734mf34r3 (UID Laporan)
ruas | string | ooj73849r734mf34r3 (UID Ruas Jalan)
tanggal | datetime | 2022-10-30 07:30:00

### Jenis Kerusakan
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
nama | string | Retak sudut

### Kondisi Ruas Jalan
Nama Atribut | Tipe Data | Contoh
---|---|---
uuid | string | ooj73849r734mf34r3
surveyUid | string | ooj73849r734mf34r3 (UID Jenis Kerusakan)
jenisKerusakanUid | string | ooj73849r734mf34r3 (UID Jenis Kerusakan)
keparahan | string | R
jumlahPanel | int | 2
densitas | int | 20 (Percent)
nilaiPengurang | double | 6.55

## Mockup UX
![Home](mockup-home.png)
![Wilayah](mockup-wilayah.png)
![Laporan](mockup-wilayah.png)
