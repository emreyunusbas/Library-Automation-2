<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KitapEkle.aspx.cs" Inherits="KütüphaneOtomasyon.KitapEkle" %>
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
            <asp:Label ID="Label1" runat="server" Text="Kitap No " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtKitapNo" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div> 
           </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label2" runat="server" Text="Kitap Adı " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtkitapAdi" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label3" runat="server" Text="Konu " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtkonu"  runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
           
           <div class="row">
             <div class="col-md-2" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label5" runat="server" Text="Yıl " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtyil" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-6">
            </div>
                </div>
   
           <div class="row" style="padding-top:20px">
            
           <div class="col-md-6" style="text-align:center">
       
               <asp:Button ID="kitapEkle" OnClick="kitapEkle_Click" CssClass="btn btn-primary btn-lg" runat="server"  Text="Kitap Ekle &raquo;" />
                
            </div>
                 <div class="col-md-6">
            </div>
           </div>
         
</asp:Content>
