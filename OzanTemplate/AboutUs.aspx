<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="OzanTemplate.AboutUs" %>

<%@ Register Src="~/UcTemplate/UcAboutContactSlider.ascx" TagPrefix="uc1" TagName="UcAboutContactSlider" %>
<%@ Register Src="~/UcTemplate/UcIntroText.ascx" TagPrefix="uc1" TagName="UcIntroText" %>
<%@ Register Src="~/UcTemplate/UcOurTeams.ascx" TagPrefix="uc1" TagName="UcOurTeams" %>
<%@ Register Src="~/UcTemplate/UcFeatured.ascx" TagPrefix="uc1" TagName="UcFeatured" %>




<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSlider" runat="server">
    <uc1:UcAboutContactSlider runat="server" id="UcAboutContactSlider" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:UcIntroText runat="server" id="UcIntroText" />
    <uc1:UcOurTeams runat="server" id="UcOurTeams" />
    <uc1:UcFeatured runat="server" id="UcFeatured" />
</asp:Content>
