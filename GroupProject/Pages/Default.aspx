<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroupProject.Pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Default.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="search-box">
            <div class="search-title">
                Search for Restaurants, Cuisines, Foods
            </div>
            <div class="search-group">
                <div class="search-input">
                    <asp:TextBox ID="txtSearchTerm" runat="server" TextMode="Search" autofocus></asp:TextBox>
                </div>
                <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="search-button grow" OnClick="btnSearch_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
