<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="GroupProject.Pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Menu.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        <div class="title">
            <asp:Label ID="lblRestaurante" runat="server" />
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

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script type="text/javascript">
        function AddToCart(productId) {
            window.location = "/Pages/ShoppingCart.aspx?ProductId=" + productId;
        }
    </script>    
</asp:Content>
