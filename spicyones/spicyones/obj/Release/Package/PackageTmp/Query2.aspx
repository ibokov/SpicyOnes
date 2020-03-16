<%@ Page Title="Query02" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query2.aspx.cs" Inherits="spicyones.Query2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" CssClass ="table table-dark table-striped" AutoGenerateColumns="false">
            <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
            <asp:TemplateField HeaderText="Hotsauce Name">
            <ItemTemplate>
                <asp:Label ID="Hotsauce_Name" runat="server" Text='<%# Eval("HS_Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Frequency">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("NUM_HS_Produced") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Frequency" runat="server" Text='<%# Eval("NUM_HS_Produced") %>'></asp:TextBox>
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