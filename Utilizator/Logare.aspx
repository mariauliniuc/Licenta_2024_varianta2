<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logare.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Logare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logare</title>
    <link href="../Bootstrap/css/style_logare.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
    <form id="form1" runat="server">
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
                 <asp:Button ID="btnLog" runat="server" Text="Logare" Height="40px" Width="170px" BorderColor="Lime" OnClick="btnLog_Click" />
             </div>
         </div>
     </div>
    </form>
</body>
</html>
