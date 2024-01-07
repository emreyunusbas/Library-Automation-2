using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KütüphaneOtomasyon
{
    public partial class KitapEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Anasayfa.aspx");
        }

        protected void kitapEkle_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);

            Baglanti.Open();
            string sql = "insert into kitapEkle(kitapAdi,konu,yil,kitapNo)" +
                                     "values(@kitapAdi,@konu,@yil,@kitapNo)";
            SqlCommand komut = new SqlCommand(sql, Baglanti);

            komut.Parameters.AddWithValue("kitapAdi", txtkitapAdi.Text);
            komut.Parameters.AddWithValue("konu", txtkonu.Text);
            komut.Parameters.AddWithValue("yil", txtyil.Text);
            komut.Parameters.AddWithValue("kitapNo", txtKitapNo.Text);
           

            komut.ExecuteNonQuery();
            Baglanti.Close();
            System.Windows.MessageBox.Show("Başarılı bir şekilde kitap eklendi.");

            txtkitapAdi.Text = "";
            txtkonu.Text = "";
            txtyil.Text = "";
            txtKitapNo.Text = "";
           
            Response.Redirect("Kitaplar.aspx");
        }
    }
}