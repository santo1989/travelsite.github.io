<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserBooking.aspx.cs" Inherits="UserBooking"MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
       <div> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User.aspx">Home</asp:HyperLink>  
            </div>  
    <div >

        
        <!-- User Booking connection and information show -->

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Booking_Date], [Package_Id], [Package_Name], [Price], [Quantity], [Total_Price] FROM [Booking] WHERE ([User_Name] = @User_Name)">
               <SelectParameters>
                   <asp:SessionParameter DefaultValue="null" Name="User_Name" SessionField="User" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>    
        <asp:Panel id="pnlContents" runat = "server">
           <asp:DataList ID="DataList2" runat="server" BorderColor="Silver" BorderStyle="Solid" CaptionAlign="Top" DataSourceID="SqlDataSource2" GridLines="Both" HorizontalAlign="Center" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
               <EditItemStyle BorderStyle="Solid" />
               <ItemTemplate>
                   <br />
                   <table border="1" class="auto-style2">
                       <tr>
                           <td>Booking Date:</td>
                           <td>Package Id:</td>
                           <td>Package Name:</td>
                           <td>Price:</td>
                           <td>Quantity:</td>
                           <td>Total Price: </td>
                           <td>Ticket</td>
                           
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Booking_DateLabel" runat="server" Text='<%# Eval("Booking_Date") %>' />
                           </td>
                           <td>
                               <asp:Label ID="Package_IdLabel" runat="server" Text='<%# Eval("Package_Id") %>' />
                           </td>
                           <td>
                               <asp:Label ID="Package_NameLabel" runat="server" Text='<%# Eval("Package_Name") %>' />
                           </td>
                           <td>
                               <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                           </td>
                           <td>
                               <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                           </td>
                           <td>
                               <asp:Label ID="Total_PriceLabel" runat="server" Text='<%# Eval("Total_Price") %>' />
                           </td>
                           <td>
                               <asp:Button ID="Button1" runat="server" Text="Print" OnClientClick = "return PrintPanel();" />
    </td> 
                           
                       </tr>
                   </table>
<br />
                   <br />
               </ItemTemplate>
           </asp:DataList>
            </asp:Panel>
       
    <br />
     
    </div> 

       <script type = "text/javascript">
           function PrintPanel() {
               var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>

   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>