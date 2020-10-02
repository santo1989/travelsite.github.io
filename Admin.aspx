<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin"MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="auto-style1">
    
           <div class="auto-style2">
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               <br />
               <br />
               <span class="auto-style3">Admin Login Page<br />
               <br />
               <br />
               </span></strong></div>
           <table class="auto-style2">
            <tr>
                <!-- User name Field -->
                <td class="auto-style4">User Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLuser1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <!-- User Name Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLuser1" CssClass="auto-style7" ErrorMessage="Please Enter User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <!--Password name Field -->
                <td class="auto-style4">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLPassword1" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <!-- Password name Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLPassword1" CssClass="auto-style7" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <!-- Login batton -->
                    <asp:Button ID="ButtonLogin1" runat="server" ForeColor="#FF3300" Height="29px" OnClick="ButtonLogin_Click" style="font-weight: 700; text-align: left" Text="Login" Width="77px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 704px;
        height: 357px;
    }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
