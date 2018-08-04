<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="GroupProject.Pages.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/reset.css" />
    <link rel="stylesheet" type="text/css" href="../App_Themes/Main/login.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet" />
</head>
<body>
    <div class="fullscreen-bg">
        <video autoplay muted loop class="fullscreen-bg__video">
            <source src="../Content/videos/login-2.mp4" type="video/mp4" />
        </video>
    </div>

    <div class="transparent-content">
        <form runat="server" class="login-container">
            <span class="login-title">Login</span>
            <div class="login-group">
                <label for="txtEmail" class="group-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" class="group-input" MaxLength="100" autofocus/>
            </div>
            <div class="login-group">
                <label for="txtPassword" class="group-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" class="group-input" MaxLength="100" />
            </div>
            <div class="login-button">
                Enter
            </div>
        </form>
    </div>
</body>
</html>
