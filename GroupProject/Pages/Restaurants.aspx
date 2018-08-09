<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Restaurants.aspx.cs" Inherits="GroupProject.Pages.Restaurants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Restaurants.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="title">Restaurants</div>

        <asp:Repeater ID="rptRestaurants" runat="server">
            <HeaderTemplate>
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
            </HeaderTemplate>
            <ItemTemplate>
                    <tr onclick="OpenMenu(<%#Eval("Id")%>);">
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%# Eval("Street") %>.
                            <%# Eval("City") %>,
                            <%# Eval("Province") %>
                            <%# Eval("ZipCode") %>
                        </td>
                        <td>
                            <%# string.Format("{0:(###) ###-####}", Convert.ToInt64(Eval("PhoneNumber"))) %>
                        </td>
                        <td>
                            <%# (bool)Eval("Delivery") ? "Yes" : "No" %>
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("DeliveryValue")) %>
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
        function OpenMenu(restaurantId) {
            window.location = "/Pages/Menu.aspx?RestaurantId=" + restaurantId;
        }
    </script>    
</asp:Content>
