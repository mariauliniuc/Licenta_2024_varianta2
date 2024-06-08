<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogareAdmin.aspx.cs" Inherits="Licenta_prototip_2.Administrare.LogareAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Autentificare administrator</title>
    <link href="../Bootstrap/css/style_logare.css" rel="stylesheet"/>
</head>
<body>
    <form id="formLogarAdmin" runat="server">
        <div class="container-fluid">
            <div class="row">
                <h2>Autentificare administrator</h2>
                
                <div class="mb-3">
                    <asp:Label ID="lblEmailAdm" runat="server" Text="Email: "></asp:Label>
                    <asp:TextBox ID="txtEmailAdm" runat="server" Height="30px" Width="260px"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblPassAdmin" runat="server" Text="Parola: "></asp:Label>
                    <asp:TextBox ID="txtPass" runat="server" Height="30px" Width="260px"></asp:TextBox>
                </div>
                
                <div class="d-flex">

                    <asp:Button ID="btnExit" runat="server" Text="Iesire" Height="40px" Width="170px" BorderColor="Aqua" BorderStyle="None" OnClick="btnExit_Click" />
                   
                    <asp:Button ID="btnLogAdm" runat="server" Text="Autentificare" Height="40px" Width="170px" BorderColor="Lime" OnClick="btnLogAdm_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
