using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta_prototip_2.Utilizator
{
    public partial class Cont : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["emailUser"] != null)
                {
                    string email = Session["emailUser"].ToString();
                    Label1.Text = "Utilizatorul conectat este " + email;
                    try
                    {
                        ConexiuneBD.conn.Open();
                        cmd = new SqlCommand("SELECT Nume_firma, Adr_mail, Nr_tel, CUI, Adresa FROM Client WHERE Adr_mail=@Email", ConexiuneBD.conn);
                        cmd.Parameters.AddWithValue("@Email", email);
                        dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {
                            // Populează câmpurile cu datele utilizatorului
                            Label2.Text = dr["Nume_firma"].ToString();
                            Label3.Text = dr["Adr_mail"].ToString();
                            Label4.Text = dr["Nr_tel"].ToString();
                            Label5.Text = dr["CUI"].ToString();
                            Label6.Text = dr["Adresa"].ToString();
                        }
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
                    // Dacă sesiunea a expirat sau utilizatorul nu este autentificat, redirecționează la pagina de logare
                    Response.Redirect("Logare.aspx");
                }
            }
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            // Golire sesiune la deconectare
            Session.Clear();
            Response.Redirect("Logare.aspx");
        }
        protected void btnInfCont_Click(object sender, EventArgs e)
        {
            string url = "Cont.aspx";
            Response.Redirect(url);
        }
        protected void btnSchParola_Click(object sender, EventArgs e)
        {
            string url = "SchimbareParola.aspx";
            Response.Redirect(url);
        }
    }
}