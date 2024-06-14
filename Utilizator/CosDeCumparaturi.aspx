<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="CosDeCumparaturi.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Cos_de_cumparaturi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="text-center mt-4">
                             <div class="d-inline-block">
      <h4>
          <asp:Label ID="Label1" runat="server" Text="Sunteti conectat ca:"></asp:Label>
          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
          </h4></div></div>
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
        <ItemTemplate>
                                        <tr>
                                            <td class="p-4">
                                                <div class="media align-items-center">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# ResolveUrl("~/img2/" + Eval("Img_prdCos")) %>' class="d-block ui-w-40 ui-bordered mr-4" alt="" />
                                                    <div class="media-body">
                                                        <asp:Label ID="lblNume" runat="server" Text='<%# Eval("Nume_prdCod") %>' class="d-block text-dark"></asp:Label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">
                                                <asp:Label ID="lblPret" runat="server" Text='<%# Eval("Pret_prdCos") %>'></asp:Label>
                                            </td>
                                            <td class="text-center align-middle p-4">
                                                <asp:Label ID="lblCantitate" runat="server" Text="1"></asp:Label> <!-- Presupun că cantitatea este 1 -->
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">
                                                <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Pret_prdCos") %>'></asp:Label>
                                            </td>
                                            <td class="text-center align-middle px-0">
                                                <asp:Button ID="btnRemove" runat="server" Text="×" CommandArgument='<%# Eval("Id_prdCos") %>' OnClick="btnRemove_Click" />
                                            </td>
                                        </tr>
        </ItemTemplate>
        <FooterTemplate>
                                    </tbody>
                                </table>
                            </div>
                            <!-- / Shopping cart table -->

                          
                        </div>
                    </div>
                </ul>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    
     <div class="text-center mt-4">
                                <div class="d-inline-block">
         <h3> <asp:Label ID="lblTotalSum" runat="server" Text="Total:"></asp:Label>
          <asp:Label ID="lblTotalValue" runat="server" Text=""></asp:Label></h3>
      </div>
  </div>
    <div class="text-center mt-4">
     <div class="d-inline-block mt-3">
    <asp:Button ID="Button2" runat="server" Text="Inapoi la cumparaturi" OnClick="Button2_Click" />
        
    <asp:Button ID="Button1" runat="server" Text="Cumparare" OnClick="Button1_Click" />
         </div>
        </div>
</asp:Content>

