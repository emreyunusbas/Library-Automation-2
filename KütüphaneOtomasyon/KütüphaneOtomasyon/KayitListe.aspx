<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KayitListe.aspx.cs" Inherits="KütüphaneOtomasyon.KayitListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        th {
    text-align: left;
    padding: 10px;
    font-size: 18px;
}
        td, th {
    padding: 10px;
    font-size: 15px;
}
    </style>
    <br /><br /><br />

    <div class="row">
        <div class="col-md-8">


      
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="tc" HeaderText="TC" SortExpression="tc" />
            <asp:BoundField DataField="adSoyad" HeaderText="Ad ve Soyad" SortExpression="adSoyad" />
            <asp:BoundField DataField="yas" HeaderText="Yaş" SortExpression="yas" />
            <asp:BoundField DataField="cinsiyet" HeaderText="Cinsiyet" SortExpression="cinsiyet" />
            <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
            <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
            <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KutuphaneOtomasyonConnectionString %>" SelectCommand="SELECT [tc], [adSoyad], [yas], [cinsiyet], [telefon], [email], [adres] FROM [kayitEkle]"></asp:SqlDataSource>
  </div>
    <div class="col-md-4">
               
    <style>
        select#MainContent_txtCinsiyet {
       width: 173%;
        height: 25px !important;
}
        textarea#MainContent_txtAdres {
        width: 75%;
}
        input#MainContent_kayitSil {
    width: 170px;
}
        input#MainContent_kayitGuncelle {
    width: 170px;
}
    </style>
 

       <div class="row" style="padding-top:15px">
        <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label1" runat="server" Text="TC " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtTC" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-4">
            </div> 
           </div>
           <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label2" runat="server" Text="Ad Soyad " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-4">
            </div>
                </div>
           <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label3" runat="server" Text="Yaş " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtYas" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-4">
            </div>
                </div>
           <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label4" runat="server" Text="Cinsiyet" Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:DropDownList ID="txtCinsiyet"  runat="server" Height="100%">
                   <asp:ListItem Value="Bay">Bay</asp:ListItem>
                   <asp:ListItem>Bayan</asp:ListItem>
               </asp:DropDownList>
            </div>
           <div class="col-md-4">
            </div>
                </div>
           <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label5" runat="server" Text="Telefon " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtTelefon" TextMode="Number" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-4">
            </div>
                </div>
    <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label7" runat="server" Text="E-Mail " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-4">
               <asp:TextBox ID="txtMail" TextMode="Email" runat="server"></asp:TextBox>
            </div>
           <div class="col-md-4">
            </div>
                </div>
           <div class="row">
             <div class="col-md-4" style="text-align:right;padding-bottom:15px">
            <asp:Label ID="Label6" runat="server" Text="Adres " Font-Bold="True"></asp:Label>
            </div>
           <div class="col-md-8">
               <asp:TextBox ID="txtAdres" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
          
                </div>
           
           <div class="row" style="padding-top:20px">
             <div class="col-md-4">
            </div>  
           <div class="col-md-4" style="text-align:center">
       
               <asp:Button ID="kayitGuncelle" OnClick="kayitGuncelle_Click" CssClass="btn btn-primary btn-lg" runat="server"  Text="Kayıt Güncelle &raquo;" />
                
            </div>
                <div class="col-md-4">
            </div>
           </div>
         <div class="row" style="padding-top:20px">
             <div class="col-md-4">
                  <asp:Label ID="Label8" runat="server" Text="TC Giriniz" Font-Bold="True"></asp:Label>
            </div>  
           <div class="col-md-4" style="text-align:center">
         <asp:TextBox ID="txtTC_del" TextMode="Number" runat="server"></asp:TextBox>
                
            </div>
             <div class="col-md-4">
                  </div>
             </div>
              <div class="row" style="padding-top:20px">
             <div class="col-md-4">
                  </div>
                <div class="col-md-4">
               <asp:Button ID="kayitSil" OnClick="kayitSil_Click" CssClass="btn btn-danger btn-lg" runat="server"  Text="Kayıt Sil &raquo;" />
            </div>
                  <div class="col-md-4">
                  </div>
                  </div>

           
    </div>

        </div>
</asp:Content>
