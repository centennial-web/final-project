<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="GroupProject.Pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 369px;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            width: 126px;
        }
        .auto-style5 {
            width: 110px;
        }
        .auto-style6 {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="374px">
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Make your Order"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server" Text="Meal"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style1">
                                <asp:DataList ID="DataList1" runat="server">
                                </asp:DataList>
                            </td>
                            <td class="auto-style2">
                                <asp:DataList ID="DataList2" runat="server">
                                </asp:DataList>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox1" runat="server" Width="64px"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox2" runat="server" Width="88px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnMenu_AddtoCart" runat="server" Text="Add to Cart" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
