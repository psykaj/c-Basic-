using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hello_world
{
    internal class Player
    {
        public string name = "Pankaj";
        private int health = 56;

        public int getHealth()
        {
            return health;
        }

        public void setHealth(int h)
        {
            health = h;
        }
    }
}
