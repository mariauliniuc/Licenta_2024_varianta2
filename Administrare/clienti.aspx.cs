using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Administrare
{
    public partial class Clienti : System.Web.UI.Page
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
                    cmd = new SqlCommand("SELECT Id_client,Nume_firma,Adr_mail,Nr_tel,CUI,Adresa FROM Client", ConexiuneBD.conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch 
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