using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace entities
{
    [Table("TableRestaurant")]
    public class Restaurant
    {

        [Key]
        public int code { get; set; }
        [Column("nomRestaurant")]
        public string NomRestaurant { get; set; }
        [Column("Adresse")]
        public string adresse { get; set; }
        [Column("gmail")]
        public string Gmail { get; set; }
        [Column("telephone")]
        public Int32 Telephone { get; set; }


    }
}
