<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Diverse.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Diverse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>

            <!-- link de la css ul acestei pagini-->
            <link href="../Bootstrap/css/style-menu.css" rel="stylesheet" />
            <!-- de aici vreau sa inceapa lista cu produsele-->
            <h1 class="text-center">Diverse</h1>
            <ul>
                <div class="container py-5">
                    <div class="row row-cols-1 row-cols-md-3 g-4 py-5">
        </HeaderTemplate>



        <ItemTemplate>
                        <div class="col">
                <div class="card">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# ResolveUrl("~/img2/" + Eval("Img_prod")) %>' class="card-img-top" />
                    <%--  <img src="../img2/<%#Eval("Img_prod") %>" class="card-img-top" />--%>
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblNume" runat="server" Text='<%#Eval("Nume_prod") %>'></asp:Label>
                        </h5>
                        <p class="card-text">
                            <%#Eval("Descriere_prod") %>
                        </p>
                    </div>
                    <div class="mb-5 d-flex justify-content-around">
                        <h3>
                            <asp:Label ID="lblPret" runat="server" Text='<%#Eval("Pret_prod") %>'></asp:Label>
                        </h3>
                        <%-- <button class="btn btn-primary">Buy Now</button>--%>
                        <asp:Button ID="btnAdd1" runat="server" Text="Adauga in cos" OnClick="btnAdd1_Click" />
                    </div>
                </div>
            </div>
        </ItemTemplate>


        <FooterTemplate>
            </div>
     </div>
         </ul>
        </FooterTemplate>
    </asp:Repeater>


</asp:Content>
