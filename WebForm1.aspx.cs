using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeknikServis.Web.Entity;

namespace TeknikServis.Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DbTEknikServisEntities db = new DbTEknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var degerler = db.TBLURUNTAKIP.ToList();
            //Repeater1.DataSource = degerler;
            //Repeater1.DataBind();
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            var degerler = db.TBLURUNTAKIP.Where(x => x.SERINO == TextBox1.Text);
            Repeater.DataSource = degerler.ToList();
            Repeater.DataBind();
        }

        protected void Unnamed2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}