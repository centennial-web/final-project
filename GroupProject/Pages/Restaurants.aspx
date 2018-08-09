<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Restaurants.aspx.cs" Inherits="GroupProject.Pages.Restaurants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Restaurants.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="title">Restaurants</div>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone #</th>
                    <th>Delivery</th>
                    <th>Delivery Price</th>
                </tr>
            </thead>
            <tbody>
                <%=GetHtmlTableData()%>
            </tbody>
        </table>
    </div>
</asp:Content>
