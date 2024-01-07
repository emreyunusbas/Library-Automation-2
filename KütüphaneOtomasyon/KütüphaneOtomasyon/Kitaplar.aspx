<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kitaplar.aspx.cs" Inherits="KütüphaneOtomasyon.Kitaplar" %>
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
        input#MainContent_kitapAra {
    width: 90%;
}
        input#MainContent_kitapSil {
    width: 90%;
}
    </style>
    <br /><br /><br />
     <div class="row">
        <div class="col-md-4">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="kitapAdi" HeaderText="Kitap Adı" SortExpression="kitapAdi" />
            <asp:BoundField DataField="konu" HeaderText="Konu" SortExpression="konu" />
            <asp:BoundField DataField="yil" HeaderText="Yilı" SortExpression="yil" />
            <asp:BoundField DataField="kitapNo" HeaderText="Kitap No" SortExpression="kitapNo" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="Data Source=ASUS-PC\SQLEXPRESS;Initial Catalog=KutuphaneOtomasyon;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [kitapAdi], [konu], [yil], [kitapNo] FROM [kitapEkle]"></asp:SqlDataSource>
            
        
        </div>
         
        <div class="col-md-2">
            <div class="row">
              <asp:Label ID="Label1" runat="server" Text="Kitap No " Font-Bold="True"></asp:Label>
<br />
               <asp:TextBox ID="txtkitapNo" TextMode="Number" runat="server"></asp:TextBox>
<br /><br>
                 <asp:Button ID="kitapAra" OnClick="kitapAra_Click" CssClass="btn btn-primary btn-lg" runat="server"  Text="Kitap Ara &raquo;" />

            </div>
              </div>  
          <div class="col-md-2">
               <div class="row">
              <asp:Label ID="Label2" runat="server" Text="Kitap No " Font-Bold="True"></asp:Label>
<br />
               <asp:TextBox ID="txtkitapNo_Sil" TextMode="Number" runat="server"></asp:TextBox>
<br /><br>
                 <asp:Button ID="kitapSil" OnClick="kitapSil_Click" CssClass="btn btn-danger btn-lg" runat="server"  Text="Kitap Sil &raquo;" />

            </div>
            </div>
       
         


    </div>

</asp:Content>
