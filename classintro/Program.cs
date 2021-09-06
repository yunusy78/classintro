using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace classintro
{
    class Program
    {
        static void Main(string[] args)
        {
            Kurs kurs1 = new Kurs();
            kurs1.KursAdi = "C#";
            kurs1.Egitmen = "EnginDemirog";
            kurs1.izlenmeOrani = 68;

            Kurs kurs2 = new Kurs();
            kurs2.KursAdi = "Java";
            kurs2.Egitmen = "EnginDemirog";
            kurs2.izlenmeOrani = 60;

            Kurs kurs3 = new Kurs();
            kurs3.KursAdi = "Pyton";
            kurs3.Egitmen = "EnginDemirog";
            kurs3.izlenmeOrani = 55;

            Kurs kurs4 = new Kurs();
            kurs4.KursAdi = "C++";
            kurs4.Egitmen = "EnginDemirog";
            kurs4.izlenmeOrani = 75; 

            Console.WriteLine(kurs1.KursAdi + " " + kurs1.Egitmen);

            Kurs[] kurslar = new Kurs[] { kurs1, kurs2, kurs3, kurs4 };

            foreach (var kurs in kurslar)

            {
                Console.WriteLine(kurs.KursAdi+  " "+ kurs.Egitmen+ " "+ kurs.izlenmeOrani);
            }

            Console.WriteLine("Sayfasonu--footer");
            Console.ReadKey();

        }
    }
    class Kurs
    {
        public string KursAdi { get; set; }
        public string Egitmen { get; set; }
        public int izlenmeOrani { get; set; }
        
    

    }
    

}




