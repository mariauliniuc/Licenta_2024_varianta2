<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="FrmPrincipal.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.FrmPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">     
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
                          <a class="nav-link active" aria-current="page" href="#">
                              <span class="material-symbols-outlined">shopping_cart</span></a>
                        </li>

                  </ul>

                    <button class="btn btn-outline-success" type="submit">
                        <span class="material-symbols-outlined">person</span>
                    </button>
                </div>
              </div>
            </nav>
            <!--final parte superioara cu navbar-->

            <!--aici adaug carousel doar pentru prima pagina, FrmPrincipal -->
            <div id="carouselExampleDark" class="carousel carousel-dark slide">
              <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                      </div>
                      <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                          <img src="../Bootstrap/images/crs1.png" class="d-block w-100" alt="...">
                          <div class="carousel-caption d-none d-md-block">
        
                          </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                          <img src="../Bootstrap/images/laptopuri.jpg" class="d-block w-100" alt="...">
                          <div class="carousel-caption d-none d-md-block">
        
                          </div>
                        </div>
                        <div class="carousel-item">
                          <img src="../Bootstrap/images/imprimanta.jpg" class="d-block w-75" alt="...">
                          <div class="carousel-caption d-none d-md-block">
       
                          </div>
                        </div>
                      </div>
                      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                      </button>
                    </div>

            <!--aici se incheie carouselul -->
          <!-- incercat sa facem un footer pentru pagina-->
            <footer class="bg-light text-dark pt-5 pb-4">
                <div class="footer-big">
            <div class="container text-center text-md-left">
                <div class="row text-center text-md-left">

                    <div class="col-sm-6 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h5 class="text-uppercase mb-4 font-weight-bold text-info">Despre noi</h5>
                        <hr class="mb-4">
                        <p>Descriere pentru site-ul de licenta</p>
                    </div>

                    <div class="col-sm-6 col-lg-3 col-xl-2 mx-auto mt-3">
                        <h5 class="text-uppercase mb-4 font-weight-bold text-info">Ajutor</h5>
                        <hr class="mb-4" />
                        <p>
                            <a href="#" class="text-dark" style="text-decoration:none">Contul tau</a>
                        </p>
                        <p>
                            <a href="#" class="text-dark" style="text-decoration:none">Comanda ta</a>
                        </p>
                         <p>
                             <a href="#" class="text-dark" style="text-decoration:none">Gestioneaza contul</a>
                         </p>
                         
                    </div>

                     <div class="col-sm-26 col-lg-3 col-xl-2 mx-auto mt-3">
                         <h5 class="text-uppercase mb-4 font-weight-bold text-info">Contact</h5>
                         <hr class="mb-4" />
                         <p>
                             <li class="fas fa-home mr-3"></li>Timisoara
                         </p>
                          <p>
                             <li class="fas fa-envelope mr-3"></li>maria.uliniuc@student.upt.ro
                         </p>
                          <p>
                             <li class="fas fa-phone mr-3"></li>+40712 345 678
                         </p>
                     </div>


                </div>
            </div>
                    </div>
      </footer>

    <!-- aici ar trebui sa se incheie footer-ul pt pagina-->
 
    </form>
</asp:Content>
