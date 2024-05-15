using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Administrare
{
    public partial class LogareAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogAdm_Click(object sender, EventArgs e)
        {
            //dupa conditia sa fie bune credentialele
            string url = "Dashboard.aspx";
            Response.Redirect(url);
        }
    }
}