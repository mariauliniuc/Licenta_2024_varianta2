<%@ Page Title="" Language="C#" MasterPageFile="~/Administrare/Admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Licenta_prototip_2.Administrare.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper">
 <div class="main_content">
 <div class="header">Aceasta interfata este dedicata utilizarii de catre un adiministrator</div>
 <div class="info">
     </div>
       <div class="card-body">
            <p>Adresa de email a administratorului autentificat:</p>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
  </div>
     </div>
         </div>
</asp:Content>
