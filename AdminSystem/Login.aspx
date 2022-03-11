<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="_1_ConfirmDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body {
    margin: 0;
    padding: 0;
    background-image: url('login_background_4x.png');
    background-size:cover;
    font-family:sans-serif;
}

      
     
        .HeadingStyle {
            z-index: 1;
            left: 49px;
            top: 33px;
            position: absolute;
            height: 26px;
            width: 1769px;
            font-size: 42pt;
            text-align: center;
            font-family: "MV Boli";
            color: #70B2EA;
            font-weight: 700;
        }
        


      
     
        .auto-style1 {
            z-index: 1;
            left: 554px;
            top: 290px;
            position: absolute;
            font-size: xx-large;
            right: 827px;
            font-family: "mv Boli";
        }
        .auto-style2 {
            z-index: 1;
            left: 555px;
            top: 432px;

            position: absolute;
            font-size: xx-large;
            font-family: "mv Boli";
        }
        .auto-style3 {
            z-index: 1;
            left: 710px;
            top: 273px;
            position: absolute;
            padding: 25px;
            border-radius: 25px;
            width: 463px;
            margin-top: 0px;
            height: 39px;
        }
        .auto-style4 {
            z-index: 1;
            left: 710px;
            top: 409px;
            padding: 25px;
            border-radius: 25px;
            position: absolute;
            width: 463px;
            height: 40px;
        }
        .auto-style5 {
            z-index: 1;
            left: 716px;
            top: 538px;
            padding: 25px;
            border-radius: 25px;
            height: 105px;
            width: 507px;
            position: absolute;
            font-size: 28pt;
            font-family: "MV Boli";
        }
        


      
     
        .auto-style6 {
            z-index: 1;
            left: 924px;
            top: 702px;
            position: absolute;
        }
        .auto-style7 {
            z-index: 1;
            left: 825px;
            top: 183px;
            position: absolute;
            text-align: center;
        }
        


      
     
        </style>
</head>
<body>
    <form id="form1" runat="server">

    <p>
        <asp:Label ID="lblLogin" runat="server" CssClass="auto-style1" Text="Username:"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" CssClass="HeadingStyle" Text="RAPIDO"></asp:Label>
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblInfo" runat="server" CssClass="auto-style7" Text="Please Enter Your Login Details Below"></asp:Label>
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblPassword" runat="server" CssClass="auto-style2" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="lblError" runat="server" CssClass="auto-style6"></asp:Label>
        <asp:Button ID="btnLogin" runat="server" CssClass="auto-style5" Text="Login" OnClick="btnLogin_Click" />
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
