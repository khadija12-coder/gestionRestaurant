using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;

namespace entities
{
   
    public  class RestaurantContexte : DbContext
    {

        public RestaurantContexte() : base("Data Source=.\\SQLEXPRESS;Initial Catalog=RestaurantDB;Integrated Security=True")
        {

        }

        public DbSet<Restaurant> RESTAURANTS { get; set; }
        public DbSet<Cuisinier> CUISINIERS { get; set; }
        public DbSet<Plat> PLATS { get; set; }
    }
}
