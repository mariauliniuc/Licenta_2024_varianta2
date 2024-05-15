<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogareAdmin.aspx.cs" Inherits="Licenta_prototip_2.Administrare.LogareAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logare administrator</title>
    <link href="../Bootstrap/css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    

        <div class="container-fluid">
            <div class="row">
                <h2>Logare administrator</h2>
                
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

                    <asp:Button ID="btnInregAdm" runat="server" Text="Inregistrare" Height="40px" Width="170px" BorderColor="Aqua" BorderStyle="None" />
                   
                    <asp:Button ID="btnLogAdm" runat="server" Text="Logare" Height="40px" Width="170px" BorderColor="Lime" OnClick="btnLogAdm_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
