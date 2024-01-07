using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;


namespace KütüphaneOtomasyon
{
    public partial class KayıtEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Anasayfa.aspx");
        }

        protected void kayitEkle_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);
          
            Baglanti.Open();
            string sql = "insert into kayitEkle(tc,adSoyad,yas,cinsiyet,telefon,email,adres)" +
                                     "values(@tc,@adSoyad,@yas,@cinsiyet,@telefon,@email,@adres)";
            SqlCommand komut = new SqlCommand(sql,Baglanti);

            komut.Parameters.AddWithValue("tc", txtTC.Text);
            komut.Parameters.AddWithValue("adSoyad", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("yas", txtYas.Text);
            komut.Parameters.AddWithValue("cinsiyet", txtCinsiyet.Text);
            komut.Parameters.AddWithValue("telefon", txtTelefon.Text);
            komut.Parameters.AddWithValue("email", txtMail.Text);
            komut.Parameters.AddWithValue("adres", txtAdres.Text);

            komut.ExecuteNonQuery();
            Baglanti.Close();
            MessageBox.Show("Başarılı bir şekilde kayıt yapıldı.");

            txtTC.Text = "";
            txtAdSoyad.Text = "";
            txtYas.Text = "";
            txtCinsiyet.Text = "";
            txtTelefon.Text = "";
            txtMail.Text = "";
            txtAdres.Text = "";
            Response.Redirect("KayitListe.aspx");
        }

        
    }
}