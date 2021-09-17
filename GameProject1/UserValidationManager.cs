using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameProject1
{
    class UserValidationManager : UserValidationService
    {
        public bool Validate(Gamer gamer)
        {
            if (gamer.BirthYear==1985 && gamer.FirstName =="Yunus" 
                &&gamer.LastName=="Yigit" && gamer.IdentyNumber == 12345)
            {
                return true;
            }
            else
            {
                return false;

            }
        }
    }
}
