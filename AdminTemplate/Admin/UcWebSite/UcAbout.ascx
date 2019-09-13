<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcAbout.ascx.cs" Inherits="AdminTemplate.Admin.UcWebSite.UcAbout" %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="About"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="428px" Width="747px"></asp:TextBox></td>
    </tr>
    <tr>
        <td></td>
        <td align="right">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
    </tr>
</table>
