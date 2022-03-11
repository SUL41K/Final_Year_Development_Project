<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 187px;
            top: 249px;
            position: absolute;
        }
        .auto-style2 {
            z-index: 1;
            left: 157px;
            top: 133px;
            position: absolute;
        }
        .auto-style3 {
            z-index: 1;
            left: 156px;
            top: 190px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Button" />
            <asp:TextBox ID="txtNewPass" runat="server" CssClass="auto-style2"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="auto-style3"></asp:TextBox>
        </div>
    </form>
</body>
</html>
