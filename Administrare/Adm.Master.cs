using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Administrare
{
    public partial class Adm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            string url = "../Utilizator/Logare.aspx";
            Response.Redirect(url);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string url = "Adaugare.aspx";
            Response.Redirect(url);
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            string url = "Stergere.aspx";
            Response.Redirect(url);
        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            string url = "Clienti.aspx";
            Response.Redirect(url); 
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            string url = "Comenzi.aspx";
            Response.Redirect(url);
        }
    }
}