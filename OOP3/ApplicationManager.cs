using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class ApplicationManager
    {
        public void Apply(ICreditManager creditManager, List<ILoggerservice> loggerServices )
        {
            //Basvuran bilgilerini degerlendirme
            //Method Injection
            //Logglamalarda birkac alternatif sunulur

            creditManager.Calculate();
            foreach (var loggerService in loggerServices)
            {
                loggerService.Log();

            }
           
        }
        public void creditview(List<ICreditManager> credits)
        {
            foreach (var credit in credits)
            {
                credit.Calculate();

            }


        }

    }
}
