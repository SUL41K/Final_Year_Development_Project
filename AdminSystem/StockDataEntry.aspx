<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StockDataEntry.aspx.cs" Inherits="_1_DataEntry" %>

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
            z-index: 1;
            left: 721px;
            top: 285px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            text-align: left;
            width: 465px;
            font-size: x-large;
        }
        .auto-style2 {
            z-index: 1;
            left: 1235px;
            top: 273px;
            position: absolute;
            margin-top: 20px;
            font-size: medium;
            font-family: "mv Boli";
        }
        #form1 {            height: 839px;
            text-align: center;
        }
        .auto-style3 {
            z-index: 1;
            left: 538px;
            top: 300px;
            position: absolute;
            font-family: "MV Boli";
            font-size: x-large;
            width: 180px;
            text-align: left;
        }
        .auto-style4 {
            z-index: 1;
            left: 721px;
            padding: 15px;
            border-radius: 10px;
            top: 355px;
            position: absolute;
            width: 465px;
            font-size: x-large;
        }
        .auto-style5 {
            z-index: 1;
            left: 539px;
            top: 370px;
            position: absolute;
            margin-top: 0px;
            font-size: x-large;
            font-family: "mv Boli";
            width: 180px;
            text-align: left;
        }
        .auto-style6 {
            z-index: 1;
            left: 541px;
            top: 607px;
            position: absolute;
            font-size: x-large;
            font-family: "mv Boli";
            width: 180px;
            text-align: left;
        }
        .auto-style7 {
            z-index: 1;
            left: 723px;
            top: 589px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            width: 465px;
            font-size: x-large;
        }
        .auto-style8 {
            z-index: 1;
            left: 540px;
            top: 448px;
            position: absolute;
            font-size: x-large;
            font-family: "mv Boli";
            width: 180px;
            text-align: left;
        }
        .auto-style9 {
            z-index: 1;
            left: 722px;
            top: 430px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            width: 465px;
            font-size: x-large;
        }
        .auto-style10 {
            z-index: 1;
            left: 541px;
            top: 520px;
            position: absolute;
            font-size: x-large;
            font-family: "mv Boli";
            width: 180px;
            text-align: left;
        }
        .auto-style11 {
            z-index: 1;
            left: 723px;
            top: 503px;
            position: absolute;
            padding: 15px;
            border-radius: 10px;
            width: 465px;
            font-size: x-large;
        }
        .auto-style12 {
            z-index: 1;
            left: 821px;
            top: 686px;
            position: absolute;
            height: 39px;
            width: 271px;
            font-family: "mv boli";
            font-size: x-large;
        }
        .auto-style13 {
            z-index: 1;
            left: 725px;
            top: 240px;
            position: absolute;
        }
        .auto-style14 {
            z-index: 1;
            left: 600px;
            top: 789px;
            position: absolute;
            width: 135px;

            right: 751px;
            font-family: "MV BOLi";
            font-size: 24pt;
        }
        .auto-style15 {
            z-index: 1;
            left: 1134px;
            top: 787px;
            position: absolute;
            font-family: "MV Boli";
            font-size: 24pt;
        }
        .auto-style16 {
            font-size: 42pt;
            font-family: "MV Boli";
            color: #60AAE8;
            text-align: left;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            z-index: 1;
            left: 397px;
            top: 339px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
        <asp:TextBox ID="txtGameID" runat="server" CssClass="auto-style1"></asp:TextBox>
            <span class="auto-style16">
            <br />
            RAPIDO<br />
            </span>
        <br />
        <br />
        <asp:TextBox ID="txtGameName" runat="server" CssClass="auto-style4"></asp:TextBox>
        <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click" Text="Find" CssClass="auto-style2" />
            <asp:Button ID="btnFndName" runat="server" CssClass="auto-style18" OnClick="btnFndName_Click" Text="Find Name" />
        <asp:Label ID="lblGameID" runat="server" Text="Device ID:" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblDate" runat="server" Text="Release Date:" CssClass="auto-style6"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="lblGameName" runat="server" Text="Model:" CssClass="auto-style5"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblPrice" runat="server" Text="Price:" CssClass="auto-style8"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style9"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblAgeRating" runat="server" Text="Storage:" CssClass="auto-style10"></asp:Label>
        <asp:TextBox ID="txtAgeRating" runat="server" OnTextChanged="txtAgeRating_TextChanged" CssClass="auto-style11"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" CssClass="auto-style13"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="Enter" CssClass="auto-style14" />
&nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="auto-style15" />
        <asp:CheckBox ID="chkAvailable" runat="server" Text="In Stock" OnCheckChanged="chkAvailable_CheckedChange" CssClass="auto-style12" BorderStyle="Solid" />
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
        <br />
        </div>
    </form>
</body>
</html>
