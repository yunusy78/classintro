using System;

namespace OOP3
{
    class FileLoggerService : ILoggerservice
    {
        public void Log()
        {
            Console.WriteLine("Dosyaya Loglandi");
        }
    }
}
