<%@ Page Title="" Language="C#" MasterPageFile="~/Administrare/Admin.Master" AutoEventWireup="true" CodeBehind="del.aspx.cs" Inherits="Licenta_prototip_2.Administrare.del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="main_content">
            <div class="header">Sterge produse din baza de date</div>
            <div class="info">
                <div class="container">
                    
                        <div class="card-group">
                            <div class="align-items-center">
                                <asp:Label ID="lblAlgCtg" runat="server" Text="Alegeti categoria:" Font-Size="Medium"></asp:Label>
                                <asp:DropDownList ID="drpDwnLstCategorie" runat="server" Font-Size="Medium">
                                </asp:DropDownList>
                                <asp:Button ID="btnAfisare" runat="server" Text="Afiseaza categoria de produse" OnClick="btnAfisare_Click" Font-Size="Medium" Height="45px" Width="250px" />
                                </div>
                            </div>
                       
                                <asp:Label ID="lblCautare" runat="server" Text="Cauta produsul:" Font-Size="Medium"></asp:Label>
                                <asp:TextBox ID="txtCautare" runat="server" Height="35px" Width="200px" Font-Size="Medium"></asp:TextBox>
                                <asp:Button ID="btnCautare" runat="server" Text="Cauta" Font-Size="Large" Height="45px" Width="100px" />
                    <asp:Label ID="l3" runat="server" Text="Afisare status"></asp:Label>
                    <%--<asp:Button ID="btnStergere" runat="server" Text="Sterge produsul" OnClick="btnStergere_Click" CssClass="p-0" Font-Size="Medium" Font-Underline="False" Height="60px" Width="130px" />--%>   
                    <div class="container" style="margin-bottom: 10px">
                        <asp:GridView ID="GridView1" runat="server"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                            AutoGenerateColumns="False" >
                            <%--design--%>
                            <Columns>
                                <asp:BoundField DataField="Id_prod" HeaderText="ID" />
                                <asp:BoundField DataField="Nume_prod" HeaderText="Nume" />
                                <asp:BoundField DataField="Descriere_prod" HeaderText="Descriere" />
                                <asp:BoundField DataField="Pret_prod" HeaderText="Pret" />
                                <asp:BoundField DataField="Cantitate_prod" HeaderText="Cantitate" />
                                <asp:TemplateField HeaderText="Imagine">
                                    <ItemTemplate>
                                        <img src="../img2/<%#Eval("Img_prod") %>" style="width: 80px; height: 100px" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" Text="Sterge" OnClick="Button1_Click" />
                                    </ItemTemplate> 

                                </asp:TemplateField>

                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
