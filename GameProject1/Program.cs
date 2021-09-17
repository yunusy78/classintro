using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameProject1
{
    class Program
    {
        static void Main(string[] args)
        {
            //GamerManager gamerManager = new GamerManager(new UserValidationManager());
            //gamerManager.Add(new Gamer { Id = 1, BirthYear = 1984, FirstName = "Yunus", LastName = "Yigit", IdentyNumber = 12345 });

            GamerManager gamerManager = new GamerManager(new NewEStateUserValidationManager());
            gamerManager.Add(new Gamer { Id = 1, BirthYear = 1984, FirstName = "Yunus", LastName = "Yigit", IdentyNumber = 12345 });

            
            Console.ReadLine();

        }
    }
}
