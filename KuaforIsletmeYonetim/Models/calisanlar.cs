using System.ComponentModel.DataAnnotations.Schema;

namespace KuaforIsletmeYonetim.Models
{
    public class calisanlar
    {
        public int Id { get; set; }
        public string Ad { get; set; }
        public string MusaitlikSaatleri { get; set; } 
        public string CalisanTelefon { get; set; }

        [ForeignKey("Uzmanlıklar")]
        public int uzmanlikId { get; set; }
        public uzmanliklar uzmanlik { get; set; }
    }
}
