using System;

public class SegitigaAngka
{
    public static void Main(string[] args)
    {
        int jumlahBaris = 5;

        // Dapatkan input jumlah baris dari user
        Console.Write("Masukkan jumlah baris: ");
        try
        {
            jumlahBaris = int.Parse(Console.ReadLine());
        }
        catch (FormatException)
        {
            Console.WriteLine("Input invalid. Harap masukkan angka.");
            return;
        }

        // Print segitiga angka
        for (int i = 1; i <= jumlahBaris; i++)
        {
            for (int j = 0; j < jumlahBaris; j++)
            {
                // Print angka
                Console.Write(i + j);
            }

            Console.WriteLine();
        }
    }
}
