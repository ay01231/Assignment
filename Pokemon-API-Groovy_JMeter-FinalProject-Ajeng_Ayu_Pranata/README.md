# Pokemon API

Program ini menggunakan JMeter untuk mencari informasi tentang pokemon bernama Pikachu dan evolusinya dari API PokeAPI.

## Cara Kerja

1. Mencari Pikachu:

- program ini mengirim permintaan GET berulang ke endpoint `/pokemon-species` API PokeAPI.
- Setiap respons berisi 20 Pokemon.
- Program ini memeriksa setiap Pokemon untuk menemukan Pikachu.
- Jika Pikachu tidak ditemukan dalam 20 Pokemon pertama, program meminta 20 Pokemon berikutnya, dan seterusnya.
- Pencarian berlanjut hingga Pikachu ditemukan atau semua Pokemon telah diperiksa.

2. Mengambil Detail Evolusi:

- Setelah menemukan Pikachu, program mengambil detail evolusinya dari endpoint `pokemon-species/{id}`.
- Endpoint ini memberikan informasi tentang evolusi Pikachu, termasuk nama dan URL untuk rantai evolusinya.

3. Mengambil Rantai Evolusi:

- Program kemudian mengambil rantai evolusi Pikachu dari URL yang diperoleh pada langkah sebelumnya.
- Rantai evolusi menunjukkan semua bentuk evolusi Pikachu, termasuk pra-evolusi dan evolusi berikutnya.


## If Controller

If Controller digunakan untuk mengontrol alur eksekusi berdasarkan kondisi tertentu.
Dalam program ini, If Controller digunakan untuk:
- Memeriksa apakah Pikachu telah ditemukan sebelum mengambil detail evolusinya.
- Memeriksa apakah URL evolusi tersedia sebelum mengambil rantai evolusi.

## While Controller

- While Controller digunakan untuk mengulangi sekelompok elemen sampai kondisi tertentu terpenuhi.
- Dalam program ini, While Controller digunakan untuk mengulangi permintaan GET ke endpoint `/pokemon-species` sampai Pikachu ditemukan.


## Catatan
Endpoint API PokeAPI yang digunakan dalam program ini:
- `/pokemon-species`: Mengambil daftar spesies Pokemon.
- `/pokemon-species/{id}`: Mengambil detail spesies Pokemon tertentu.
