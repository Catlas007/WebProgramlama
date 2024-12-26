namespace KuaforIsletmeYonetim.Models.ViewModels
{
    public class HomeViewModel
    {
        public List<IslemViewModel> Islemler { get; set; }
        public List<CalisanViewModel> Calisanlar { get; set; }
    }

    //public class IslemViewModel
    //{
    //    public string IslemAdi { get; set; }
    //    public decimal IslemUcreti { get; set; }
    //    public int IslemSure { get; set; }
    //}

    //public class CalisanViewModel
    //{
    //    public string Ad { get; set; }
    //    public string MusaitlikSaatleri { get; set; }
    //    public string CalisanTelefon { get; set; }
    //    public string UzmanlikAdi { get; set; }
    //}
}
