<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlternativeLogin.aspx.cs" Inherits="AlternativeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AltPass.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: absolute;
        }
    </style>
</head>
<body>
      <div class="Codebox" >
        <img src="lockpad.png" alt="Alternate Text" class ="lock" />
        <h2>Enter Code</h2>
        <form runat ="server">
            <asp:Label Text="Email" CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" ID="txtEmail" />
            <asp:Label Text="Code" CssClass="lblCode" runat="server" />
            <asp:TextBox runat="server" CssClass="txtCode"  placeholder="********" ID="txtCode" TextMode="Password"  />
            <asp:Button Text="Generate" CssClass="btnGenerate " runat="server" ID="btnGenerate" OnClick="btnGenerate_Click" />
            <asp:Button Text="Confirm" CssClass="btnConfirm " runat="server" ID="btnConfirm" OnClick="btnConfirm_Click" />
            <asp:TextBox ID="txtVer" runat="server" CssClass="auto-style1" OnTextChanged="txtVer_TextChanged" Visible="False">456786</asp:TextBox>
         </form>
     </div>
      </body>
</html>