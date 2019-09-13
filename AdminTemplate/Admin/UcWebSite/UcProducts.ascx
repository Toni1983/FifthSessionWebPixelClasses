<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcProducts.ascx.cs" Inherits="AdminTemplate.Admin.UcWebSite.UcProducts" %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtProductName" runat="server" Width="426px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Unit Price"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtUnitPrice" runat="server" Width="427px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Units In Stock"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtUnitsInStock" runat="server" Width="426px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server" Height="199px" TextMode="MultiLine" Width="435px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label></td>
        <td>
            <asp:FileUpload ID="fuImage" runat="server" /></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Is Active?"></asp:Label></td>
        <td>
            <asp:CheckBox ID="chkIsActive" runat="server" /></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" /></td>
    </tr>
</table>
