using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class EsnafKredisiManager : ICreditManager
    {
        public void Calculate()
        {
            Console.WriteLine("Esnaf Kredisi hesaplandi");
        }

        public void Dosometing()
        {
            throw new NotImplementedException();
        }
    }
}
