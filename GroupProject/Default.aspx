<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroupProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/style.css" rel="stylesheet" type="text/css">
    <style>
        body {font-family: "Times New Roman", Georgia, Serif;}
        h1,h2,h3,h4,h5,h6 {
        font-family: "Playfair Display";
        font-size:large;
        letter-spacing: 5px;
        
        }
        .auto-style1 {
            width: 1250px;
            height: 469px;
        }
    </style>

    <div class="w3-content" style="max-width:1100px">
    
        <p class="lead">
        </p>
        <p class="lead">
            <img alt="" class="auto-style1" src="Images/easyfood1.png" /></p>

     
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Find a Restaurant <asp:TextBox ID="txtFindPlace"  runat="server" Width="837px"></asp:TextBox> 
             <asp:Button ID="btnFindRestaurant" runat="server" Text="Search" Height="40px" 
                 style="margin-left: 30"
                 Width="131px" />
            </h2>
            
        </div>
       
    </div>

</asp:Content>
