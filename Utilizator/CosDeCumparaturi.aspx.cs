using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Cos_de_cumparaturi : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            ConexiuneBD.conn.Open();

            cmd = new SqlCommand("select * from CosCumparaturi", ConexiuneBD.conn);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();

            ConexiuneBD.conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url = "FrmPrincipal.aspx";
            Response.Redirect(url);
        }
    }
}