<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Cont.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Cont" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Bootstrap/css/style2.css" rel="stylesheet" />
    <div class="container light-style flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4">Setarile contului
        </h4>
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
                                    <label class="form-label">Numele firmei: </label>
                                    <asp:TextBox ID="txtBoxNumeFirma" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail: </label>
                                    <asp:TextBox ID="txtBoxEmail" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label class="form-label">Numar de telefon: </label>
                                    <asp:TextBox ID="txtBoxNrTel" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Codul de inregistrare unic: </label>
                                    <asp:TextBox ID="txtBoxCUI" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Adresa: </label>
                                    <asp:TextBox ID="txtBoxAdresa" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Judet: </label>
                                    <asp:TextBox ID="txtBoxJud" runat="server" BorderColor="White" BorderStyle="None"></asp:TextBox>
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
