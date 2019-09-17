<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcListview.ascx.cs" Inherits="JustPraktice.UcTemplates.UcListview" %>

<div>
    <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="ContentID" DataSourceID="SqlDataSource1">
        <LayoutTemplate>
            <table>
                <thead style="background-color: navy; color: white">
                        <th>Customer ID</th>
                        <th>Contact Name</th>
                        <th>Company Name</th>
                </thead>
                <tbody runat="server" id="ContentID">
                </tbody>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("CustomerID") %></td>
                <td><%# Eval("ContactName") %></td>
                <td><%# Eval("CompanyName") %></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle] FROM [Customers]"></asp:SqlDataSource>
</div>
