<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GroupProject.Pages.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 598px;
            height: 16px;
        }
        .auto-style5 {
            width: 259px;
            height: 16px;
        }
        .auto-style9 {
            width: 259px;
        }
        .auto-style12 {
            height: 16px;
            width: 252px;
        }
        .auto-style14 {
            height: 16px;
            width: 1247px;
        }
        .auto-style15 {
            width: 1247px;
        }
        .auto-style17 {
            width: 598px;
            height: 38px;
        }
        .auto-style18 {
            width: 259px;
            height: 38px;
        }
        .auto-style19 {
            width: 252px;
            height: 38px;
        }
        .auto-style20 {
            width: 1247px;
            height: 38px;
        }
        .auto-style22 {
            width: 598px;
        }
        .auto-style24 {
            margin-left: 80px;
        }
        .auto-style26 {
            margin-left: 100px;
        }
        .auto-style27 {
            width: 252px;
        }
        .auto-style28 {
            margin-left: 141;
        }
        .auto-style29 {
            /*padding: 20px;*/
        width: 100%;
            height: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="How would you like to pay?"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel2" runat="server" Height="57px">
        <table class="auto-style29">
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="Label2" runat="server" Text="Pay with debit or credit card"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lbl_OrderDetails" runat="server" Text="Your Order:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <br />
                </td>
                <td class="auto-style9">
                    <asp:Image ID="ImgCards" runat="server" ImageUrl="~/images/Cards.PNG" />
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:DataList ID="dtlOrderDetails" runat="server">
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lblCardNumber" runat="server" Text="Card Number:"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txt_Card_CardNumber" runat="server" Width="187px"></asp:TextBox>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_Card_CardNumber" ErrorMessage="Please insert correct number!" MaximumValue="16" MinimumValue="16"></asp:RangeValidator>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_CardFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCard_FirstName" runat="server" Width="244px"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style14">
                    <asp:Label ID="lblOrderDetailsSubTotal" runat="server" Text="Subtotal :"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24" Width="86px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lbl_CardLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_Card_LastName" runat="server" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lblOrderDetailsTax" runat="server" Text="HST (13%) :"></asp:Label>
                    <asp:DataList ID="DataList3" runat="server">
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblCard_ExpDate" runat="server" Text="Exp Date:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtCard_ExpDate" runat="server" Width="91px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="Label5" runat="server" Text="Total : "></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style26" Width="89px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblCard_SecurityNum" runat="server" Text="Security Number:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_Cart_SecurityNumer" runat="server" Width="44px"></asp:TextBox>
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="Label6" runat="server" Text="Restaurant :"></asp:Label>
                    <asp:DataList ID="dtlRestaurant" runat="server">
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:ImageButton ID="Img_CardBack" runat="server" CssClass="auto-style28" ImageUrl="~/images/Card_Back.PNG" Width="29px" />
                </td>
                <td class="auto-style9">
                    <asp:RangeValidator ID="vld_CardSecurityNumber" runat="server" ControlToValidate="txt_Cart_SecurityNumer" ErrorMessage="Last 3 digits of the number on the back of your card  "></asp:RangeValidator>
                    .</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="Label7" runat="server" Text="Delivery Option :"></asp:Label>
                    <asp:DataList ID="dtlDeliveryOption" runat="server">
                    </asp:DataList>
                </td>
            </tr>
        </table>
       
           
         <asp:Button ID="btnConfirmPayment" runat="server" Text="Confirm" Height="30px" OnClick="btnConfirmPayment_Click" Width="111px" />
        <asp:Label ID="lblOrderStatus" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="295px">
        <br />
       

    </asp:Panel>
</asp:Content>
