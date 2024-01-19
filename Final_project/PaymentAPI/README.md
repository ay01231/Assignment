# Readme

## Membuat REST API untuk Online Debit/Credit Card

### Deskripsi

REST API ini menyediakan fungsionalitas untuk mengelola data pembayaran online, termasuk debit/kredit. API ini menggunakan ASP.NET Core Web API dan dapat diakses menggunakan Postman atau Swagger.

### Cara Penggunaan

1. Jalankan ASP.NET Core Web API pada folder PaymentApi dengan perintah dotnet run.
1. Gunakan Postman atau Swagger untuk melakukan test atau mendapatkan hasil Endpoint

### Berikut adalah endpoint untuk mengakses API:
  
| Metode | URL | Deskripsi |
|---|---|---|
| GET | https://localhost:5001/api/Payment | Menampilkan seluruh data Payment |
| POST | https://localhost:5001/api/Payment | Menambahkan data Payment baru |
| GET | https://localhost:5001/api/Payment/{id} | Menampilkan data Payment sesuai dengan id |
| PUT | https://localhost:5001/api/Payment/{id} | Mengedit data Payment sesuai dengan id |
| DELETE | https://localhost:5001/api/Payment/{id} | Menghapus data Payment sesuai dengan id |



### Penjelasan Endpoint 
- GET https://localhost:5001/api/Payment

Endpoint ini digunakan untuk menampilkan seluruh data Payment. 

Parameter yang dibutuhkan untuk endpoint ini adalah:

| Parameter | Tipe | Deskripsi |
|---|---|---|
| Tidak ada | Tidak ada | Tidak ada parameter yang dibutuhkan |


- POST https://localhost:5001/api/Payment

Endpoint ini digunakan untuk menambahkan data Payment baru. Data yang dibutuhkan untuk endpoint ini adalah:

| Parameter | Tipe | Deskripsi |
|---|---|---|
| paymentDetailId | string | ID detail pembayaran |
| cardOwnerName | string | Nama lengkap pemilik kartu |
| cardNumber | string | Nomor kartu kredit/debit |
| expirationDate | string | Tanggal kadaluarsa kartu |
| securityCode | string | Kode keamanan kartu |


- GET https://localhost:5001/api/Payment/{id}

Endpoint ini digunakan untuk menampilkan data Payment sesuai dengan id. Parameter yang dibutuhkan untuk endpoint ini adalah:

| Parameter |	Tipe | Deskripsi |
|---|---|---|
| id |	string |	ID detail pembayaran |

- PUT https://localhost:5001/api/Payment/{id}

Endpoint ini digunakan untuk mengedit data Payment sesuai dengan id. Data yang dibutuhkan untuk endpoint ini adalah:

| Parameter | Tipe | Deskripsi |
|---|---|---|
| id | string | ID detail pembayaran |
| paymentDetailId | string | ID detail pembayaran (opsional) |
| cardOwnerName | string | Nama lengkap pemilik kartu (opsional) |
| cardNumber | string | Nomor kartu kredit/debit (opsional) |
| expirationDate | string | Tanggal kadaluarsa kartu (opsional) |
| securityCode | string | Kode keamanan kartu (opsional) |


- DELETE https://localhost:5001/api/Payment/{id}

Endpoint ini digunakan untuk menghapus data Payment sesuai dengan id. Parameter yang dibutuhkan untuk endpoint ini adalah:

| Parameter |	Tipe |	Deskripsi |
|---|---|---|
| id |	string |	ID detail pembayaran |

### Tips

Untuk mempermudah penggunaan Postman, dapat menggunakan atau mengimpor file PaymentApi.postman_collection.json.
