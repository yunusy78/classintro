using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP3
{
    class Program
    {
        static void Main(string[] args)
        {
            ICreditManager personalFinaceCredit = new PersonalFinaceCredit();
          
            ICreditManager vehicheCreditmanager = new VehicheCreditmanager();
           
            ICreditManager mortgageManager = new MortgageManager();
           

            ILoggerservice databaseLoggerService = new DatabaseLoggerServise();

            ILoggerservice fileLoggerService = new FileLoggerService();

            List<ILoggerservice> loggers = new List<ILoggerservice> { new SmsLoggerServise(), new FileLoggerService() };


            
            
            ApplicationManager applicationManager = new ApplicationManager();
            applicationManager.Apply(new EsnafKredisiManager(), loggers);
            //applicationManager.Apply(new EsnafKredisiManager(),
            //new List<ILoggerservice> { new DatabaseLoggerServise(), new SmsLoggerServise() });


            List <ICreditManager> credits = new List<ICreditManager>() {mortgageManager, vehicheCreditmanager,new EsnafKredisiManager() };

            applicationManager.creditview(credits);

            
            Console.ReadLine();
        }
       
    }
}
