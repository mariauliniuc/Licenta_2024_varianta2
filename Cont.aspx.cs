using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Cont : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            string url = "Logare.aspx";
            Response.Redirect(url);
        }

        protected void btnInfCont_Click(object sender, EventArgs e)
        {
            string url = "Cont.aspx";
            Response.Redirect(url);
        }

        protected void btnSchParola_Click(object sender, EventArgs e)
        {
            string url = "SchimbareParola.aspx";
            Response.Redirect(url);
        }
    }
}