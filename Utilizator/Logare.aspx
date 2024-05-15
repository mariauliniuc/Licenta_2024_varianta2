<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizator/Principal.Master" AutoEventWireup="true" CodeBehind="Logare.aspx.cs" Inherits="Licenta_prototip_2.Utilizator.Logare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <link href="../Bootstrap/css/style.css" rel="stylesheet">
        
            <div class="container-fluid">
                <div class="row">
                    <h2 >Logare</h2><hr>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">E-mail</label>
                        <input type="text" class="form-control" id="formGroupExampleInput" >
                      </div>
                      <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Parola</label>
                        <input type="text" class="form-control" id="formGroupExampleInput2" >
                      </div>
                      <p><a href="">Ai uitat parola?</a></p>
                      <div class="d-flex">
                        <button class="btn btn-dark">Inregistrare</button>
                         <button class="btn btn-secondary ms-auto">Administrare</button>
                        <button class="btn btn-success ms-auto">Logare</button>

                      </div>
                </div>
            </div>

          
    

</asp:Content>
