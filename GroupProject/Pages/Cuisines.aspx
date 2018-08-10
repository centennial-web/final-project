<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Cuisines.aspx.cs" Inherits="GroupProject.Pages.Cousines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Cuisines.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="title">Cuisines</div>

        <asp:Repeater ID="rptCuisines" runat="server">
            <HeaderTemplate>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr onclick="OpenRestaurants(<%#Eval("Id")%>);">
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%#Eval("Count")%>
                        </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script type="text/javascript">
        function OpenRestaurants(cuisineId) {
            window.location = "/Pages/Restaurants.aspx?id=" + cuisineId;
        }
    </script>    
</asp:Content>