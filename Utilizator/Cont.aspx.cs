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
                try
                {
                    Label1.Text = "Utilizatorul conectat este" + (string)Application["emailUser"];
                    string a=Label1.Text;
                    ConexiuneBD.conn.Open();
                    cmd = new SqlCommand("Select Nume_firma, Adr_mail, Nr_tel, CUI, Adresa from Client where Adr_mail='"+a+"'",ConexiuneBD.conn);
                    dr = cmd.ExecuteReader();
                }
                catch (Exception ex)
                {
                    Label1.Text = "Nu se poate realiza conexiunea " + ex.Message;
                }
                finally
                {
                    ConexiuneBD.conn.Close();
                }
            }

        }
        protected void btnExit_Click(object sender, EventArgs e)
        {
            string url = "Logare.aspx";
            Response.Redirect(url);
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