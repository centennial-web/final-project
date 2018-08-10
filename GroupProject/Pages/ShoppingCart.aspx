<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="GroupProject.Pages.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="ShoppingCart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="restaurant">
            <asp:Label ID="lblRestaurant" runat="server" Text="Restaurant" />
        </div>

        <asp:Repeater ID="rptProducts" runat="server">
            <HeaderTemplate>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Discount</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr onclick="AddToCart(<%#Eval("Id")%>);">
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%# Eval("Description") %>.
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("Price")) %>
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("DiscountValue")) %>
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
