<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4DataEntry.aspx.cs" Inherits="_1_DataEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 341px;
            top: 86px;
            position: absolute;
            height: 338px;
            width: 877px;
        }
        .auto-style2 {
            z-index: 1;
            left: 832px;
            top: 52px;
            position: absolute;
            width: 292px;
        }
        .auto-style3 {
            z-index: 1;
            left: 1155px;
            top: 50px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDetailsConnectionString %>" SelectCommand="SELECT * FROM [TblCustomer]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="CstmrID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CstmrID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="CstmrID" />
                <asp:BoundField DataField="CstmrFullName" HeaderText="Full Name" SortExpression="CstmrFullName" />
                <asp:BoundField DataField="CstmrDoorNumber" HeaderText="DoorNo" SortExpression="CstmrDoorNumber" />
                <asp:BoundField DataField="CstmrPostCode" HeaderText="PostCode" SortExpression="CstmrPostCode" />
                <asp:BoundField DataField="CstmrPhoneNo" HeaderText="PhoneNo" SortExpression="CstmrPhoneNo" />
                <asp:BoundField DataField="CstmrEmail" HeaderText="Email Address" SortExpression="CstmrEmail" />
            </Columns>
        </asp:GridView>
        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style2"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Search" />
    </form>
</body>
</html>
