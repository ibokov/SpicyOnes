<%@ Page Title="The Hottest Sauces" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query3.aspx.cs" Inherits="spicyones.Query3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center><h1><%: Title %></h1></center>
    <h2>Here are some of the sauces with a scoville level greater than 200,000 units!</h2>
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" BorderStyle="None" CssClass ="table table-dark table-striped" AutoGenerateColumns="false">
            <AlternatingRowStyle BackColor="#F7F7F7" ForeColor="#1E1E1E" />
            <Columns>
            <asp:TemplateField HeaderText="Hotsauce Name">
            <ItemTemplate>
                <asp:Label ID="Hotsauce" runat="server" Text='<%# Eval("HS_Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Scoville">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("HS_Scoville") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Scoville" runat="server" Text='<%# Eval("HS_Scoville") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
            
        </Columns>

            <EditRowStyle ForeColor="#1E1E1E" />

            <FooterStyle BackColor="#B5C7DE" ForeColor="#1E1E1E" />
            <HeaderStyle BackColor="#FF0044" Font-Bold="True" ForeColor="#1E1E1E" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#1E1E1E" HorizontalAlign="Right" />
            <RowStyle BackColor="#FDD38F" ForeColor="#1E1E1E" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="#1E1E1E" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    <br />
    <br />
    <h2>The Last Dab is 800 times hotter than a jalapeno which only has 2500 scoville.</h2>
 </asp:Content>