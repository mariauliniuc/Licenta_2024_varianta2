using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Telefoane : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConexiuneBD.conn.Open();

            cmd = new SqlCommand("select * from Produse where Categorie_nume= 'Telefoane' ", ConexiuneBD.conn);
            cmd.ExecuteNonQuery();
            DataTable dt= new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;  
            d1.DataBind();
            
            ConexiuneBD.conn.Close();
        }
        protected void btnAdd1_Click(object sender, EventArgs e)
        {
            try
            {
                ConexiuneBD.conn.Open();

            }
            catch { 
            
            }
            finally {
                ConexiuneBD.conn.Close();
            }
        }
    }
}