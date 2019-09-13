<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TestingListView.aspx.cs" Inherits="JustPraktice.TestingListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page">
        <table>
            <tr>
                <td>
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <%#Eval("Name") %>
                        </ItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:ListView ID="ListView2" runat="server">
                        <ItemTemplate>
                            <%#Eval("AuthorId") %>
                        </ItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:ListView ID="ListView3" runat="server">
                        <ItemTemplate>
                            <%#Eval("PublisherId") %>
                        </ItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
