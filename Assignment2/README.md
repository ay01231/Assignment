# Bank

## Deskripsi

Basis data ini mengelola informasi penjualan dan pemesanan untuk perusahaan yang menjual berbagai produk, termasuk mobil, motor, elektronik, furnitur, mainan, pakaian, dan perhiasan. Basis data ini mencakup tabel untuk lini produk, kantor, karyawan, pelanggan, pembayaran, pesanan, dan detail pesanan.

Penggunaan:

1. Import basis data 'bank.sql' ke dalam sistem manajemen database MySQL.
1. Gunakan perintah SQL untuk berinteraksi dengan database dan mengambil informasi yang dibutuhkan.


## Struktur Basis Data:

### Tabel:

- productlines
- offices
- employees
- customers
- payments
- orders
- products
- orderdetails

### Relasi Antar Tabel:

- Relasi one-to-many antara productlines dan products.
- Relasi one-to-many antara offices dan employees.
- Relasi one-to-many antara employees dan employees (untuk laporan ke atasan).
- Relasi one-to-many antara employees dan customers.
- Relasi one-to-many antara customers dan payments.
- Relasi one-to-many antara customers dan orders.
- Relasi one-to-many antara orders dan orderdetails.
- Relasi many-to-one antara products dan orders (melalui orderdetails).
