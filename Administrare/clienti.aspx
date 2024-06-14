<%@ Page Title="" Language="C#" MasterPageFile="~/Administrare/Admin.Master" AutoEventWireup="true" CodeBehind="clienti.aspx.cs" Inherits="Licenta_prototip_2.Administrare.Clienti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">

        <div class="main_content">
            <div class="header">Informatiile din baza de date despre clienti</div>
            <div class="info">
                <div class="container">
                    <div class="container" style="margin-bottom: 10px">

                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Height="148px" Width="780px">

                            <Columns>
                                <asp:BoundField DataField="Id_client" HeaderText="ID" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Nume_firma" HeaderText="Nume" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Adr_mail" HeaderText="Email" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Nr_tel" HeaderText="Numar de telefon" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="CUI" HeaderText="CUI" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Adresa" HeaderText="Adresa" ItemStyle-HorizontalAlign="Center" />

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
