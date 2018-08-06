<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GroupProject.Pages.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="About.css" />
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style5 {
            height: 17px;
        }
        .auto-style6 {
            height: 16px;
            width: 1174px;
        }
        .auto-style7 {
            width: 1174px;
        }
        .auto-style8 {
            margin-left: 0;
        }
        .auto-style9 {
            height: 16px;
            width: 375px;
        }
        .auto-style10 {
            height: 17px;
            width: 375px;
        }
        .auto-style11 {
            width: 375px;
        }
        .auto-style12 {
            width: 96%;
            height: 285px;
            margin-right: 0;
        }
        .auto-style13 {
            width: 98%;
        }
        .auto-style14 {
            height: 16px;
            width: 404px;
        }
        .auto-style15 {
            height: 17px;
            width: 404px;
        }
        .auto-style16 {
            width: 404px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblAboutUsHeader" runat="server" Text="ABOUT EASY FOOD !" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <br />
                    <br />
                    <asp:Label ID="lblAboutUs" runat="server" Text=" Easy Food is an online service that helps Torontians to order quality food 
                        from the best restaurants in the city based in diet options and restritions."></asp:Label>
                    <br />
                    <br />
                    Easy Food is 100 % free . You pay for your meal + delivery and that is it!!<br />
                    <br />
                </td>
            </tr>
            </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style13">
            <tr>
                <td>
                    <asp:Label ID="About_Header" runat="server" Text="How it works !!" BorderStyle="Double" Width="1121px" Height="26px"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style12">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Text="Place your order"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Order Up"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Food arrives"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
              
                    <asp:Image ID="Img_About1" runat="server" ImageUrl="~/images/About1.PNG"  />
                </td>
                <td class="auto-style10">
                    <asp:Image ID="Img_About2" runat="server" ImageUrl="~/images/About2.PNG" />
                </td>
                <td class="auto-style5">&nbsp;<asp:Image ID="Img_About3" runat="server" CssClass="auto-style8" ImageUrl="~/images/About3.PNG" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                
                    <asp:Label ID="Label7" runat="server" Text="Browse through restaurants by selecting your favourite cuisine and restaurant and place your order . The payment is by credit, debit card and paypal, it's online and 100% secure "></asp:Label>
                        .</td>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Once the restaurant receives your order you will get a confirmation."></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Enjoy your food!"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
