using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KütüphaneOtomasyon
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                cikis_yap.Attributes.Add("class", "hide");
            }
            else { 
            cikis_yap.Attributes.Add("class", "show");
            }
        }
    }
}