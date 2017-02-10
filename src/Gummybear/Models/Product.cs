using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Gummybear.Models
{
    [Table("Products")]
    public class Product
    {
        [Key]
        public int ProductId { get; set; }
        public string Name { get; set; }
        public double Cost { get; set; }
        public string CountryOfOrigin { get; set; }
        public string Picture { get; set; }
    }
}
