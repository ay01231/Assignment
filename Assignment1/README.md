# Assignment 1

## balikAngka.cs

### Deskripsi

Program C# sederhana ini membalik urutan digit dari bilangan bulat yang diberikan.

### Penggunaan

1. Kompilasikan kode menggunakan kompiler C#.
2. Jalankan program yang dapat dieksekusi dari baris perintah.
3. Masukkan bilangan bulat saat diminta.
4. Program akan menampilkan bilangan yang dibalik.
   
### Contoh
```
Masukkan bilangan: 12345
Bilangan yang dibalik: 54321
```

### Pemecahan Kode

#### Komponen Utama:

1. Namespace System: Menyediakan fungsionalitas input/output penting.
2. Kelas balikAngka: Berisi logika program utama.
3. Metode Main: Titik masuk program.
4. Kelas Console: Digunakan untuk berinteraksi dengan pengguna melalui konsol.

#### Langkah-langkah:

1. Meminta masukan: Program meminta pengguna untuk memasukkan bilangan menggunakan `Console.Write`.
2. Membaca masukan: Bilangan yang dimasukkan dibaca menggunakan `Console.ReadLine` dan diparsing menjadi bilangan bulat menggunakan `int.Parse`.
3. Menginisialisasi variabel:
   - `i`: Menyimpan bilangan asli.
   - `j`: Menyimpan digit individu selama proses pembalikan.
   - `reverse`: Menyimpan bilangan yang dibalik, awalnya disetel ke 0.
4. Membalik urutan digit:
   - Sebuah loop while diulang selama `i` tidak sama dengan 0.
   - Pada setiap iterasi:
     - `j` ditetapkan ke digit terakhir dari `i` menggunakan operator modulo (%).
     - `reverse` diperbarui dengan mengalikannya dengan 10 dan menambahkan `j`.
     - `i` dibagi dengan 10 untuk menghapus digit terakhir.
     - Menampilkan bilangan yang dibalik: Nilai akhir dari reverse ditampilkan menggunakan `Console.Write`.

## convertangka

## convertangka

### Deskripsi

Program C# sederhana ini mengubah angka numerik menjadi representasi kata yang sesuai dalam bahasa Indonesia (misalnya, 123 menjadi "satu dua tiga").

### Penggunaan

1. Kompilasikan kode menggunakan kompiler C#.
1. Jalankan program yang dapat dieksekusi dari baris perintah.
1. Masukkan bilangan saat diminta.
1. Program akan menampilkan bilangan yang dieja dalam kata.

### Contoh

```
Masukkan bilangan: 12345
Hasil: satu dua tiga empat lima
```

### Pemecahan Kode

#### Komponen Utama:

1. Namespace `System`: Menyediakan fungsionalitas input/output penting.
1. Kelas `ConvertAngka`: Berisi logika program utama.
1. Metode `Main`: Titik masuk program.
1. Kelas `Console`: Digunakan untuk berinteraksi dengan pengguna melalui konsol.
1. Metode `ConvertNumberToString`: Mengubah string numerik menjadi representasi kata yang sesuai.

#### Langkah-langkah:

1. Meminta masukan: Program meminta pengguna untuk memasukkan bilangan menggunakan `Console.Write`.
1. Membaca masukan: Bilangan yang dimasukkan dibaca menggunakan `Console.ReadLine`.
1. Memanggil metode konversi: Metode `ConvertNumberToString` dipanggil, dengan string masukan sebagai argumen.
1. Mengkonversi setiap digit:
    - Metode `ConvertNumberToString` mengulangi setiap karakter dalam string masukan.
    - Jika karakter adalah digit, ia mengambil representasi kata yang sesuai dari array `digitStrings`.
    - Representasi kata ditampilkan menggunakan `Console.Write`.

## Faktorial

### Deskripsi

Program C# sederhana ini menghitung faktorial dari bilangan bulat yang diberikan.

### Penggunaan

1. Kompilasikan kode menggunakan kompiler C#.
1. Jalankan program yang dapat dieksekusi dari baris perintah.
1. Masukkan bilangan bulat saat diminta.
1. Program akan menampilkan faktorial dari bilangan tersebut.

### Contoh

```
Masukkan bilangan: 5
Faktorial dari 5 adalah 120
```

### Pemecahan Kode

#### Komponen Utama:

1. Namespace `System`: Menyediakan fungsionalitas input/output penting.
1. Namespace `Faktorial`: Berisi logika program utama.
1. Kelas `faktorial`: Berisi logika program utama.
1. Metode `Main`: Titik masuk program.
1. Kelas `Console`: Digunakan untuk berinteraksi dengan pengguna melalui konsol.

#### Langkah-langkah:

1. Meminta masukan: Program meminta pengguna untuk memasukkan bilangan menggunakan `Console.WriteLine`.
1. Membaca masukan: Bilangan yang dimasukkan dibaca menggunakan `Convert.ToInt32(Console.ReadLine())`.
1. Menghitung faktorial:
    - Variabel `factorial` diinisialisasi ke 1.
    - Sebuah loop for diulang dari 1 hingga bilangan yang dimasukkan.
    - Pada setiap iterasi, factorial dikalikan dengan nilai iterasi saat ini.
1. Menampilkan hasil: Nilai factorial ditampilkan menggunakan `Console.WriteLine`.

## inputAngka


## inputAngka

### Deskripsi

Program C# sederhana ini menampilkan pola angka berbentuk piramida terbalik.

### Penggunaan

1. Kompilasikan kode menggunakan kompiler C#.
1. Jalankan program yang dapat dieksekusi dari baris perintah.
1. Masukkan nilai rentang angka saat diminta.
1. Program akan menampilkan pola piramida terbalik berdasarkan rentang tersebut.

### Contoh

```
Masukkan rentang angka: 5
    1
   121
  12321
 1234321
123454321
```

### Pemecahan Kode

#### Komponen Utama:

1. Namespace `System`: Menyediakan fungsionalitas input/output penting.
1. Kelas `inputAngka`: Berisi logika program utama.
1. Metode `Main`: Titik masuk program.
1. Kelas `Console`: Digunakan untuk berinteraksi dengan pengguna melalui konsol.

#### Langkah-langkah:

1. Meminta masukan: Program meminta pengguna untuk memasukkan rentang angka menggunakan `Console.Write`.
1. Membaca masukan: Rentang angka yang dimasukkan dibaca menggunakan `int.Parse(Console.ReadLine())`.
1. Membuat pola piramida terbalik:
    - Menggunakan loop bersarang untuk mengiterasi dan mencetak angka dalam pola piramida terbalik.
    - Loop pertama mengontrol baris pola.
    - Loop kedua mencetak spasi di awal setiap baris untuk membentuk bentuk piramida.
    - Loop ketiga mencetak angka dari 1 hingga i (di mana i adalah nomor baris) untuk membentuk bagian ascending dari piramida.
    - Loop keempat mencetak angka dari i-1 hingga 1 untuk membentuk bagian descending dari piramida.
1. Menampilkan hasil: Pola piramida terbalik ditampilkan di konsol menggunakan `Console.Write`.

## segitigaAlfabet

### Deskripsi

Program C# sederhana ini menampilkan pola alfabet berbentuk segitiga.

### Penggunaan

1. Kompilasikan kode menggunakan kompiler C#.
1. Jalankan program yang dapat dieksekusi dari baris perintah.
1. Program akan secara otomatis menampilkan pola segitiga alfabet.

### Contoh

```
     A
    ABA
   ABCBA
  ABCDCBA
 ABCDEDCBA
```

### Pemecahan Kode

#### Komponen Utama:

1. Namespace `System`: Menyediakan fungsionalitas input/output penting.
1. Kelas `segitigaAlfabet`: Berisi logika program utama.
1. Metode `Main`: Titik masuk program.
1. Kelas `Console`: Digunakan untuk berinteraksi dengan pengguna melalui konsol.

#### Langkah-langkah:

1. Inisialisasi karakter awal: Variabel `ch` diinisialisasi dengan karakter 'A'.
1. Membuat pola segitiga:
    - Menggunakan loop bersarang untuk mengiterasi dan mencetak karakter alfabet dalam pola segitiga.
    - Loop pertama mengontrol baris pola.
    - Loop kedua mencetak spasi di awal setiap baris untuk membentuk bentuk segitiga.
    - Loop ketiga mencetak karakter alfabet dari 'A' hingga 'i' (di mana i adalah nomor baris), meningkatkan nilai `ch` pada setiap iterasi.
    - Loop keempat mencetak karakter alfabet dari 'i-1' hingga 'A', menurunkan nilai `ch` pada setiap iterasi.
    - Karakter `ch` diatur ulang ke 'A' di akhir setiap baris untuk memulai kembali dari awal alfabet pada baris berikutnya.
1. Menampilkan hasil: Pola segitiga alfabet ditampilkan di konsol menggunakan `Console.Write`.