<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginRegister.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GroupProject.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Register.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
        <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Create Your Account"></asp:Label>
    </p>
    <asp:Panel ID="Panel2" runat="server" Height="46px">
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="316px">
        <table class="master_content-wrapper">
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtEmail" runat="server" Width="187px"></asp:TextBox>
                    <br />
                </td>

                <td class="auto-style22">
                    <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                    <input id="Password1" type="password" class="auto-style31" />
                </td>
                <td class="auto-style22">
                    
                    <br />
                </td>

                
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>


                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    First Name<br />
                </td>


                
                <td class="auto-style28">
                    <asp:TextBox ID="txt_FirstName" runat="server" Width="187px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style32" Width="188px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lblphone" runat="server" Text="Phone Number:"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txt_Phone" runat="server" Width="187px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_Adress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtAdress" runat="server" Width="301px"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lbl_zipCode" runat="server" Text="Zip Code:"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="txt_ZipCode" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtCity" runat="server" Width="91px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblProvince" runat="server" Text="Provincy:"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="txt_Province" runat="server" Width="44px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style28">
                    .<asp:Button ID="btnSave" runat="server" Text="Save" Width="156px" OnClick="btnSave_Click1"/>
                </td>
             

                <td class="auto-style27">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="156px" OnClick="btnDelete_Click" />
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style15">

                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
