<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="GroupProject.Pages.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="ShoppingCart.css" />
    <style type="text/css">
        .auto-style1 {
            width: 166px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
  
    <asp:Panel ID="Panel1" runat="server" Height="62px">
        <br />
        <asp:Label ID="lblShoppingCart" runat="server" Text="Shopping Cart"></asp:Label>
    </asp:Panel>
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel2" runat="server" Height="251px">
        <asp:DataList ID="DataList1" runat="server">
        </asp:DataList>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="264px">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnProceedToCheckout" runat="server" Text="Proceed to Checkout" />
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" Width="107px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
  
</asp:Content>
