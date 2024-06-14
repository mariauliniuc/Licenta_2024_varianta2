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
    public partial class comenzi : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                   
                    ConexiuneBD.conn.Open();
                    cmd = new SqlCommand("SELECT * FROM Comenzi", ConexiuneBD.conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert'Nu functioneaza legatura cu baza de date!'</script>");

                }

                finally
                {
                    ConexiuneBD.conn.Close();
                }
            }
        }
    }
}