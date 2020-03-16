
<%@ Page Title="Query01" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query1.aspx.cs" Inherits="spicyones.Query1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Cssclass= "table table-dark table-hover" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            
        <Columns>
            <asp:TemplateField HeaderText="Guest Name">
            <ItemTemplate>
                <asp:Label ID="Guest_Name" runat="server" Text='<%# Eval("Guest_Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Episode">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Episode_ID") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Episode" runat="server" Text='<%# Eval("Episode_ID") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Season">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Season_Number") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Season" runat="server" Text='<%# Eval("Season_Number") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
            
        </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
 </asp:Content>