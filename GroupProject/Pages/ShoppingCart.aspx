<%@ Page Title="" EnableEventValidation="true" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="GroupProject.Pages.ShoppingCart" %>
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
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <div class="op-container">
                                <span class="quantity"><%# Eval("Quantity") %></span>

                                <div class="plus">
                                    <asp:ImageButton ID="imgBtnPlus" runat="server" 
                                        ImageUrl="/Content/img/plus.svg" 
                                        CssClass="grow" OnClick="imgBtnPlus_Click" CommandArgument='<%#Eval("Id")%>' />
                                </div>

                                <div class="minus">
                                    <asp:ImageButton ID="imgBtnMinus" runat="server" 
                                        ImageUrl="/Content/img/minus.svg" 
                                        CssClass="grow" OnClick="imgBtnMinus_Click" CommandArgument='<%#Eval("Id")%>' />
                                </div>
                            </div>
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("Price")) %>
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("Discount")) %>
                        </td>
                        <td>
                            <%# string.Format("{0:c2}", Eval("Total")) %>
                        </td>
                        <td>
                            <div class="trash">
                                <asp:ImageButton ID="btnRemove" runat="server" 
                                    ImageUrl="/Content/img/trash.svg" 
                                    CssClass="grow" OnClick="btnRemove_Click" CommandArgument='<%#Eval("Id")%>' />
                            </div>
                        </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <div class="summary">
            <div class="total">
                Total Items: <asp:Label ID="lblTotalItems" Text="$230.90" runat="server" />
            </div>
            <div class="total">
                Discount: <asp:Label ID="lblTotalDiscount" Text="$30.90" runat="server" />
            </div>
            <div class="total general">
                Total: <asp:Label ID="lblTotalGeneral" Text="$200.00" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
