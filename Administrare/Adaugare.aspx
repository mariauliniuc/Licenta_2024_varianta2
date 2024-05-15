<%@ Page Title="" Language="C#" MasterPageFile="~/Administrare/Adm.Master" AutoEventWireup="true" CodeBehind="Adaugare.aspx.cs" Inherits="Licenta_prototip_2.Administrare.Adaugare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Start -->
<div class="container">
    <h1 class="text-center">Adaugare produse</h1>
        <div class="row row-cols-1 row-cols-md-3">
            <div class="col">
                <div class="mb-3">
                   <%-- Label cu casuta--%>
                    <asp:Label ID="lblName" runat="server" Text="Introduceti numele produsului:"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" Height="35px" Width="280px"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblCategorie" runat="server" Text="Categoria produsului:"></asp:Label>
                    <asp:DropDownList ID="drpDownCategorie" runat="server"></asp:DropDownList>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblPret" runat="server" Text="Adaugati pretul:"></asp:Label>
                    <asp:TextBox ID="txtPret" runat="server" Height="35px" Width="100px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblDescriere" runat="server" Text="Adaugati o descriere:"></asp:Label>
                    <asp:TextBox ID="txtDescriere" runat="server" Height="35px" MaxLength="100" Rows="4" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblPoza" runat="server" Text="Adauga o poza:"></asp:Label>
                    <asp:FileUpload ID="upPoza" runat="server" />
                </div>
                <div class="bottom align-bottom align-content-center d-flex">
                    <asp:Button ID="btnAdaugare" runat="server" Text="Adaugare" Height="50px" Width="180px" />
                </div>
                </div>
            </div>
    </div>
  <!-- Content End -->
</asp:Content>
