using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameProject1
{
    //MicroService
    class GamerManager : IGamerService


    {
        UserValidationService userValidationService;
        public GamerManager(UserValidationService userValidationService)
        {
            this.userValidationService = userValidationService;
        }

        public void Add(Gamer gamer)
        {
            if (userValidationService.Validate(gamer) == true)
            {

                Console.WriteLine("Kayit oldu");
            }
            else
            {
                Console.WriteLine("Dogrulama Basarisiz");
            }
        }

        public void Delete(Gamer gamer)
        {
            Console.WriteLine("Kayit Slindi");
        }

        public void Update(Gamer gamer)
        {
            Console.WriteLine("Kayit Guncellendi");
        }
    }
}
