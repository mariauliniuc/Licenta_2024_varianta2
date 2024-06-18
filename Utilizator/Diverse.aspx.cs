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
    public partial class Diverse : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConexiuneBD.conn.Open();

            cmd = new SqlCommand("select * from Produse where Categorie_nume= 'Diverse' ", ConexiuneBD.conn);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();

            ConexiuneBD.conn.Close();
        }
        protected void btnAdd1_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            Label lblNume = item.FindControl("lblNume") as Label;
            Label lblPret = item.FindControl("lblPret") as Label;
            Image imgProd = item.FindControl("Image1") as Image;

            if (lblNume != null && lblPret != null && imgProd != null)
            {
                string imgFileName = System.IO.Path.GetFileName(imgProd.ImageUrl);

                ConexiuneBD.conn.Open();

                using (SqlCommand cmd = new SqlCommand("insert into CosCumparaturi(Nume_prdCod, Pret_prdCos, Img_prdCos) values (@Nume_prdCod, @Pret_prdCos, @Img_prdCos)", ConexiuneBD.conn))
                {
                    cmd.Parameters.AddWithValue("@Nume_prdCod", lblNume.Text);
                    cmd.Parameters.AddWithValue("@Pret_prdCos", lblPret.Text);
                    cmd.Parameters.AddWithValue("@Img_prdCos", imgFileName);

                    cmd.ExecuteNonQuery();
                }

                ConexiuneBD.conn.Close();

            }

        }
    }
    }
