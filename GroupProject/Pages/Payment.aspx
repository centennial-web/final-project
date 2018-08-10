<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GroupProject.Pages.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Payment.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="content">
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
        </div>
</asp:Content>
