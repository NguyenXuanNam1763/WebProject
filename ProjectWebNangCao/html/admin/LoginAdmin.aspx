<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ProjectWebNangCao.html.admin.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Admin</title>
    <link href="../../css/login-admin.css" rel="stylesheet" />
    <link href="../../css/font-awesome/CSS/font-awesome.min.css" rel="stylesheet" />
    <link href="../../bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row form-login-admin">
                    <asp:Panel runat="server"  ID="pnLogin" DefaultButton="btnDangNhap" CssClass="panel col-lg-4">
                        <div class="logo-icon-login">
                             <i class="fa fa-sign-in" id="icon-title-login" aria-hidden="true"></i>
                            <h3 class="title-login">Log in</h3>
                        </div>
                        <div class="form-group kc">
                            <asp:Label runat="server" CssClass="control-label style-lb" ID="lbTaiKhoan" AssociatedControlID="txtTaiKhoan">User:</asp:Label>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox runat="server" BackColor="Transparent" class="style-input" ID="txtTaiKhoan" ClientIDMode="Static"></asp:TextBox>
                        </div>
                        <div class="form-group kc">
                            <asp:Label runat="server" CssClass="style-lb" ID="lbMatKhau" AssociatedControlID="txtMatKhau">Password:</asp:Label>
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            <asp:TextBox runat="server" Backcolor="Transparent" CssClass="style-input" ID="txtMatKhau" TextMode="Password"></asp:TextBox>

                        </div>
                        <div>
                            <asp:Label runat="server" ID="lbError" ForeColor="Red"></asp:Label>
                        </div>
                        <div>
                            <asp:Button runat="server" Text="LOG IN"  ID="btnDangNhap" OnClientClick="return valid();" OnClick="btnDangNhap_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </form>
    <script src="../../js/login-admin.js"></script>
</body>
</html>
