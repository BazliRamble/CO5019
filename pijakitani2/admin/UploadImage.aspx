<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Siteadmin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="pijakitani2.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bigimages" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <p>
    <asp:Button ID="Button2" runat="server" Text="Home Admin" OnClick="Button2_Click1" />
        </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDetail" runat="server">
    

    <asp:FileUpload ID="imageFileUpLoadControl" runat="server" />

    <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentDetail1" runat="server">
    <asp:Image ID="Image1" runat="server" />
</asp:Content>
