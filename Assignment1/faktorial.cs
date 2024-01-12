using System;

namespace Faktorial
{
    public class faktorial
    {
        public static void Main(string[] args)
        {
            int n;

            // Input
            Console.WriteLine("Masukkan bilangan: ");
            n = Convert.ToInt32(Console.ReadLine());

            // Hitung faktorial
            int factorial = 1;
            for (int i = 1; i <= n; i++)
            {
                factorial *= i;
            }

            // Tampilkan hasil
            Console.WriteLine("Faktorial dari {0} adalah {1}", n, factorial);
        }
    }
}
