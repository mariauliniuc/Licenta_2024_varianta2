﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnCont_Click(object sender, EventArgs e)
        {
            string url = "Cont.aspx";
            Response.Redirect(url); 
        }
    }
}