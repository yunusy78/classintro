using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class DatabaseLoggerServise :ILoggerservice
    {
        public void Log()
        {
            Console.WriteLine("Veri tabanina Loglandi");
        }
    }
}
