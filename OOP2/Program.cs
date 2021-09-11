using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP2
{
    class Program
    {
        static void Main(string[] args)
        {
            IndividuelCustomer customer1 = new IndividuelCustomer();
            customer1.FirstName = "Yunus";
            customer1.LastName = "Yigit";
            customer1.TcNo = "1234567890";
            customer1.Id = 12345;
            customer1.CustomerNumber = "5678";

            //Kodlma.io

            CorporateCustomer customer2 = new CorporateCustomer();
            customer2.Id = 67890;
            customer2.CustomerNumber = "5678345";
            customer2.CampanyName = "Kodlama.io";
            customer2.TaxNo = "56754321";

            //Gercek Musteri -Tuzel Musteri SOLID

            Customer customer3 = new IndividuelCustomer();
            Customer customer4 = new CorporateCustomer();

            CustomerManager customerManager = new CustomerManager();
            customerManager.Add(customer1);
            customerManager.Add(customer2 );
            customerManager.Add(customer1);
            customerManager.Add(customer1);





        }
    }
}
