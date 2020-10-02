<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title></title>

</head>

<body>

    <form id="form1" runat="server">

    <div>    

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager.aspx">Booking</asp:HyperLink>
        <br />
        <br />
        <br />
        <!-- Showing Booking Data -->
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 

            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 

            EnableModelValidation="True">

            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />

            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />

            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />

            <RowStyle BackColor="White" ForeColor="#003399" />

            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />

        </asp:GridView>

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 

            Text="export to pdf" />

    

    </div>

    </form>

</body>

</html>
