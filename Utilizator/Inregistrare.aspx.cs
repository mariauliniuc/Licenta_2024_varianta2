using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Inregistrare : System.Web.UI.Page
    {
        SqlCommand cmd;
       
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

            protected void btnRegister_Click(object sender, EventArgs e)
            {
                try
                {
                    ConexiuneBD.conn.Open();
                    string adr = string.Concat(txtLoc.Text, ", ", txtStr.Text, ", ",txtNumAdr.Text, ", ", txtSc.Text, ", ", txtAp.Text, ", ", txtJud.Text, ", ", txtCodPostal.Text);

                    cmd = new SqlCommand("insert into Produse(Nume_firma,Adr_mail,Nr_tel,CUI,Img_prod,Parola) values (@Nume_firma,@Adr_mail,@Nr_tel,@CUI,@Adresa,@Parola)", ConexiuneBD.conn);
                    cmd.Parameters.AddWithValue("@Nume_firma", txtNumFirma.Text.Trim());
                    cmd.Parameters.AddWithValue("@Adr_mail", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Nr_tel", txtNrTel.Text.Trim());
                    cmd.Parameters.AddWithValue("@CUI", txtCUI.Text.Trim());
                    cmd.Parameters.AddWithValue("@Adresa", adr.Trim());
                    cmd.Parameters.AddWithValue("@Parola", txtParola.Text.Trim());
                    int t = cmd.ExecuteNonQuery();
                    if (t == 1) {
                    string url = "FrmPrincipal.aspx";
                        Response.Redirect(url);
                    }
                }
                catch { } finally {
                    ConexiuneBD.conn.Close();
                }
            }
        } }
