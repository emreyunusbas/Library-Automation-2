<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="KütüphaneOtomasyon.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <%-- <h2><%: Title %></h2>
    <h3>İletişim Sayfası</h3>
    <address>
        İletişim Adresi girebilirsiniz<br />
       İl/İlçe<br />
        <abbr title="Phone">Telefon:</abbr>
        0555 555 55 55
    </address>

    <address>
        <strong>Info:</strong>   <a href="mailto:Support@example.com">info@example.com</a><br />
        <strong>Destek:</strong> <a href="mailto:Marketing@example.com">destek@example.com</a>
    </address>--%>
    <br />
     <section class="no-padding">
                <!-- Google Map -->
                <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3142877.480107067!2d32.6485874!3d39.7123217!3m2!1i1024!2i768!4f13.1!5e0!3m2!1str!2str!4v1691759619774!5m2!1str!2str" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <!-- end: Google Map -->
            </section>
    <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mt-3">
                            <h3 class="text-uppercase">İLETİŞİM BİLGİLERİ</h3>
                            <p>The most happiest time of the day!. Suspendisse condimentum porttitor cursus. Duis nec nulla turpis. Nulla lacinia laoreet odio, non lacinia nisl malesuada vel. Aenean malesuada fermentum bibendum.</p>
                            <p>The most happiest time of the day!. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. A true story, that never been told!. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.</p>
                            <div class="row m-t-40">
                                <div class="col-lg-6">
                                    <address>
                                        <strong>Kütüphane, İstanbul</strong><br>
                                        795 Folsom Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        <abbr title="Phone">P:</h4> (123) 456-7890
                                    </address>
                                </div>
                                <div class="col-lg-6">
                                    <address>
                                        <strong>Kütüphane, Merkez</strong><br>
                                        795 Folsom Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        <abbr title="Phone">P:</h4> (123) 456-7890
                                    </address>
                                </div>
                            </div>
                           
                        </div>
                        <div class="col-lg-6 mt-3">
                            <h3 class="text-uppercase">İLETİŞİM FORMU</h3>
                            <form class="widget-contact-form" novalidate action="include/contact-form.php" role="form" method="post">
                                <div class="row">
                                    <div class="form-group col-md-6  mb-3">

                                        <input type="text" aria-required="true" required name="widget-contact-form-name" class="form-control required name" placeholder="Adınız ve Soyadınız">
                                    </div>
                                    <div class="form-group col-md-6  mb-3">

                                        <input type="email" aria-required="true" required name="widget-contact-form-email" class="form-control required email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12 mb-3">

                                        <input type="text" name="widget-contact-form-subject" required class="form-control required" placeholder="Konu..">
                                    </div>
                                </div>
                                <div class="form-group mb-3">

                                    <textarea type="text" name="widget-contact-form-message" required rows="5" class="form-control required" placeholder="Mesajınız"></textarea>
                                </div>
                                <div class="form-group mb-3">
                                    <script src='https://www.google.com/recaptcha/api.js'></script>
                                    <div class="g-recaptcha" data-sitekey="6LddCxAUAAAAAKOg0-U6IprqOZ7vTfiMNSyQT2-M"></div>
                                </div>
                                <button class="btn" type="submit" id="form-submit" style=" background-color: #0d6efd; color: white;"><i class="fa fa-paper-plane"></i>&nbsp;Gönder</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
</asp:Content>
