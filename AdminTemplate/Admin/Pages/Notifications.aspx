<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="AdminTemplate.Admin.Pages.Notifications" %>

<%@ Register Src="~/Admin/UcWebSite/UcNotifications.ascx" TagPrefix="uc1" TagName="UcNotifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:UcNotifications runat="server" id="UcNotifications" />
</asp:Content>
