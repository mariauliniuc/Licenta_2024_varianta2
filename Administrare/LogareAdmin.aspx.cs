using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Licenta_prototip_2.Administrare
{
    public partial class LogareAdmin : System.Web.UI.Page
    {
        //SqlConnection conn=new SqlConnection(@"Data Source=LAPTOP-5UO3NBV3\SQLEXPRESS;Initial Catalog=MagazinOnline;Integrated Security=True;TrustServerCertificate=True");
        int i;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogAdm_Click(object sender, EventArgs e)
        {
            try
            {
                i = 0;
                ConexiuneBD.conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE Email='" + txtEmailAdm.Text + "' AND Parola='" + txtPass.Text + "'", ConexiuneBD.conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());
                if (i == 1)
                {
                    Session["emailAdmin"] = txtEmailAdm.Text;
                    string url = "dashboard.aspx";
                    Response.Redirect(url);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Nu se poate efectua conexiunea la baza de date!');", true);

                }
            }
            catch (Exception ex)
            {

            }finally { ConexiuneBD.conn.Close(); }

        }


        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.End();
        }
    }
}