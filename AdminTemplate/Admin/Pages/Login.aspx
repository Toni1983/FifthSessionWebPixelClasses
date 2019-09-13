<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AdminTemplate.Admin.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>

    <!-- Custom fonts for this template-->
    <link href="../Content/vendor/fontawesome-free/../Content/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="../Content/css/sb-admin.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
                <div class="card card-login mx-auto mt-5">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                    <label for="inputEmail">Email address</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                    <label for="inputPassword">Password</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="remember-me">
                                        Remember Password
                                    </label>
                                </div>
                            </div>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </form>
                        <div class="text-center">
                            <a class="d-block small mt-3" href="register.html">Register an Account</a>
                            <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="../Content/vendor/jquery/jquery.min.js"></script>
            <script src="../Content/vendor/bootstrap/../Content/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="../Content/vendor/jquery-easing/jquery.easing.min.js"></script>

    </form>
</body>
</html>
