<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="FrmPrincipal.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.FrmPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      
             <!--partea superioara cu nav barul si logoul -->
            
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
           

    <!-- aici ar trebui sa se incheie footer-ul pt pagina-->
 
  
</asp:Content>
