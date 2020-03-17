<%@ Page Title="Hall of Shame" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query4.aspx.cs" Inherits="spicyones.Query4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center><h1><%: Title %></h1></center>
    <h2>These are the guests that have failed the Hot Ones challenge!</h2>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Hall of Shame Table" CssClass="btn btn-outline-danger btn-sm" />
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" BorderStyle="None" CssClass ="table table-dark table-striped" AutoGenerateColumns="false">
            <AlternatingRowStyle BackColor="#F7F7F7" ForeColor="#1E1E1E" />
            <Columns>
            <asp:TemplateField HeaderText="Guest Name">
            <ItemTemplate>
                <asp:Label ID="Guest_name" runat="server" Text='<%# Eval("Guest_Name") %>'></asp:Label>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Season">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Season_Number") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Season" runat="server" Text='<%# Eval("Season_Number") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
                <asp:TemplateField HeaderText="Episode Name">
        <ItemTemplate>  
            <asp:Label runat="server" Text='<%# Eval("Ep_Name") %>'></asp:Label>  
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="Episode_Name" runat="server" Text='<%# Eval("Ep_Name") %>'></asp:TextBox>
        </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Failed Hot Sauce Name">
        <ItemTemplate>  
            <asp:Label runat="server" Text='<%# Eval("HS_Name") %>'></asp:Label>  
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="Failed_HS_Name" runat="server" Text='<%# Eval("HS_Name") %>'></asp:TextBox>
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
 </asp:Content>