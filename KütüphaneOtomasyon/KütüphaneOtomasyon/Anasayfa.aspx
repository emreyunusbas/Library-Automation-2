<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="KütüphaneOtomasyon.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 

     <link href="Content/assets/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="Content/assets/still.css" />
    <script src="Content/assets/bootstrap.bundle.min.js" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
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
   <div class="container" >
        <section>
            <div id="carInd" class="carousel slide mt-2" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" class="active " data-bs-target="#carInd" data-bs-slide-to="0"></button>
                    <button type="button" data-bs-target="#carInd" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#carInd" data-bs-slide-to="2"></button>
                </div>
                <div class="carousel-inner">
                     <div class="carousel-item active">
                       <img src="Content/assets/img/kutuphane-2.jpg" class="d-block w-100" alt="slider resmi">
                    </div>
                    <div class="carousel-item ">
                        <img src="Content/assets/img/kutuphane-1.png" class="d-block w-100" alt="slider resmi">
                    </div>
                   
                    <div class="carousel-item ">
                        <img src="Content/assets/img/kutuphane-3.jpg" class="d-block w-100" alt="slider resmi">
                    </div>
                </div>
                <button type="button" class="carousel-control-prev" data-bs-target="#carInd" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button type="button" class="carousel-control-next" data-bs-target="#carInd" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>

            </div>
        </section>

    </div>
     <div class="container" >
        <section class="mt-1 p-4">
            <div class="d-flex justify-content-center p-4">
                <h2>Haberler / Duyurular</h2>
            </div>
            <div class="row ">
                <div class="card col-md-4 p-1">
                    <img src="Content/assets/img/kutuphane-duyuru-1.jpg" class="img-fluid" alt="blog resmi">
                    <div class="card-body">
                        <div class="card-title"> Duyurular </div>
                        <p class="card-text">Lorem ipsum dolor</p>
                        <a href="#" class="btn btn-primary">Daha Fazla</a>
                    </div>
                </div>

                <div class="card col-md-4 p-1">
                    <img src="Content/assets/img/kutuphane-duyuru-2.jpg" class="img-fluid" alt="blog resmi">
                    <div class="card-body">
                        <div class="card-title"> Duyurular 1</div>
                        <p class="card-text">Lorem ipsum dolor</p>
                        <a href="#" class="btn btn-primary">Daha Fazla</a>
                    </div>
                </div>

                <div class="card col-md-4 p-1">
                    <img src="Content/assets/img/kutuphane-duyuru-3.png" class="img-fluid" alt="blog resmi">
                    <div class="card-body">
                        <div class="card-title">Duyurular 2</div>
                        <p class="card-text">Lorem ipsum dolor</p>
                        <a href="#" class="btn btn-primary">Daha Fazla</a>
                    </div>
                </div>

            </div>

        </section>

    </div>
</body>
</html>
