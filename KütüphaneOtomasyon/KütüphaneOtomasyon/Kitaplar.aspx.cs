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
    public partial class Kitaplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Anasayfa.aspx");
            GridView1.Visible = true;
            GridView2.Visible = false;
        }

        protected void kitapAra_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);
            Baglanti.Open();
            SqlDataSource1.SelectCommand = "select kitapAdi, konu, yil, kitapNo from kitapEkle where kitapNo=" + txtkitapNo.Text;
            GridView2.DataSource = SqlDataSource1;
            SqlDataSource1.DataBind();
            GridView2.DataBind();
            if (GridView2.Rows.Count > 0)
            {
                GridView2.HeaderRow.Cells[0].Text = "Kitap Adı";
                GridView2.HeaderRow.Cells[1].Text = "Konu";
                GridView2.HeaderRow.Cells[2].Text = "Yılı";
                GridView2.HeaderRow.Cells[3].Text = "Kitap No";
            }
            GridView1.Visible = false;
            GridView2.Visible = true;
          

        }
       

        protected void kitapSil_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True";
            SqlConnection Baglanti = new SqlConnection(conn);


            Baglanti.Open();
            if (txtkitapNo_Sil.Text == null || txtkitapNo_Sil.Text == "")
            {
                MessageBox.Show("Kitap no giriniz.");
                return;
            }

            string sql = "delete from kitapEkle where kitapNo=" + txtkitapNo_Sil.Text;
            SqlCommand komut = new SqlCommand(sql, Baglanti);
            komut.Parameters.AddWithValue("tc", txtkitapNo_Sil.Text);
            komut.ExecuteNonQuery();
            Baglanti.Close();
            MessageBox.Show("Başarılı bir şekilde kitap silindi.");

            txtkitapNo_Sil.Text = "";
           
            Response.Redirect("Kitaplar.aspx");
        }
    }
    }
