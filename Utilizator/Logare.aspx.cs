using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Logare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInreg_Click(object sender, EventArgs e)
        {
            string url;
            url = "../Utilizator/Inregistrare.aspx";
            Response.Redirect(url);
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            string url="../Administrare/LogareAdmin.aspx";
            Response.Redirect(url); 

        }
    }
}