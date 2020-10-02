<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="auto-style8">
    
        <div class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <span class="auto-style9"><strong><span class="auto-style3">Registration </span>
            <br />
            Fill all the Field with valid data, To Book any Package this Data is Compolsory.</strong></span><br />
&nbsp;
        </div>
    
        <table class="auto-style1">
            <tr>
                <!-- Registration Table -->
                <td class="auto-style4">&nbsp;User Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <!-- User name Field valadition -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" CssClass="auto-style4" ErrorMessage="User Name is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">E-mail</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    <br />
                </td>
                <!-- E-mail Validation -->
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style4" ErrorMessage="E-mail is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter a Valid E-mail ID" style="color: #CC3300; text-align: center" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style4" ErrorMessage="Password is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Conform Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxConformPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConformPassword" CssClass="auto-style4" ErrorMessage="Conform Password is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConformPassword" ErrorMessage="Both Password Must Be Same" style="color: #CC3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxFullName" runat="server" Width="180px" ValidateRequestMode="Enabled"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFullName" CssClass="auto-style4" ErrorMessage="Name is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
                    </tr>
            <tr>
                <td class="auto-style4">Phone Number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxMobile" runat="server" TextMode="Phone" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxMobile" CssClass="auto-style4" ErrorMessage="Mobile Number is Required " ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Address</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="93px" ForeColor="#6600FF" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">If Alredy Account Login Here</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
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
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: right;
        }
    </style>
</asp:Content>
