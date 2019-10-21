<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Siteadmin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pijakitani2.admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bigimages" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDetail" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="PijaName" HeaderText="PijaName" SortExpression="PijaName" />
            <asp:BoundField DataField="PijaPrice" HeaderText="PijaPrice" SortExpression="PijaPrice" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" HeaderText="Image" Text="Set Image" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1822570_db_5019_asgConnectionString %>" DeleteCommand="DELETE FROM [pijatbl] WHERE [ID] = @original_ID AND (([PijaName] = @original_PijaName) OR ([PijaName] IS NULL AND @original_PijaName IS NULL)) AND (([PijaPrice] = @original_PijaPrice) OR ([PijaPrice] IS NULL AND @original_PijaPrice IS NULL))" InsertCommand="INSERT INTO [pijatbl] ([ID], [PijaName], [PijaPrice]) VALUES (@ID, @PijaName, @PijaPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [pijatbl]" UpdateCommand="UPDATE [pijatbl] SET [PijaName] = @PijaName, [PijaPrice] = @PijaPrice WHERE [ID] = @original_ID AND (([PijaName] = @original_PijaName) OR ([PijaName] IS NULL AND @original_PijaName IS NULL)) AND (([PijaPrice] = @original_PijaPrice) OR ([PijaPrice] IS NULL AND @original_PijaPrice IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PijaName" Type="String" />
            <asp:Parameter Name="original_PijaPrice" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="PijaName" Type="String" />
            <asp:Parameter Name="PijaPrice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PijaName" Type="String" />
            <asp:Parameter Name="PijaPrice" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PijaName" Type="String" />
            <asp:Parameter Name="original_PijaPrice" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
    <br />
    </asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentDetail1" runat="server">
</asp:Content>
