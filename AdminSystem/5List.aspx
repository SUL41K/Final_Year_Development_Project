<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5List.aspx.cs" Inherits="_1_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
         body {
            border: 10px solid black;
            border-radius: 20px;
            padding: 25px;   
        }

         .auto-style1 {
            border-style: solid;
            border-width: 10px;
            font-family: "MV Boli";
            top: 226px;
            left: 640px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            float: left;
            width: 640px;
            text-align: left;
            background-color: #C0C0C0;
            height: 455px;
            font-size: x-large;
        }
          .auto-style2 {
            top: 703px;
            left: 702px;
            position: absolute;
             padding: 15px;
            border-radius: 10px;
            height: 22px;
            width: 482px;
        }
           .auto-style5 {
            z-index: 1;
            left: 704px;
            top: 782px;
            position: absolute;
            font-family: "mv boli";
            width: 240px;
            font-size: large;
            font-weight: 700;
            color: #FFFFFF;
        background-color: #70B2EA;
    }
            .auto-style6 {
            z-index: 1;
            left: 978px;
            top: 782px;
            position: absolute;
            font-family: "mv boli";
            width: 240px;
            font-size: large;
            font-weight: 700;
            color: #FFFFFF;
        background-color: #70B2EA;
    }

        #form1 {            height: 839px;
            text-align: center;
        }
        .auto-style16 {
            font-size: 42pt;
            font-family: "MV Boli";
            color: #60AAE8;
            text-align: left;
        }
        .auto-style17 {
            text-align: center;
         height: 842px;
     }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
            <span class="auto-style16">
            <br />
            RAPIDO<br />
                 &nbsp;<asp:TextBox ID="txtFilter" runat="server" CssClass="auto-style2"></asp:TextBox>
                <asp:Button ID="btnApply" runat="server" Text="Search" BorderColor="Black" BorderStyle="Inset" CssClass="auto-style5" BackColor="#70B2EA" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" CssClass="auto-style6" BackColor="#70B2EA" BorderColor="Black" BorderStyle="Groove" />
                <asp:ListBox ID="lstStockList" runat="server" CssClass="auto-style1"></asp:ListBox>
            </span>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    </form>
</body>
</html>