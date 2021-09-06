using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Metotlar
{
    class Program
    {
        static void Main(string[] args)
        {
            string urunAdi = "Elma";
            double fiyati = 15;
            string aciklama = "Amasya elmasi";

            string[] meyveler = new string[] { };

            Urun urun1 = new Urun();
            urun1.Adi = "Elma";
            urun1.Fiyati = 15;
            urun1.Aciklma = "amasya Elmasi";

            Urun urun2 = new Urun();
            urun2.Adi = "Karpuz";
            urun2.Fiyati = 80;
            urun2.Aciklma = "Diyarbakir Karpuzu";

            Urun[] urunler = new Urun[] { urun1, urun2 };

            //type-safe --tip guvenli
            foreach (Urun urun in urunler)
            {
                Console.WriteLine(urun.Adi);
                Console.WriteLine(urun.Aciklma);
                Console.WriteLine(urun.Fiyati);
                Console.WriteLine("................");
            }

            Console.WriteLine(".............Metotlar----------");
            SepetMenager sepetMenager = new SepetMenager();
            sepetMenager.Ekle(urun1);
            sepetMenager.Ekle(urun2);

            sepetMenager.Ekle2("Armut", "Yesil Armut", 12, 10);
            sepetMenager.Ekle2("Karpuz", "Yesil Karpuz", 20, 18);
            sepetMenager.Ekle2("Elma", "Yesil Elma", 24, 23);

            Console.ReadKey();
        }
    }
}
