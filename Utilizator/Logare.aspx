<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Logare.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Logare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <form id="form1" runat="server">
        <link href="../Bootstrap/css/style.css" rel="stylesheet">

        <div class="container-fluid">
            <div class="row">
                <h2>Logare</h2>
                
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">E-mail</label>
                    <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="260px"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput2" class="form-label">Parola</label>
                    <asp:TextBox ID="txtPass" runat="server" Height="30px" Width="260px"></asp:TextBox>
                </div>
                <p><a href="">Ai uitat parola?</a></p>
                <div class="d-flex">

                    <asp:Button ID="btnInreg" runat="server" Text="Inregistrare" Height="40px" Width="170px" BorderColor="Aqua" BorderStyle="None" OnClick="btnInreg_Click" />
                    <asp:Button ID="btnAdmin" runat="server" Text="Administrare" Height="40px" Width="170px" BorderColor="#999999" OnClick="btnAdmin_Click" />
                    <asp:Button ID="btnLog" runat="server" Text="Logare" Height="40px" Width="170px" BorderColor="Lime" />
                </div>
            </div>
        </div>
    </form>



</asp:Content>
