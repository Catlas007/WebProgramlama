using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace KuaforIsletmeYonetim.Models
{
    public class randevular
    {
        public int Id { get; set; }
        public DateOnly Tarih { get; set; }
        public TimeOnly Saat { get; set; }

        //[ForeignKey("Musteriler")]
        //public musteriler musteriID { get; set; }

        [ForeignKey("UserId")]
        public virtual IdentityUser User { get; set; }

        [ForeignKey("Calisanlar")]
        public calisanlar calisanID { get; set; }

        [ForeignKey("Islemler")]
        public islemler islemId { get; set; }

    }
}
