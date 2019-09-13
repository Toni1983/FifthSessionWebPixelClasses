<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OzanTemplate.Default" %>

<%@ Register Src="~/UcTemplate/UcSlider.ascx" TagPrefix="uc1" TagName="UcSlider" %>
<%@ Register Src="~/UcTemplate/UcIntroText.ascx" TagPrefix="uc1" TagName="UcIntroText" %>
<%@ Register Src="~/UcTemplate/UcFeatured.ascx" TagPrefix="uc1" TagName="UcFeatured" %>
<%@ Register Src="~/UcTemplate/UcExpertises.ascx" TagPrefix="uc1" TagName="UcExpertises" %>
<%@ Register Src="~/UcTemplate/UcClientChoose.ascx" TagPrefix="uc1" TagName="UcClientChoose" %>
<%@ Register Src="~/UcTemplate/UcFreeConsultation.ascx" TagPrefix="uc1" TagName="UcFreeConsultation" %>






<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSlider" runat="server">
    <uc1:UcSlider runat="server" id="UcSlider" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:UcIntroText runat="server" id="UcIntroText" />
    <uc1:UcFeatured runat="server" id="UcFeatured" />
    <uc1:UcExpertises runat="server" id="UcExpertises" />
    <uc1:UcClientChoose runat="server" id="UcClientChoose" />
    <uc1:UcFreeConsultation runat="server" id="UcFreeConsultation" />
</asp:Content>
