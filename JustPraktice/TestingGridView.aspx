<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TestingGridView.aspx.cs" Inherits="JustPraktice.TestingGridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Image Grid</h1>
        <p>Click on the button to change the Grid View</p>
        <div class="icons">
            <i class="fa fa-square" onclick="full()"></i>
            <i class="fa fa-th-large"onclick="twoColumn()"></i>
            <i class="fa fa-th"onclick="fourColumn()"></i>
        </div>
    </div>
    <div class="row">
        <div id="column1">
            <img src="https://picsum.photos/id/237/200/300" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300?grayscale" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/id/870/200/300?grayscale&blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/v2/list" alt="Alternate Text" />
        </div>
        <div id="column2">
            <img src="https://picsum.photos/id/237/200/300" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300?grayscale" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/id/870/200/300?grayscale&blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/v2/list" alt="Alternate Text" />
        </div>
        <div id="column3">
            <img src="https://picsum.photos/id/237/200/300" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300?grayscale" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/id/870/200/300?grayscale&blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/v2/list" alt="Alternate Text" />
        </div>
        <div id="column4">
            <img src="https://picsum.photos/id/237/200/300" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300?grayscale" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur" alt="Alternate Text" />
            <img src="https://picsum.photos/200/300/?blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/id/870/200/300?grayscale&blur=2" alt="Alternate Text" />
            <img src="https://picsum.photos/v2/list" alt="Alternate Text" />
        </div>
    </div>

    <script>
        function full() {
            document.getElementById('column1').style.width = '100%'
            document.getElementById('column2').style.width = '100%'
            document.getElementById('column3').style.width = '100%'
            document.getElementById('column4').style.width = '100%'
        }
        function twoColumn() {
            document.getElementById('column1').style.width = '50%'
            document.getElementById('column2').style.width = '50%'
            document.getElementById('column3').style.width = '50%'
            document.getElementById('column4').style.width = '50%'
        }
        function fourColumn() {
            document.getElementById('column1').style.width = '25%'
            document.getElementById('column2').style.width = '25%'
            document.getElementById('column3').style.width = '25%'
            document.getElementById('column4').style.width = '25%'
        }
    </script>
</asp:Content>
