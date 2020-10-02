<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <!-- Paypal sendbox for online Payment -->
<body>
    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="BQK9B2YVECRB8">
<table>
<tr><td><input type="hidden" name="on0" value="Tour Package Name">Tour Package Name</td></tr><tr><td><select name="os0">
	<option value="Gazipur">Gazipur $12.00 USD</option>
	<option value="Bhandorban">Bhandorban $80.00 USD</option>
	<option value="Sundorban">Sundorban $85.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</body>
</html>
