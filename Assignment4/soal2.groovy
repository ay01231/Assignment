class Barang {
    String id
    String nama
    Double harga
    Integer stok
}

def daftarBarang = []

try {
    print "Masukkan jumlah barang yang akan ditambahkan:"
    def jumlahBarang = Integer.parseInt(System.console().readLine())

    for (int i = 1; i <= jumlahBarang; i++) {
        def barang = new Barang()

        print "Masukkan ID barang ke-${i}:"
        barang.id = System.console().readLine()

        print "Masukkan nama barang ke-${i}:"
        barang.nama = System.console().readLine()

        def hargaValid = false
        while (!hargaValid) {
            try {
                print "Masukkan harga barang ke-${i}:"
                barang.harga = Double.parseDouble(System.console().readLine())
                hargaValid = true
            } catch (NumberFormatException e) {
                print "Masukkan harga harus berupa angka"
                System.exit(1)
            }
        }

        print "Masukkan stok barang ke-${i}:"
        barang.stok = Integer.parseInt(System.console().readLine())

        daftarBarang.add(barang)
    }

    println "\nDaftar Barang:"
    daftarBarang.each { barang ->
        println "ID: ${barang.id}, Nama: ${barang.nama}, Harga: ${barang.harga}, Stok: ${barang.stok}"
    }

    def totalNilaiInventaris = daftarBarang.collect { it.harga * it.stok }.sum()
    println()
    println "Total Nilai Inventaris Toko: ${totalNilaiInventaris}"

} catch (NumberFormatException e) {
    println "Masukkan jumlah barang harus berupa angka"
    System.exit(1)
}
