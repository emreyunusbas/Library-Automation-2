using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace KütüphaneOtomasyon
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtKullaniciAdı.Text = "Kullanıcı Adı Giriniz..";
            ////txtSifre.Text = "**";
            //txtKullaniciAdı.ForeColor = Color.LightGray;
            //txtSifre.ForeColor = Color.LightGray;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string kad, ksifre;
            kad = txtKullaniciAdı.Text;
            ksifre = txtSifre.Text;
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection baglanti = new SqlConnection(conn);
            baglanti.Open();
            //OleDbConnection baglanti = new OleDbConnection(@"Provider=SQLOLEDB;Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=SampleDb;Integrated Security=True");
            //OleDbCommand komut = new OleDbCommand();
            string sorgu = "Select* from users where kAd= '"+ kad+ "' and sifre='"+ ksifre + "'";
            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@ad", kad);
            komut.Parameters.AddWithValue("@sifre", ksifre);
            komut.ExecuteNonQuery();
         
            SqlDataReader oku = komut.ExecuteReader();
            // OleDbDataReader oku = komut.ExecuteReader();
          
            if (oku.Read())
            {
                Session.Add("kullanici", kad);
                Response.Redirect("Default.aspx");
            }
            else
            {
                MessageBox.Show("Giriş Başarısız");
            }
            baglanti.Close();
        }

        //protected void sifre(object sender, EventArgs e)
        //{
        //    txtSifre.Text = "";
        //    txtKullaniciAdı.ForeColor = Color.Black;
        //}

        //protected void kullaniciAdi(object sender, EventArgs e)
        //{
        //    txtKullaniciAdı.Text = "";
        //    txtSifre.ForeColor = Color.Black;
        //}
    }
}