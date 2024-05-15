<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Inregistrare.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Inregistrare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container py-5">
        <h1 class="text-center">Formular de inregistrare client</h1>
        <form id="form1" runat="server">
            <div class="row row-cols-1 row-cols-md-3 g-4 p-3 shadow mt-5 border">
                <div class="col">
                    <div class="mb-3">
                       <!-- <label for="introducereNume" class="form-label">Numele companiei</label>
                        <input type="text" class="form-control"> -->

                        <asp:Label ID="lblNumeFirma" runat="server" Text="Introduceti numele companiei:"></asp:Label>
                        <asp:TextBox ID="txtNumFirma" runat="server" Height="29px" Width="340px"></asp:TextBox>

                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                       <!-- <label for="introducereEmail" class="form-label">Email</label>
                        <input type="email" class="form-control"> -->
                        <asp:Label ID="lblEmail" runat="server" Text="Introduceti adresa de email:"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                       <!-- <label for="introducereNumTel" class="form-label">Numar de telefon</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblNrTel" runat="server" Text="Introduceti numarul de telefon:"></asp:Label>
                        <asp:TextBox ID="txtNrTel" runat="server" Height="29px" MaxLength="10" TextMode="Phone" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                      <!--  <label for="introducereCUI" class="form-label">Cod Unic de Inregistrare</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblCUI" runat="server" Text="Introduceti codul unic de inregistrare:"></asp:Label>
                        <asp:TextBox ID="txtCUI" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                      <!--  <label for="introducereStr" class="form-label">Strada</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblLoc" runat="server" Text="Introduceti localitatea:"></asp:Label>
                        <asp:TextBox ID="txtLoc" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                     <!--   <label for="introducereNrAdresa" class="form-label">Numar</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblStr" runat="server" Text="Introduceti strada:"></asp:Label>
                        <asp:TextBox ID="txtStr" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                      <!--  <label for="introducereAp" class="form-label">Apartament</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lbl" runat="server" Text="Introduceti numarul:"></asp:Label>
                        <asp:TextBox ID="txtNumAdr" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                      <!--  <label for="introducereSc" class="form-label">Scara</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblSc" runat="server" Text="Introduceti scara:"></asp:Label>
                        <asp:TextBox ID="txtSc" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                      <!--  <label for="introducereLoc" class="form-label">Localitate</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblAp" runat="server" Text="Introduceti apartamentul:"></asp:Label>
                        <asp:TextBox ID="txtAp" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                     <!--   <label for="introducereJud" class="form-label">Judet</label>
                        <input type="text" class="form-control"> -->
                        <asp:Label ID="lblJud" runat="server" Text="Introduceti judetul:"></asp:Label>
                        <asp:TextBox ID="txtJud" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <%--<label for="introducereCodPostal" class="form-label">Cod Postal</label>
                        <input type="text" class="form-control">--%>
                        <asp:Label ID="lblCodPostal" runat="server" Text="Introduceti codul postal:"></asp:Label>
                        <asp:TextBox ID="txtCodPostal" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <%--<label for="introducereParola" class="form-label">Parola</label>
                        <input type="text" class="form-control">--%>
                        <asp:Label ID="lblParola" runat="server" Text="Introduceti parola:"></asp:Label>
                        <asp:TextBox ID="txtParola" runat="server" Height="29px" Width="340px"></asp:TextBox>
                    </div>
                </div>
                
                <div class="row row-cols-1 row-cols-md-3 g-4 p-3">
                    <div class="mt-3">
                       <!-- <button class="btn btn-primary">Inregistrare</button> -->
                        <asp:Button ID="btnInreg" runat="server" OnClick="Button1_Click" Text="Inregistrare" />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
