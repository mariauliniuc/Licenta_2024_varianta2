<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Cont.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Cont" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Bootstrap/css/style2.css" rel="stylesheet" />
    <div class="container light-style flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4">Setarile contului</h4>
        <div class="card overflow-hidden">
            <div class="row no-gutters row-bordered row-border-light">
                <div class="col-md-3 pt-0">
                    <div class="list-group list-group-flush">
                        <a class="list-group-item list-group-item-action active" data-toggle="list">Informatii cont: </a>
                    </div>
                </div>
                <!--aici incepe sectiunea de informatii cont -->
                <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                 <%--   <asp:Label ID="lblNumeFirma" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblNrTel" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblCUI" runat="server" Text=""></asp:Label>  
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblAdresa" runat="server" Text="Label"></asp:Label>--%>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" ForeColor="#333333" Height="104px" Width="622px">
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Nume_firma") %>'></asp:Label>/asp:Label>
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Adr_mail") %>'></asp:Label>/asp:Label>
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Adr_mail") %>'></asp:Label>/asp:Label>
                                            <br />
                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("CUI") %>'></asp:Label>/asp:Label>
                                            <br />
                                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Adresa") %>'></asp:Label>/asp:Label>
                                            
                                        </ItemTemplate>
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    </asp:FormView>
                                </div>
                              
                            </div>
                        </div>
                    </div>
                </div>
                <!--aici se termina sectiunea de informatii cont -->

            </div>
        </div>
    </div>

    <div class="container light-style flex-grow-1 container-p-y">
        <div class="m-3">
            <asp:Button ID="btnExit" runat="server" Text="Deconectare" BackColor="#0066FF" Font-Bold="True" ForeColor="White" OnClick="btnExit_Click" />
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../Bootstrap/js/bootstrap.js" type="text/javascript"></script>
</asp:Content>
