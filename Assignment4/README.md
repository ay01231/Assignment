# README.md untuk Kode Rata-Rata

## Deskripsi

Kode ini menghitung rata-rata dari sejumlah bilangan bulat yang dimasukkan oleh user.

Penggunaan:

1. Jalankan kode dengan menggunakan Java Virtual Machine (JVM).
2. Masukkan jumlah data yang akan dimasukkan.
3. Masukkan setiap bilangan bulat satu per satu.
4. Hasil rata-rata akan ditampilkan di layar.

## Struktur Kode:

Kode ini terdiri dari dua bagian utama:

1. Bagian pertama meminta pengguna untuk memasukkan jumlah data.
2. Bagian kedua menghitung rata-rata dari data yang dimasukkan.
3. Penjelasan Kode:

- Baris 1 dan 2 mendeklarasikan variabel scanner dan total.
- Baris 3 meminta pengguna untuk memasukkan jumlah data.
- Baris 4 menyimpan jumlah data yang dimasukkan ke dalam variabel totalInput.
- Baris 5 hingga 10 menghitung rata-rata dari data yang dimasukkan.
- Baris 11 menampilkan hasil rata-rata.


- Kode ini menggunakan kelas Scanner untuk membaca input dari user.
- Kode ini menggunakan pengecualian InputMismatchException untuk menangani kesalahan input.

### Contoh Output:
```
Masukkan jumlah data: 5
Masukkan bilangan ke-1: 1
Masukkan bilangan ke-2: 2
Masukkan bilangan ke-3: 3
Masukkan bilangan ke-4: 4
Masukkan bilangan ke-5: 5
Rata-rata: 3.0
```



# README.md untuk Kode Daftar Barang

## Deskripsi:

Kode ini digunakan untuk mengelola daftar barang di suatu toko.

Penggunaan:

- Jalankan kode dengan menggunakan Java Virtual Machine (JVM).
- Masukkan jumlah barang yang akan ditambahkan.
- Masukkan informasi untuk setiap barang, termasuk ID, nama, harga, dan stok.
- Hasil akan ditampilkan di layar, termasuk daftar barang dan total nilai inventaris toko.

Struktur Kode:

Kode ini terdiri dari tiga bagian utama:

1. Bagian pertama mendeklarasikan kelas Barang untuk menyimpan informasi tentang setiap barang.
1. Bagian kedua meminta pengguna untuk memasukkan informasi tentang barang-barang.
1. Bagian ketiga menampilkan hasil.


Penjelasan Kode:

- Baris 1 hingga 4 mendeklarasikan kelas Barang.
- Baris 5 mendeklarasikan variabel daftarBarang untuk menyimpan daftar barang.
- Baris 7 hingga 27 meminta pengguna untuk memasukkan informasi tentang barang-barang.
- Baris 29 hingga 32 menampilkan daftar barang.
- Baris 34 hingga 37 menghitung total nilai inventaris toko.


Kode ini menggunakan kelas Scanner untuk membaca input dari pengguna.
Kode ini menggunakan pengecualian NumberFormatException untuk menangani kesalahan input.

### Contoh Output:
```
Masukkan jumlah barang yang akan ditambahkan: 3

Masukkan ID barang ke-1: 1234
Masukkan nama barang ke-1: Buku
Masukkan harga barang ke-1: 100000
Masukkan stok barang ke-1: 10

Masukkan ID barang ke-2: 5678
Masukkan nama barang ke-2: Pensil
Masukkan harga barang ke-2: 5000
Masukkan stok barang ke-2: 20

Masukkan ID barang ke-3: 9012
Masukkan nama barang ke-3: Pulpen
Masukkan harga barang ke-3: 15000
Masukkan stok barang ke-3: 30


Daftar Barang:
ID: 1234, Nama: Buku, Harga: 100000, Stok: 10
ID: 5678, Nama: Pensil, Harga: 5000, Stok: 20
ID: 9012, Nama: Pulpen, Harga: 15000, Stok: 30

Total Nilai Inventaris Toko: 450000
```