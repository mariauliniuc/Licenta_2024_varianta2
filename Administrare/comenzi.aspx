<%@ Page Title="" Language="C#" MasterPageFile="~/Administrare/Admin.Master" AutoEventWireup="true" CodeBehind="comenzi.aspx.cs" Inherits="Licenta_prototip_2.Administrare.comenzi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="wrapper">

     <div class="main_content">
         <div class="header">Lista tuturor comenziilor plasate</div>
         <div class="info">
             <div class="container">
                 <div class="container" style="margin-bottom: 10px">

                     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Height="148px" Width="780px">

                          <Columns>
     <asp:BoundField DataField="Id_comanda" HeaderText="ID" ItemStyle-HorizontalAlign="Center"/>
     <asp:BoundField DataField="Nume_firmaCmd" HeaderText="Nume" ItemStyle-HorizontalAlign="Center"/>
     <asp:BoundField DataField="Adresa_firmaCmd" HeaderText="Adresa" ItemStyle-HorizontalAlign="Center"/>
     <asp:BoundField DataField="Produse_Cmd" HeaderText="Produse" ItemStyle-HorizontalAlign="Center"/>
     <asp:BoundField DataField="Total_cmd" HeaderText="Total" ItemStyle-HorizontalAlign="Center" />
                              </Columns>
                         <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                         <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                         <RowStyle ForeColor="#000066"></RowStyle>

                         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                         <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                         <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                         <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                         <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                     </asp:GridView>

                     </div>
                 </div>
             </div>
         </div>

       </div>

</asp:Content>
