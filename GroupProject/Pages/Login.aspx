<%@ Page Title="Easy Foods - Login" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginRegister.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GroupProject.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Login.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
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
</asp:Content>
