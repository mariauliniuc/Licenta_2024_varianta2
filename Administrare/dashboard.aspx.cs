using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Administrare
{
    public partial class dashboard : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["emailAdmin"] != null)
                {
                    string email = Session["emailAdmin"].ToString();
                    Label2.Text = email;
                    try
                    {
                        ConexiuneBD.conn.Open();
                        SqlCommand cmd = new SqlCommand("SELECT Email FROM Admin WHERE Email = @Email", ConexiuneBD.conn);
                        cmd.Parameters.AddWithValue("@Email", email);
                        SqlDataReader dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {
                            Label2.Text = dr["Email"].ToString();
                        }
                        dr.Close();
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "Nu se poate realiza conexiunea: " + ex.Message;
                    }
                    finally
                    {
                        ConexiuneBD.conn.Close();
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Nu se poate lua adresa de email a adminului din baza de date!');", true);

                }
            }
        }
    }
}