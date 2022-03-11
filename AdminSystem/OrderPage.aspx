<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 10px;
            top: 15px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnCheckOut" runat="server" CssClass="auto-style1" OnClick="btnCheckOut_Click" Text="Checkout" />
        </div>
    </form>
</body>
</html>
