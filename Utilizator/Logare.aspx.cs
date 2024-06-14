using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Logare : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-5UO3NBV3\SQLEXPRESS;Initial Catalog=MagazinOnline;Integrated Security=True;TrustServerCertificate=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInreg_Click(object sender, EventArgs e)
        {
            string url = "Inregistrare.aspx";
            Response.Redirect(url);
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {

            i = 0;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT * FROM Client WHERE Adr_mail='" + txtEmail.Text + "' AND Parola='" + txtPass.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            adapter.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i == 1)
            {
                Session["emailUser"] = txtEmail.Text;

                string url = "FrmPrincipal.aspx";
                Response.Redirect(url);
            }
            else
            {

            }
            conn.Close();
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            string url = "../Administrare/LogareAdmin.aspx";
            Response.Redirect(url);
        }
    }
}