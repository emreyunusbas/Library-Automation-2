<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="KütüphaneOtomasyon.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/assets/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="Content/assets/still.css" />
    <script src="Content/assets/bootstrap.bundle.min.js" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
        .button_login{
            background-color: #0d6efd; color: white;
        }
    </style>
</head>
<body>
         <!--Nav start-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid" style="width: 90%;">
            <a class="navbar-brand" href="index.html">
                <img class="img-fluid logo" src="assets/img/lg.png" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item d-flex align-items-center ">

                        <a class="nav-link  " aria-current="page" href="Anasayfa.aspx">
                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 576 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z" /></svg>
                            Anasayfa
                        </a>

                        <div class="vr"></div>
                    </li>

                    <li class="nav-item d-flex align-items-center ">

                        <a class="nav-link  active" aria-current="page" href="About.aspx">
                             <svg style=" margin-top: -5px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-layout-wtf" viewBox="0 0 16 16">
                                <path d="M5 1v8H1V1h4zM1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H1zm13 2v5H9V2h5zM9 1a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H9zM5 13v2H3v-2h2zm-2-1a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1H3zm12-1v2H9v-2h6zm-6-1a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1H9z" />
                            </svg>
                            Hakkımızda
                        </a>

                        <div class="vr"></div>
                    </li>
                   
                    <li class="nav-item d-flex align-items-center">
                        <a class="nav-link  active" aria-current="page" href="Contact.aspx">
                            <svg style=" margin-top: -5px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-mailbox" viewBox="0 0 16 16">
                                <path d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z" />
                                <path d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854zM5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z" />
                            </svg>
                            İletişim
                        </a>
                        <div class="vr"></div>
                    </li>
                    <li class="nav-item d-flex align-items-center">
                        <a class="nav-link  active" aria-current="page" href="Admin.aspx">
                           <i class="fa fa-user"></i>
                            Admin
                        </a>
                        <div class="vr"></div>
                    </li>
                </ul>
                

            </div>
        </div>

    </nav>
    <!--Nav end-->
    <form id="form1" runat="server">
         <div class="container  mt-3 mb-3">
        <!--<h2 class="card-title">ÜRÜNLER</h2>-->
        <div class="row">
           
            <!-- CONTENT -->
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 mt-3">


                        </div>
                        <div class="col-lg-6 mt-3">
                            <h3>Giriş</h3>
                          
                                <div class="row">

                                    <div class="form-group col-md-12  mb-3">
                                          <asp:TextBox ID="txtKullaniciAdı"  CssClass="form-control required email" runat="server" Placeholder="Kullanıcı Adı Giriniz.."></asp:TextBox>
<%--                                        <input type="email" aria-required="true" required name="widget-contact-form-email" class="form-control required email" placeholder="Email Giriniz..">--%>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <asp:TextBox ID="txtSifre" TextMode="Password"  CssClass="form-control required email" runat="server" Placeholder="Şifre Giriniz.."></asp:TextBox>
                                       <%-- <input type="password" aria-required="true" required name="widget-contact-form-name" class="form-control required name" placeholder="Şifre Giriniz..">--%>
                                    </div>
                                </div>
                                
                                <div class="form-group mb-3">
                                    <script src='https://www.google.com/recaptcha/api.js'></script>
                                    <div class="g-recaptcha" data-sitekey="6LddCxAUAAAAAKOg0-U6IprqOZ7vTfiMNSyQT2-M"></div>
                                </div>
                            <asp:Button ID="Login" OnClick="Login_Click" CssClass="btn .button_login btn-success" runat="server" Text="Gönder" />
             <%--                   <button class="btn" type="submit" id="form-submit" style=" "><i class="fa fa-paper-plane"></i>&nbsp;Gönder</button>--%>
                        
                        </div>
                        <div class="col-lg-3 mt-3">


                        </div>
                    </div>
                </div>
            </section> <!-- end: Content -->
        </div>
    </div>
    </form>
</body>
</html>
