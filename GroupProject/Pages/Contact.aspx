<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GroupProject.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Contact.css" />
    <style type="text/css">
        .auto-style1 {
            width: 376px;
        }
        .auto-style2 {
            width: 333px;
        }
        .auto-style3 {
            width: 376px;
            height: 16px;
        }
        .auto-style4 {
            width: 333px;
            height: 16px;
        }
        .auto-style5 {
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="371px">
            <table class="master_content-wrapper">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblContactUs" runat="server" Text="Contact Us"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="How can we help you?"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblContact_Name" runat="server" Text="Your name:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContact_Name" runat="server" Width="337px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblContact_Email" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_ContactEmail" runat="server" Width="337px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblContact_Phone" runat="server" Text="Phone:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContact_Phone" runat="server" Width="337px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblContact_Subject" runat="server" Text="Subject:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContact_Subject" runat="server" Width="337px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblContact_Message" runat="server" Text="Message:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_ContactMessage" runat="server" Height="85px" Width="331px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnContact_Submit" runat="server" OnClick="btnContact_Submit_Click" Text="Submit" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
