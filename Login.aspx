<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
       <div class="auto-style1">
    
           <div class="auto-style2">
    
               <strong>
               <br />
               <br />
        <br />
               <span class="auto-style5">Member Login Page</span><br />
               <br />
               <br />
               <br />
               <br />
               </strong></div>
           <table class="auto-style2">
            <tr>
                <!-- login page Field -->
                <td class="auto-style4" style="font-size: large"><strong>User Name</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLuser" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <!-- Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLuser" CssClass="auto-style7" ErrorMessage="Please Enter User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLPassword" CssClass="auto-style7" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="ButtonLogin" runat="server" ForeColor="#FF3300" Height="29px" OnClick="ButtonLogin_Click" style="font-weight: 700; text-align: left" Text="Login" Width="77px" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <!-- If account exist -->
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" NavigateUrl="~/Registration.aspx">New User Registration</asp:HyperLink>
                </td>
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
            text-align: left;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</asp:Content>

