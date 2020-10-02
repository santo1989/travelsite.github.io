<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" EnableEventValidation="false" ValidateRequest="false" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="auto-style6">
           <div class="auto-style6">
        <strong><span class="auto-style1">
               <br />
               <br />
               Select Any Payment Method ( cash on Delevery or Online Payment ) for Book your Package 
           <br />
               <br />
               <br />
               <br />
           Total Select</span></strong><br />
               <br />
           </div>
           <table class="auto-style2">
               <tr>
                   <td class="auto-style4"><strong><span class="auto-style1">User Name : </span></strong></td>
                   <td class="auto-style3"><strong>
                       <asp:Label ID="Label2" runat="server"></asp:Label>
                       </strong></td>
               </tr>
               <tr>
                   <td class="auto-style4"><strong><span class="auto-style1">Booking Package ID :</span></strong></td>
                   <td class="auto-style3"><strong>
                       <asp:Label ID="Label3" runat="server"></asp:Label>
                       </strong></td>
               </tr>
               <tr>
                   <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Paypal" OnClick="Button1_Click" />
                   </td>
                   <td>
           <asp:Button ID="Button2" runat="server" Text="Cash On Delevery" OnClick="Button2_Click" />
                   </td>
               </tr>
           </table>
           <br />
           <br />
           <asp:Label ID="Label4" runat="server"></asp:Label>
           <br />
           <br />
        <br />
           <strong>
           <br class="auto-style1" />
           </strong>
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
            font-size: large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: right;
            width: 395px;
        }
        .auto-style5 {
            width: 395px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>