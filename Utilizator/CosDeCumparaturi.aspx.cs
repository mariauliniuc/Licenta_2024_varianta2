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
    public partial class Cos_de_cumparaturi : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["emailUser"] != null)
                {
                    string email = Session["emailUser"].ToString();
                    try
                    {
                        ConexiuneBD.conn.Open();
                        cmd = new SqlCommand("SELECT Nume_firma FROM Client WHERE Adr_mail=@Email", ConexiuneBD.conn);
                        cmd.Parameters.AddWithValue("@Email", email);
                        dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {
                            // Populează câmpurile cu datele utilizatorului
                            Label2.Text = dr["Nume_firma"].ToString();
                            
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
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Nu se poate lua numele firmei din baza de date!');", true);

                }
                LoadCartData();
            }
        }

        private void LoadCartData()
        {
            ConexiuneBD.conn.Open();

            cmd = new SqlCommand("SELECT * FROM CosCumparaturi", ConexiuneBD.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            d1.DataSource = dt;
            d1.DataBind();

            ConexiuneBD.conn.Close();
            // Calculăm prețul total al produselor din coș
            decimal totalSum = 0;
            foreach (DataRow row in dt.Rows)
            {
                totalSum += Convert.ToDecimal(row["Pret_prdCos"]);
            }

            lblTotalValue.Text = totalSum.ToString("C", System.Globalization.CultureInfo.GetCultureInfo("ro-RO")); // Formatăm prețul ca monedă în RON
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url = "FrmPrincipal.aspx";
            Response.Redirect(url);
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = int.Parse(btn.CommandArgument);

            ConexiuneBD.conn.Open();

            using (SqlCommand cmd = new SqlCommand("DELETE FROM CosCumparaturi WHERE Id_prdCos = @Id", ConexiuneBD.conn))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.ExecuteNonQuery();
            }

            ConexiuneBD.conn.Close();

            LoadCartData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string email = Session["emailUser"].ToString();

            ConexiuneBD.conn.Open();
            cmd = new SqlCommand("SELECT * FROM CosCumparaturi", ConexiuneBD.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ConexiuneBD.conn.Close();

            string produseCmd = "";
            decimal totalSum = 0;
            foreach (DataRow row in dt.Rows)
            {
                produseCmd += row["Nume_prdCod"] + ", ";
                totalSum += Convert.ToDecimal(row["Pret_prdCos"]);
            }
            produseCmd = produseCmd.TrimEnd(new char[] { ',', ' ' }); 
            ConexiuneBD.conn.Open();
            using (SqlCommand cmd = new SqlCommand("INSERT INTO Comenzi (Nume_firmaCmd, Adresa_firmaCmd, Produse_Cmd, Total_cmd) VALUES (@NumeFirma, @AdresaFirma, @ProduseCmd, @TotalCmd)", ConexiuneBD.conn))
            {
                cmd.Parameters.AddWithValue("@NumeFirma", Label2.Text); // Asigurăm corectitudinea parametrului @NumeFirma
                cmd.Parameters.AddWithValue("@AdresaFirma", email);
                cmd.Parameters.AddWithValue("@ProduseCmd", produseCmd);
                cmd.Parameters.AddWithValue("@TotalCmd", totalSum);
                cmd.ExecuteNonQuery();
            }
            ConexiuneBD.conn.Close();

            // Ștergem produsele din coșul de cumpărături
            ConexiuneBD.conn.Open();
            cmd = new SqlCommand("DELETE FROM CosCumparaturi", ConexiuneBD.conn);
            cmd.ExecuteNonQuery();
            ConexiuneBD.conn.Close();

            // Reîncărcăm datele din coș
            LoadCartData();

            // Afișăm mesajul de succes
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Comanda plasata cu succes!');", true);
        }
    }
}
