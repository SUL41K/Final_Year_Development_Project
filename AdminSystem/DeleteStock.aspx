<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteStock.aspx.cs" Inherits="DeleteStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Are you sure you want to delete this record?<br />
            <br />
            <asp:Button ID="btnYes" runat="server" OnClick="btnYes_Click" style="height: 26px" Text="Yes" />
            <asp:Button ID="btnNo" runat="server" Text="No" OnClick="btnNo_Click" />
            <br />
        </div>
    </form>
</body>
</html>
