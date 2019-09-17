<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AnotherListviewTest.aspx.cs" Inherits="JustPraktice.AnotherListviewTest" %>

<%@ Register Src="~/UcTemplates/UcListview.ascx" TagPrefix="uc1" TagName="UcListview" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UcListview runat="server" id="UcListview" />
</asp:Content>
