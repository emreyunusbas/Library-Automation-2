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
    public partial class KayitListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Anasayfa.aspx");
        }

        protected void kayitGuncelle_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);

      
            Baglanti.Open();
            if(txtTC.Text==null || txtTC.Text == "") { 
                MessageBox.Show("Tc kimlik giriniz.");
                return;
            }

            string sql = "update kayitEkle set  adSoyad=@adSoyad,yas=@yas,cinsiyet=@cinsiyet,telefon=@telefon,email=@email,adres=@adres where tc="+txtTC.Text;
            SqlCommand komut = new SqlCommand(sql, Baglanti);

            
            komut.Parameters.AddWithValue("adSoyad", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("yas", txtYas.Text);
            komut.Parameters.AddWithValue("cinsiyet", txtCinsiyet.Text);
            komut.Parameters.AddWithValue("telefon", txtTelefon.Text);
            komut.Parameters.AddWithValue("email", txtMail.Text);
            komut.Parameters.AddWithValue("adres", txtAdres.Text);

            komut.ExecuteNonQuery();
            Baglanti.Close();
            MessageBox.Show("Başarılı bir şekilde kayıt güncellendi.");

            txtTC.Text = "";
            txtAdSoyad.Text = "";
            txtYas.Text = "";
            txtCinsiyet.Text = "";
            txtTelefon.Text = "";
            txtMail.Text = "";
            txtAdres.Text = "";
            Response.Redirect("KayitListe.aspx");
        }

        protected void kayitSil_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);


            Baglanti.Open();
            if (txtTC_del.Text == null || txtTC_del.Text == "")
            {
                MessageBox.Show("Tc kimlik giriniz.");
                return;
            }

            string sql = "delete from kayitEkle where tc=" + txtTC_del.Text;
            SqlCommand komut = new SqlCommand(sql, Baglanti);
            komut.Parameters.AddWithValue("tc", txtTC_del.Text);
            komut.ExecuteNonQuery();
            Baglanti.Close();
            MessageBox.Show("Başarılı bir şekilde kayıt silindi.");

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