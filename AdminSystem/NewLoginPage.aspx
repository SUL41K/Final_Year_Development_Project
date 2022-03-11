<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewLoginPage.aspx.cs" Inherits="NewLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox" >
        <img src="user.png" alt="Alternate Text" class ="user" />
        <h2>Log In Here</h2>
        <form runat ="server">
            <asp:Label Text="Username" CssClass="lblUsername" runat="server" />
            <asp:TextBox runat="server" CssClass="txtUsername" placeholder="Enter Username" ID="txtUserName" />
            <asp:Label Text="Password" CssClass="lblPass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPass"  placeholder="********" ID="txtPassword" TextMode="Password"  />
            <asp:Button Text="LogIn" CssClass="btnLogin " runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
            <asp:LinkButton Text="Try Another Way" CssClass="btnForgot" runat="server" OnClick="Unnamed3_Click" />
         </form>
     </div>
</body>
</html>
