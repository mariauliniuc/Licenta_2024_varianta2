<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="CosDeCumparaturi.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Cos_de_cumparaturi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater ID="d1" runat="server">
     <HeaderTemplate>
  <link href="../Bootstrap/css/style3.css" rel="stylesheet" />
  <div class="container px-3 my-5 clearfix">
  <!-- Shopping cart table -->
  <ul>
  <div class="card">
      <div class="card-header">
          <h2>Cos de cumparaturi</h2>
      </div>
      <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered m-0">
              <thead>
                <tr>
                  <!-- Set columns width -->
                  <th class="text-center py-3 px-4" style="min-width: 400px;">Nume produs</th>
                  <th class="text-right py-3 px-4" style="width: 100px;">Pret</th>
                  <th class="text-center py-3 px-4" style="width: 120px;">Cantitate</th>
                  <th class="text-right py-3 px-4" style="width: 100px;">Total</th>
                  <th class="text-center align-middle py-3 px-0" style="width: 40px;"><a href="#" class="shop-tooltip float-none text-light" title="" data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
                </tr>
              </thead>
              <tbody>
			  </HeaderTemplate>
      <asp:ItemTemplate>
                <tr>
                  <td class="p-4">
                    <div class="media align-items-center">
                      <img src="../img2/<%#Eval("Img_prod") %>" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                      <div class="media-body">
                        <a href="#" class="d-block text-dark"><%#Eval("Nume_prod") %></a>
                        
                      </div>
                    </div>
                  </td>
                  <td class="text-right font-weight-semibold align-middle p-4"><%#Eval("Pret_prod") %></td>
                  <td class="align-middle p-4">  pun label aici</td>
                  <td class="text-right font-weight-semibold align-middle p-4">pun alt label aici</td>
                  <td class="text-center align-middle px-0"><a href="#" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove"> aici ar merge un buton ×</a></td>
                </tr>
		</asp:ItemTemplate>
		<FooterTemplate>
              </tbody>
            </table>
          </div>
          <!-- / Shopping cart table -->
      
          <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">

            <div class="d-flex">
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
            </div>
          </div>
      
          <div class="float-right">
            
              <asp:Button ID="Button2" runat="server" Text="Inapoi la cumparaturi" OnClick="Button2_Click" />
                <asp:Button ID="Button1" runat="server" Text="Cumparare" />
           
          </div>
      
        </div>
    </div>
</div>
</ul>
</FooterTemplate>
</asp:Repeater>
</asp:Content>
