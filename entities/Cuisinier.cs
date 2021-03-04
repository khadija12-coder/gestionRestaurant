using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace entities
{
    [Table("TableCuisinier")]
    public class Cuisinier
    {
        
        [Key]
        public int Id { get; set; }
        [Column("nom")]
        public string Nom { get; set; }
        [Column("prenom")]
        public string prenom { get; set; }
        [Column("ville")]
        public string Ville { get; set; }
        [Column("nationnalite")]
        public string Nationnalite { get; set; }
        [Column("gmail")]
        public string Gmail { get; set; }
        [Column("telephone")]
        public Int32 Telephone{ get; set; }

        [ForeignKey("Restaurant")]
        public int code;
        public Restaurant Restaurant { get; set; }

        
    }
}
