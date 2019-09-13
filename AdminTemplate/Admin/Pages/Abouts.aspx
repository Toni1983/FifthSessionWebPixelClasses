<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Abouts.aspx.cs" Inherits="AdminTemplate.Admin.Pages.Abouts" %>

<%@ Register Src="~/Admin/UcWebSite/UcAbout.ascx" TagPrefix="uc1" TagName="UcAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:UcAbout runat="server" id="UcAbout" />
</asp:Content>
