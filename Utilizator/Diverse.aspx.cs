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
            // Găsește item-ul părinte al butonului
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            // Găsește controalele în interiorul RepeaterItem
            Label lblNume = item.FindControl("lblNume") as Label;
            Label lblPret = item.FindControl("lblPret") as Label;
            Image imgProd = item.FindControl("Image1") as Image;

            if (lblNume != null && lblPret != null && imgProd != null)
            {
                ConexiuneBD.conn.Open();

                using (SqlCommand cmd = new SqlCommand("insert into CosCumparaturi(Nume_prdCod,Pret_prdCos,Img_prdCos) values (@Nume_prdCod,@Pret_prdCos,@Img_prdCos)", ConexiuneBD.conn))
                {
                    cmd.Parameters.AddWithValue("@Nume_prdCod", lblNume.Text);
                    cmd.Parameters.AddWithValue("@Pret_prdCos", lblPret.Text); // Corectat lblText -> lblPret
                    cmd.Parameters.AddWithValue("@Img_prdCos", imgProd.ImageUrl); // Corectat txtName -> txtImg

                    cmd.ExecuteNonQuery();
                }

                ConexiuneBD.conn.Close();
            }

        }
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var image = (Image)e.Item.FindControl("Image1");
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string imgProd = rowView["Img_prod"].ToString();
                image.ImageUrl = imgProd;
            }
        }
    }
}