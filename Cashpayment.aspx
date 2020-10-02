<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cashpayment.aspx.cs" Inherits="Cashpayment"MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <div class="auto-style5">
            <strong>
                       <br />
            Log In As :
                       <asp:Label ID="Label2" runat="server" CssClass="auto-style9"></asp:Label>
                       <br />
            <br />
            <span class="auto-style4">Cash Payment</span></strong><br />
    
        </div>
    
        <table class="auto-style12" border="1">
               <tr>
                   <td class="auto-style6"><strong><span class="auto-style1">User Name : </span></strong></td>
                   <td class="auto-style10">
            <strong>
                       <asp:Label ID="Label5" runat="server" CssClass="auto-style9"></asp:Label>
                       </strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style6">
                       <strong><span class="auto-style7">Booking Package ID :</span></strong></td>
                   <td class="auto-style10">
                       <strong>
                       <asp:Label ID="Label3" runat="server" CssClass="auto-style9"></asp:Label>
                       </strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style6">
                       <strong>&nbsp;Quantity:</strong></td>
                   <td class="auto-style11">
                       <!-- Quantity Field Validation-->
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Input Quantity" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                       <strong>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="auto-style9" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                       </strong>
                   </td>
               </tr>
           </table>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Total Cost" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"><span class="auto-style4">Payment Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Conform Booking" />
                    </span>
                    <br />
                </td>
            </tr>
        </table>
        <!-- Payment Datils -->
        <div>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <br />
        <div class="auto-style5">
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Print Booking ticket" Width="145px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: large;
            color: #3333FF;
        }
    </style>
</asp:Content>