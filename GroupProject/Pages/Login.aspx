<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GroupProject.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/App_Themes/reset.css" />
    <link rel="stylesheet" type="text/css" href="~/App_Themes/animations.css" />
    <link rel="stylesheet" type="text/css" href="~/App_Themes/main.css" />
    <link rel="stylesheet" type="text/css" href="~/App_Themes/Main/login.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,700,900" rel="stylesheet" />
</head>
<body>
    <div class="fullscreen-bg">
        <video autoplay="autoplay" muted="muted" loop="loop" class="fullscreen-bg__video">
            <source src="../Content/videos/login-2.mp4" type="video/mp4" />
        </video>
    </div>

    <div class="transparent-content">
        <form runat="server" class="login-container">
            <span class="company-name">Easy Food Restaurants</span>
            <div class="login-group">
                <label for="txtEmail" class="group-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" class="group-input" MaxLength="100" TextMode="Email"/>
                <asp:Label ID="lblEmailError" CssClass="error" runat="server" Text=""></asp:Label>
            </div>

            <div class="login-group">
                <label for="txtPassword" class="group-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" class="group-input" MaxLength="100" TextMode="Password" />    
                <asp:Label ID="lblPasswordError" CssClass="error" runat="server" Text=""></asp:Label>
            </div>

            <a href="#" class="forgot-password">Forgot password?</a>

            <asp:Button ID="btnEnter" runat="server" Text="Enter" CssClass="button grow" OnClick="btnEnter_Click" />
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button button-register grow" OnClick="btnRegister_Click" UseSubmitBehavior="False" />
        </form>
    </div>
</body>
</html>
