<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductTable.aspx.cs" Inherits="ProductTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 312px;
            top: 164px;
            position: absolute;
            height: 187px;
            width: 1043px;
            text-align: center;
        }
        .auto-style2 {
            z-index: 1;
            left: 316px;
            top: 126px;
            position: absolute;
        }
        .auto-style3 {
            z-index: 1;
            left: 424px;
            top: 123px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="PrdID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PrdID" HeaderText="PrdID" InsertVisible="False" ReadOnly="True" SortExpression="PrdID" />
                    <asp:BoundField DataField="PrdName" HeaderText="PrdName" SortExpression="PrdName" />
                    <asp:BoundField DataField="PrdType" HeaderText="PrdType" SortExpression="PrdType" />
                    <asp:BoundField DataField="PrdStorage" HeaderText="PrdStorage" SortExpression="PrdStorage" />
                    <asp:BoundField DataField="PrdColour" HeaderText="PrdColour" SortExpression="PrdColour" />
                    <asp:BoundField DataField="PrdPrice" HeaderText="PrdPrice" SortExpression="PrdPrice" />
                    <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDetailsConnectionString %>" DeleteCommand="DELETE FROM [TblProduct] WHERE [PrdID] = @PrdID" InsertCommand="INSERT INTO [TblProduct] ([PrdName], [PrdType], [PrdStorage], [PrdColour], [PrdPrice], [Availability]) VALUES (@PrdName, @PrdType, @PrdStorage, @PrdColour, @PrdPrice, @Availability)" SelectCommand="SELECT * FROM [TblProduct] WHERE ([PrdType] = @PrdType)" UpdateCommand="UPDATE [TblProduct] SET [PrdName] = @PrdName, [PrdType] = @PrdType, [PrdStorage] = @PrdStorage, [PrdColour] = @PrdColour, [PrdPrice] = @PrdPrice, [Availability] = @Availability WHERE [PrdID] = @PrdID">
                <DeleteParameters>
                    <asp:Parameter Name="PrdID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PrdName" Type="String" />
                    <asp:Parameter Name="PrdType" Type="String" />
                    <asp:Parameter Name="PrdStorage" Type="Int32" />
                    <asp:Parameter Name="PrdColour" Type="String" />
                    <asp:Parameter Name="PrdPrice" Type="Decimal" />
                    <asp:Parameter Name="Availability" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="PrdType" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PrdName" Type="String" />
                    <asp:Parameter Name="PrdType" Type="String" />
                    <asp:Parameter Name="PrdStorage" Type="Int32" />
                    <asp:Parameter Name="PrdColour" Type="String" />
                    <asp:Parameter Name="PrdPrice" Type="Decimal" />
                    <asp:Parameter Name="Availability" Type="Boolean" />
                    <asp:Parameter Name="PrdID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource2" DataTextField="PrdType" DataValueField="PrdType">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDetailsConnectionString %>" SelectCommand="SELECT DISTINCT [PrdType] FROM [TblProduct]"></asp:SqlDataSource>
    </form>
</body>
</html>
