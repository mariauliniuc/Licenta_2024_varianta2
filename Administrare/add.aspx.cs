using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Administrare
{
    public partial class add : System.Web.UI.Page
    {
        string a;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                try
                {
                    ConexiuneBD.conn.Open();
                    cmd = new SqlCommand("select Nume from Categorie", ConexiuneBD.conn);

                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr[0].ToString());
                    }
                }
                catch (Exception ex)
                {
                    l1.Text = "Nu se poate realiza conexiunea " + ex.Message;
                }

                finally
                {
                    ConexiuneBD.conn.Close();
                }
                clear();
            }
        }

        protected void btnAdaugare_Click(object sender, EventArgs e)
        {
            if (upPoza.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(upPoza.FileName);
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {
                        if (upPoza.PostedFile.ContentLength < 512000)//500kb
                        {
                            string fname = upPoza.PostedFile.FileName;
                            
                            //upPoza.PostedFile.SaveAs(fname);
                            ////a = upPoza.FileName.ToString();

                            ConexiuneBD.conn.Open();
                            cmd = new SqlCommand("insert into Produse(Nume_prod,Descriere_prod,Pret_prod,Cantitate_prod,Img_prod,Categorie_nume) values (@Nume_prod,@Descriere_prod,@Pret_prod,@Cantitate_prod,@Img_prod,@Categorie_nume)", ConexiuneBD.conn);
                            cmd.Parameters.AddWithValue("@Nume_prod", txtName.Text);
                            cmd.Parameters.AddWithValue("@Descriere_prod", txtDescriere.Text);
                            cmd.Parameters.AddWithValue("@Pret_prod", txtPret.Text);
                            cmd.Parameters.AddWithValue("@Cantitate_prod", txtCantitate.Text);
                            cmd.Parameters.AddWithValue("@Img_prod",fname);
                            cmd.Parameters.AddWithValue("@Categorie_nume", DropDownList1.Text);
                            cmd.ExecuteNonQuery();                            
                        }
                        else
                        {
                            l1.Text = "Dimensiunea maxima a fisierelor trebuie sa fie 500Kb!";
                            l1.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        l1.Text = "Doar  fisierele .jpg, .jpeg si .png sunt acceptate!";
                        l1.ForeColor = System.Drawing.Color.Red;
                    }
                    Response.Write("<script>alert'Adaugarea a fost efectuata cu succes!'</script>");

                }
                catch (Exception ex)
                {
                    //log error  
                    l1.Text = "Eroare la deschidere baza date " + ex.Message;
                }
                //adaugarea datelor 
                finally
                {
                    ConexiuneBD.conn.Close();
                    clear();
                }
            }
            else
            {
                l1.Text = "Incarcati un fisier!";
            }
        }
        public void clear()
        {
            txtName.Text = string.Empty;
            txtDescriere.Text = string.Empty;
            txtCantitate.Text = string.Empty;
            txtPret.Text = string.Empty;

        }

    }
}