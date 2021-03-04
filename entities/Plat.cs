using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace entities
{
    [Table("TablePlat")]
    public class Plat
    {

        [Key]
        public int IdP { get; set; }
        [Column("nomplat")]
        public string NomPlat { get; set; }
        [Column("categorie")]
        public string Categorie { get; set; }
       
        [ForeignKey("Cuisinier")]
        public int id;
        public Cuisinier Cuisinier { get; set; }








    }
}
