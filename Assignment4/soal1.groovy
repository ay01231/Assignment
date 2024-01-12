def scanner = new Scanner(System.in)
def total = 0
 
print("Masukkan jumlah data: ")
def totalInput = scanner.nextInt()
 
try{
    for(int i=1; i<=totalInput; i++){
        print("Masukkan bilangan ke-${i}: ")
        def input = scanner.nextInt()
        total += input
    }
    def average = total/totalInput
    println("Rata-rata: $average.0")
}
catch (InputMismatchException e){
    println("Error: Masukkan harus berupa angka.")
}