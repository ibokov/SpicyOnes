<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="spicyones.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spicyonesConnectionString %>" ProviderName="<%$ ConnectionStrings:spicyonesConnectionString.ProviderName %>" SelectCommand="SELECT H.HS_Name as 'Hot Sauce', C.NUM_HS_Produced as Frequency

FROM HOTSAUCE H
JOIN COMPANY C ON C.Company_ID = H.Comp_ID

WHERE C.Num_HS_Produced &gt; 1;"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Hot Sauce" HeaderText="Hot Sauce" SortExpression="Hot Sauce" />
                <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
