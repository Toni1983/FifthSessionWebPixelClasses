<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AdminTemplate.Admin.Pages.Products" %>

<%@ Register Src="~/Admin/UcWebSite/UcProducts.ascx" TagPrefix="uc1" TagName="UcProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:UcProducts runat="server" id="UcProducts" />
</asp:Content>
