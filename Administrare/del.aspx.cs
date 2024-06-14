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
    public partial class del : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    //DGVbing();
                    ConexiuneBD.conn.Open();
                    cmd = new SqlCommand("select Nume from Categorie", ConexiuneBD.conn);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        drpDwnLstCategorie.Items.Add(dr[0].ToString());

                    }
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

        protected void btnAfisare_Click(object sender, EventArgs e)
        {
            try
            {
                ConexiuneBD.conn.Open();
                loadData();
            }
            catch (Exception ex)
            {
                //log error  
                l3.Text = "Eroare la conectare baza de date " + ex.Message;

            }
            //adaugarea datelor 
            finally
            {
                ConexiuneBD.conn.Close();
            }
        }

        //protected override void Render(System.Web.UI.HtmlTextWriter writer)
        //{
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        if (row.RowType == DataControlRowType.DataRow)
        //        {
        //            row.Attributes["onmouseover"] = "this.style.cursor='hand';this.style.textDecoration='underline';";
        //            row.Attributes["onmouseout"] = "this.style.textDecoration='none';";
        //            row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + row.DataItemIndex, true);
        //            row.Style.Add(HtmlTextWriterStyle.Cursor, "pointer");

        //        }
        //    }
        //    base.Render(writer);
        //}

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            


        }
        void loadData()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Produse where Categorie_nume='" + drpDwnLstCategorie.SelectedValue + "'", ConexiuneBD.conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int prodId = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
                ConexiuneBD.conn.Open();
                cmd = new SqlCommand("delete from Produse where Id_prod='" + prodId + "'", ConexiuneBD.conn);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    l3.Text = "Stergere realizata cu succes";
                    loadData();
                }
            }
            catch (Exception ex)
            {
                l3.Text = "Stergerea nu a fost realizata" + ex.Message;

            }
            finally
            {
                ConexiuneBD.conn.Close();
            }
        }
    }
}