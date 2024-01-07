<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KayıtEkle.aspx.cs" Inherits="KütüphaneOtomasyon.KayıtEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
          
    <style>
        select#MainContent_txtCinsiyet {
    width: 48%;
        height: 25px !important;
}
        textarea#MainContent_txtAdres {
    width: 48%;
}
    </style>
 

       <div class="row" style="padding-top:15px">
        <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label1" runat="server" Text="TC " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtTC" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div> 
           </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label2" runat="server" Text="Ad Soyad " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label3" runat="server" Text="Yaş " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtYas" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label4" runat="server" Text="Cinsiyet" Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:DropDownList ID="txtCinsiyet"  runat="server" Height="100%">
                   <asp:ListItem Value="Bay">Bay</asp:ListItem>
                   <asp:ListItem>Bayan</asp:ListItem>
               </asp:DropDownList>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label5" runat="server" Text="Telefon " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtTelefon" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
    <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label7" runat="server" Text="E-Mail " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtMail" TextMode="Email" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label6" runat="server" Text="Adres " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtAdres" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           
           <div class="row" style="padding-top:20px">
            
           <div class="col-md-6" style="text-align:center">
       
               <asp:Button ID="kayitEkle" OnClick="kayitEkle_Click" CssClass="btn btn-primary btn-lg" runat="server"  Text="Kayıt Listele &raquo;" />
                
            </div>
                 <div class="col-md-6">
            </div>
           </div>
         
</asp:Content>
