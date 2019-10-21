<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="pijakitani2.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    PIJANI KITANI HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PIJA KITANI HOME
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bigimages" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    OUR SPECIAL PIJA :-<br />


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDetail" runat="server">

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
         <HeaderTemplate>
                  <div>
              </HeaderTemplate>
              <ItemTemplate>
                  <div class="column"><a href="<%#Eval("ID", "./product.aspx?ID={0}") %>">
                      <img src="<%#Eval("ID", "./images/products/{0}.jpg") %>" style="width:100%" border="50" />
                      <div class="bottom-right"><center><strong><span style="background-color: mistyrose"><%#Eval("PijaName") %></span></strong><center></div>
                      <div class="bottom-right"><center><strong><span style="background-color: mistyrose">Prie: BND$<%#Eval("PijaPrice") %></span></strong><center></div>                      <br></br>
                      <br></br>
             </a>     </div>
              </ItemTemplate>
              <FooterTemplate>
                  </div>
              </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1822570_db_5019_asgConnectionString %>" SelectCommand="SELECT * FROM [pijatbl]"></asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentDetail1" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
