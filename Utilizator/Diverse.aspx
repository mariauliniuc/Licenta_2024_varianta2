<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Diverse.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Diverse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- link de la css ul acestei pagini-->
        <link href="../Bootstrap/css/style-menu.css" rel="stylesheet" />
        <!-- de aici vreau sa inceapa lista cu produsele-->

        <div class="container py-5">
            <h1 class="text-center">Diverse</h1>
            <div class="row row-cols-1 row-cols-md-3 g-4 py-5">

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/casti1.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Iphone 14 Pro</h5>
                            <p class="card-text">
                                Iphone 14 Pro, 128GB, Alb
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="lblAdd1" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%-- <button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd1" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/casti2.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Huawei P30</h5>
                            <p class="card-text">
                                Huawei P30, 5GB RAM, Dual sim, Albastru
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="lblAdd2" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%--<button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd2" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/casti3.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Xiaomi</h5>
                            <p class="card-text">
                                Xiaomi, 6GB RAM, Negru
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="lblAdd3" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%--<button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd3" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/adaptor1.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Iphone 12 mini</h5>
                            <p class="card-text">
                                Iphone 12 mini, 64GB, Mov
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="lblAdd4" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%--<button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd4" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/adaptor2.jpg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Iphone XS</h5>
                            <p class="card-text">
                                Iphone XS, 64GB, Alb
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="lblAdd5" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%--<button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd5" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/incarcator1.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title">Iphone 11 Pro Max</h5>
                            <p class="card-text">
                                Iphone 11 Pro Max, 256BG, Galben
                            </p>
                        </div>
                        <div class="mb-5 d-flex justify-content-around">
                            <h3>
                                <asp:Label ID="Label6" runat="server" Text="500 RON"></asp:Label>
                            </h3>
                            <%--<button class="btn btn-primary">Buy Now</button>--%>
                            <asp:Button ID="btnAdd6" runat="server" Text="Adauga in cos" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--aici vreau sa se termine lista cu produse-->
  
</asp:Content>
