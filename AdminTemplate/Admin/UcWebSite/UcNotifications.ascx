<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNotifications.ascx.cs" Inherits="AdminTemplate.Admin.UcWebSite.UcNotifications" %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtTitle" runat="server" Width="353px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" Height="161px" Width="361px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Is Active?"></asp:Label></td>
        <td>
            <asp:CheckBox ID="chkIsActive" runat="server" /></td>
    </tr>
    <tr>
        <td></td>
        <td align="right">
            <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" /></td>
    </tr>
</table>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DenemeDbEntities" DefaultContainerName="DenemeDbEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Notifications" EntityTypeFilter="Notifications">
</asp:EntityDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="NotificationId" DataSourceID="EntityDataSource1" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
        <asp:BoundField DataField="Title" HeaderText="Başlık" SortExpression="Title" />
        <asp:BoundField DataField="Description" HeaderText="Açıklama" SortExpression="Description" />
        <asp:BoundField DataField="RegisterDate" HeaderText="Kayıt Tarihi" SortExpression="RegisterDate" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>

