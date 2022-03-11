<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StockList.aspx.cs" Inherits="_1_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {
            border:10px solid black;
              border-radius: 20px;
            padding: 25px;  
        }
        .auto-style1 {
            border-style: solid;
            border-width: 10px;
            font-family: "MV Boli";
            top: 165px;
            left: 1137px;
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
            top: 658px;
            left: 1258px;
            position: absolute;
             padding: 15px;
            border-radius: 10px;
            height: 22px;
            width: 482px;
        }
        .auto-style3 {
            z-index: 1;
            left: 1133px;
            top: 675px;
            position: absolute;
            width: 113px;
            font-family: "MV Boli";
        }
        #form1 {
            height: 837px;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            z-index: 1;
            left: 1086px;
            top: 786px;
            position: absolute;
            font-size: xx-large;
            margin-top: 0px;
        }
        .auto-style5 {
            z-index: 1;
            left: 1260px;
            top: 739px;
            position: absolute;
            font-family: "mv boli";
            width: 240px;
            font-size: large;
            font-weight: 700;
            color: #FFFFFF;
        }
        .auto-style6 {
            z-index: 1;
            left: 1524px;
            top: 738px;
            position: absolute;
            width: 240px;
            font-family: "MV Boli";
            font-size: large;
            color: #FFFFFF;
            font-weight: 700;
        }
        .auto-style7 {
            z-index: 1;
            left: 675px;
            top: 649px;
            position: absolute;
            height: 85px;
            width: 145px;
            font-family: "mv Boli";
            padding: 15px;
            border-radius: 10px;
            font-size: x-large;
            right: 724px;
            color: #FFFFFF;
            background-color: #70B2EA;
        }
        .auto-style8 {
            z-index: 1;
            left: 86px;
            top: 33px;
            position: absolute;
            height: 26px;
            width: 1496px;
            font-size: 42pt;
            text-align: center;
            font-family: "MV Boli";
            color: #60AAE8;
            font-weight: 700;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            text-align: center;
            z-index: 1;
            left: 1261px;
            top: 811px;
            position: absolute;
            width: 504px;
        }
        .auto-style11 {
            z-index: 1;
            left: 1451px;
            top: 87px;
            position: absolute;
            width: 329px;
            font-size: x-large;
            font-family: "MV BOli";
            text-align: right;
        }
        .auto-style12 {
            z-index: 1;
            left: 67px;
            top: 216px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            font-size: x-large;
            height: 271px;
            width: 964px;
            border-style: groove;
            border-width: 10px;
        }
        .auto-style13 {
            z-index: 1;
            left: 71px;
            top: 103px;
            position: absolute;
            width: 964px;
            font-family: "MV Boli";
        }
        .auto-style14 {
            z-index: 1;
            left: 72px;
            top: 174px;
            position: absolute;
            font-family: "MV Boli";
            font-size: xx-large;
        }
        .auto-style15 {
            z-index: 1;
            left: 79px;
            top: 493px;
            position: absolute;
            font-size: xx-large;
            width: 944px;
            text-align: left;
            font-weight: 700;
        }
        .auto-style16 {
            z-index: 1;
            left: 78px;
            top: 536px;
            position: absolute;
            width: 941px;
            font-size: xx-large;
            text-align: center;
            font-family: "MV Boli";
            padding: 15px;
            border-radius: 10px;
            font-weight: 700;
            color: #FFFFFF;
            background-color: #949494;
        }
        .auto-style17 {
            z-index: 1;
            left: 76px;
            top: 650px;
            position: absolute;
            height: 85px;
            width: 145px;
            padding: 15px;
            border-radius: 10px;
            font-family: "MV Boli";
            font-size: x-large;
            color: #FFFFFF;
            background-color: #70B2EA;
        }
        .auto-style18 {
            z-index: 1;
            left: 273px;
            top: 649px;
            position: absolute;
            height: 85px;
            width: 145px;
            font-family: "mv Boli";
            padding: 15px;
            border-radius: 10px;
            font-size: x-large;
            color: #FFFFFF;
            margin-right: 0px;
            background-color: #70B2EA;
        }
        .auto-style19 {
            z-index: 1;
            left: 473px;
            top: 648px;
            position: absolute;
            height: 85px;
            width: 145px;
            font-family: "mv boli";
            font-size: x-large;
            color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            background-color: #70B2EA;
        }
        .auto-style20 {
            z-index: 1;
            left: 81px;
            top: 765px;
            position: absolute;
            height: 117px;
            width: 931px;
            font-family: "mv Boli";
            padding: 15px;
            border-radius: 10px;
            font-size: xx-large;
            color: #FF0000;
            font-weight: 700;
            background-color: #949494;
        }
        
        .auto-style22 {
            z-index: 1;
            position: absolute;
            margin-top: 0px;
            height: 85px;
            width: 145px;
            font-family: "mv boli";
            font-size: x-large;
            color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            top: 650px;
            left: 872px;
            background-color: #70B2EA;
        }
        .auto-style23 {
            z-index: 1;
            left: 1137px;
            top: 89px;
            position: absolute;
            right: 399px;
            font-family: "mv boli";
            font-size: x-large;
        }
        .auto-style24 {
            z-index: 1;
            left: 76px;
            top: 134px;
            position: absolute;
            font-family: "mv Boli";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:ListBox ID="lstStockList" runat="server" CssClass="auto-style1" OnSelectedIndexChanged="lstStockList_SelectedIndexChanged"></asp:ListBox>
        <asp:Label ID="lblInfo" runat="server" CssClass="auto-style14" Text="Order Items:"></asp:Label>
        <asp:Label ID="lblDate" runat="server" CssClass="auto-style24" Text="11/02/2022"></asp:Label>
        <asp:ListBox ID="lstItems" runat="server" BackColor="Silver" CssClass="auto-style12"></asp:ListBox>
        <br />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" CssClass="auto-style4" Visible="False" />
        <br />
        <br />
        &nbsp;<asp:TextBox ID="txtFilter" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Text="Customer Name: John Snow"></asp:Label>
        <br />
        <asp:Button ID="btnApply" runat="server" OnClick="btnApply_Click" Text="Search" BorderColor="Black" BorderStyle="Inset" CssClass="auto-style5" BackColor="#70B2EA" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" CssClass="auto-style6" BackColor="#70B2EA" BorderColor="Black" BorderStyle="Groove" />
        <asp:Button ID="btnPay" runat="server" BackColor="#949494" BorderColor="Black" BorderStyle="Outset" CssClass="auto-style16" Text="Pay" OnClick="btnPay_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" CssClass="auto-style10"></asp:Label>
        <br />
        <asp:Label ID="lblOrderNO" runat="server" CssClass="auto-style11" Text="Order Number: 12345"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblTitle" runat="server" CssClass="auto-style8" Text="Rapido"></asp:Label>
        <asp:Label ID="lblUser" runat="server" CssClass="auto-style13" Text="Welcome, Sulaik Noor"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblPrice" runat="server" CssClass="auto-style15" Text="TotalPrice:  £949"></asp:Label>
        <asp:Button ID="btnOrder" runat="server" CssClass="auto-style17" Text="Orders" BorderStyle="Outset" OnClick="btnOrder_Click" />
        <asp:Button ID="btnCustomer" runat="server" CssClass="auto-style18" Text="Customer" OnClick="btnCustomer_Click" BorderStyle="Outset" />
        <asp:Button ID="btnTrade" runat="server" CssClass="auto-style19" Text="Trade-Ins" OnClick="btnTrade_Click" BorderStyle="Outset" />
        <asp:Button ID="btLogOut" runat="server" CssClass="auto-style20" Text="LOG-OUT" OnClick="btLogOut_Click" />
        <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit Item" CssClass="auto-style22" />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Item" CssClass="auto-style7" />
        <asp:Label ID="lblHeading1" runat="server" CssClass="auto-style3" Text="Search Item:"></asp:Label>
    </form>
</body>
</html>
