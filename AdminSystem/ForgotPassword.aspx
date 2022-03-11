<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 273px;
            top: 112px;
            position: absolute;
        }
        .auto-style2 {
            z-index: 1;
            left: 272px;
            top: 163px;
            position: absolute;
        }
        .auto-style3 {
            z-index: 1;
            left: 230px;
            top: 109px;
            position: absolute;
        }
        .auto-style4 {
            z-index: 1;
            left: 227px;
            top: 162px;
            position: absolute;
        }
        .auto-style5 {
            z-index: 1;
            left: 420px;
            top: 160px;
            position: absolute;
        }
        .auto-style6 {
            z-index: 1;
            left: 420px;
            top: 111px;
            position: absolute;
        }
        .auto-style7 {
            z-index: 1;
            left: 219px;
            top: 315px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
            <asp:TextBox ID="txtCode" runat="server" CssClass="auto-style2" OnTextChanged="txtCode_TextChanged"></asp:TextBox>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Email"></asp:Label>
        <asp:Button ID="txtVerify" runat="server" CssClass="auto-style5" OnClick="txtVerify_Click" Text="Verify" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Code"></asp:Label>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Send" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <asp:TextBox ID="TxtVer" runat="server" CssClass="auto-style7" Visible="False"></asp:TextBox>
    </form>
    </body>
</html>
