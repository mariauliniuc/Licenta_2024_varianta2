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
            string loc = txtLoc.Text;
            string str = txtStr.Text;
            string numAdr = txtNumAdr.Text;
            string sc = txtSc.Text;
            string ap = txtAp.Text;
            string jud = txtJud.Text;
            string codPostal = txtCodPostal.Text;
            string adr = loc + ", " + str + ", " + numAdr + ", " + sc + ", " + ap + ", " + jud + ", " + codPostal;
            try
                {
                ConexiuneBD.conn.Open();
                    cmd = new SqlCommand("insert into Client(Nume_firma,Adr_mail,Nr_tel,CUI,Adresa,Parola) values (@Nume_firma,@Adr_mail,@Nr_tel,@CUI,@Adresa,@Parola)", ConexiuneBD.conn);
                    cmd.Parameters.AddWithValue("@Nume_firma", txtNumFirma.Text);
                    cmd.Parameters.AddWithValue("@Adr_mail", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Nr_tel", txtNrTel.Text);
                    cmd.Parameters.AddWithValue("@CUI", txtCUI.Text);
                    cmd.Parameters.AddWithValue("@Adresa", adr);
                    cmd.Parameters.AddWithValue("@Parola", txtParola.Text);
                    int t = cmd.ExecuteNonQuery();
                    if (t == 1) {
                    Session["emailUser"] = txtEmail.Text;
                    string url = "FrmPrincipal.aspx";
                        Response.Redirect(url);
                    }
                }
                catch(Exception ex) {
                l2.Text = "Eroare la deschidere baza date" + ex.Message;
            } finally {
                    ConexiuneBD.conn.Close();
                }
            }
 }   }
