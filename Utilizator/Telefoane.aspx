<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Telefoane.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Telefoane" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

        <!-- link de la css ul acestei pagini-->
        <link href="../Bootstrap/css/style-menu.css" rel="stylesheet" />

        <!--partea superioara cu nav barul si logoul -->
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="../Bootstrap/images/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                    Magazinul tau online
                </a>
            </div>
        </nav>
        <!-- partea cu acasa, si dropdownul-->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">

            <div class="container-fluid">
                <a class="navbar-brand" href="#">Bine ati venit</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                <span class="material-symbols-outlined">home</span></a>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span class="material-symbols-outlined">menu</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Telefoane</a></li>
                                <li><a class="dropdown-item" href="#">Laptopuri</a></li>
                                <li><a class="dropdown-item" href="#">Diverse</a></li>

                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#"></a>
                                <span class="material-symbols-outlined">shopping_cart</span>
                        </li>

                    </ul>

                    <button class="btn btn-outline-success" type="submit">
                        <span class="material-symbols-outlined">person</span>
                    </button>
                </div>
            </div>
        </nav>

        <!-- de aici vreau sa inceapa lista cu produsele-->

        <div class="container py-5">
            <h1 class="text-center">Telefoane</h1>
            <div class="row row-cols-1 row-cols-md-3 g-4 py-5">

                <div class="col">
                    <div class="card">
                        <img src="../Bootstrap/images/tlf1.jpg" class="card-img-top" />
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
                        <img src="../Bootstrap/images/tlf2.jpg" class="card-img-top" />
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
                        <img src="../Bootstrap/images/tlf3.jpg" class="card-img-top" />
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
                        <img src="../Bootstrap/images/tlf11.png" class="card-img-top" />
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
                        <img src="../Bootstrap/images/tlf9.jpg" class="card-img-top" />
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
                        <img src="../Bootstrap/images/tlf10.jpg" class="card-img-top" />
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
    </form>
</asp:Content>
