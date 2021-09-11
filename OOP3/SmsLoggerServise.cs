using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class SmsLoggerServise : ILoggerservice
    {
        public void Log()
        {
            Console.WriteLine("Sms yollandi");
        }
    }
}
