
<%@ Page Title="Hot Ones Guest Appearance!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query1.aspx.cs" Inherits="spicyones.Query1" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <center><h1><%: Title %></h1></center>
    <p>&nbsp;</p>
        
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-outline-danger dropdown-toggle">
            
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass ="btn btn-outline-danger btn sm" />
           
        <div
        
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#6C757D" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Cssclass= "table table-danger table-hover" AutoGenerateColumns="False" EditRowStyle-BackColor="#6C757D" EditRowStyle-BorderColor="#6C757D" EmptyDataRowStyle-BackColor="#6C757D">
            <AlternatingRowStyle BackColor="#FABD63" ForeColor="#1E1E1E" />
            
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
            <EditRowStyle BackColor="#6C757D" />

<EmptyDataRowStyle BackColor="#6C757D"></EmptyDataRowStyle>

            <FooterStyle BackColor="#6C757D" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#FF0044" Font-Bold="True" ForeColor="#1E1E1E" />
            <PagerStyle BackColor="#6C757D" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#FDD38F" ForeColor="#1E1E1E" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </div>
</asp:Content>