<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="GroupProject.Pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 675px;
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
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style7">
                                Product Details</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:DataList ID="dtlMenu" runat="server" OnSelectedIndexChanged="dtlMenu_SelectedIndexChanged" Width="638px">
                          
                                    <ItemTemplate>
                                        <br />
                                        Product:
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                        &nbsp;Description:
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                        &nbsp; Price :
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnAddToCart" runat="server" OnClick="Button1_Click" OnCommand="AddToCart" Text="Add to Cart" />
                                    </ItemTemplate>
                          
                                </asp:DataList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
