<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KütüphaneOtomasyon._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Hoşgeldiniz..</h1>
        <p class="lead">Kütüphane Otomasyon sistemine kayıt olabilir, kitap ekleyebilir, kitapları görebilirsiniz </p>
    </div>

     

    <div class="row">
        <div class="col-md-4">
            <h2>Üyelik İşlemleri</h2>
            <p>
               Otomasyona üyelik işlemlerini yapabilirsiniz. </p>
            <p style="width:50%">
                <a class="btn btn-primary btn-lg" style="width: 100%;" href="KayıtEkle.aspx">Kayıt Ekle &raquo;</a>
            </p>
             <p style="width:50%">
                 <a href="KayitListe.aspx" style="width: 100%;" class="btn btn-primary btn-lg">Kayıt Listele &raquo;</a>
             </p>
        </div>
        <div class="col-md-4">
            <h2>Kitap İşlemleri</h2>
            <p>
               Otomasyona kitap ekleyebilir ve listeleyebilirsiniz
            </p>
            <p style="width:50%">
                <a  class="btn btn-primary btn-lg" style="width: 100%;" href="KitapEkle.aspx">Kitap Ekle &raquo;</a>
            </p>
             <p style="width:50%">
                 <a href="Kitaplar.aspx"  class="btn btn-primary btn-lg" style="width: 100%;">Kitap Listele &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Emanet Kitap İşlemleri</h2>
            <p >
                Kitaplarınızı emanete verebilirsiniz ve listeleyebilirsiniz.
            </p>
            <p style="width:50%">
                <a class="btn btn-primary btn-lg" style="width: 100%;" href="KitapEkle.aspx">Kitap Ver &raquo;</a>
            </p>
             <p style="width:50%">
                 <a href="Kitaplar.aspx" style="width: 100%;" class="btn btn-primary btn-lg">Kitap Listele &raquo;</a>
             </p>
        </div>
    </div>

</asp:Content>
