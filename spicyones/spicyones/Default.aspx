<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Default.aspx.cs" Inherits="spicyones._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><center>Spicy Ones</center></h1>
        <p class="lead"><center>Spicy Ones is a Hot Sauce database inspired by and designed for the series &quot;Hot Ones&quot;</center></p>
        <p><center><a href="About.aspx" class="btn btn-outline-danger btn sm" href="Query1.aspx">Learn more &raquo;</a></center></p>
        <p>&nbsp;</p>
        <p>
            <center><img src="Images/Logo/logo.png" style="margin: 0 auto; width: 75%;" /></center>
        <center>
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" style="margin: 0 auto; height:30%; width: 55%;" ImageUrl="~/Images/hall_shame.jpg" OnClick="ImageButton1_Click" PostBackUrl="~/Query4.aspx" /></center>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2><center>Want to know more about a Hot Ones Guest Appearance?</center></h2>
            <p>
                Click learn more to retrive info about a the season and episode a guest appeared on!</p>
            <p>
                <a class="btn btn-outline-danger btn-sm" href="Query1.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2><center>Some sauces have appeared on the show multiple times!</center></h2>
            <p>The link below will display reoccurring hot sauces from Hot Ones.</p>
            <p>
                <a class="btn btn-outline-danger btn sm" href="Query2.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Curious about some of the hottest sauces on the show?</h2>
            <p>
                Here are some of the sauces with a scoville level greater than 200,000 units.
            </p>
            <p>
                <a class="btn btn-outline-danger btn sm" href="Query3.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <br />
   
    <h3><center>Search by Hot Sauce name below to see if&nbsp;it has been featured on Hot Ones!</center></h3>
    <div class="form-inline">
        
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control mb-8 mr-sm-8" style="text-align:center" widht ="80%"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Search" Width="159px" CssClass="btn btn-outline-danger btn sm"/>
        
        </div>    
    
    <br />
    <br />
    <center><asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" CssClass="table-danger" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#FABD63" ForeColor="#1E1E1E" />
        <Columns>
            <asp:TemplateField HeaderText="Hotsauce ID">
            <ItemTemplate>
                <asp:Label ID="Hotsauce_ID" runat="server" Text='<%# Eval("HS_ID") %>'></asp:Label>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Hotsauce Name">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("HS_Name") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Hotsauce_Name" runat="server" Text='<%# Eval("HS_Name") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Scoville">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("HS_Scoville") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Scoville" runat="server" Text='<%# Eval("HS_Scoville") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Creation Date">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Creation_Date") %>'></asp:Label>  
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="Creation_Date" runat="server" Text='<%# Eval("Creation_Date") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>                   
        <asp:TemplateField HeaderText="Pepper ID">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Pepper_ID") %>'></asp:Label>  
            </ItemTemplate>    
            <EditItemTemplate>
                <asp:TextBox ID="Pepper_ID" runat="server" Text='<%# Eval("Pepper_ID") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Company ID">
            <ItemTemplate>  
                <asp:Label runat="server" Text='<%# Eval("Comp_ID") %>'></asp:Label>  
            </ItemTemplate>    
            <EditItemTemplate>
                <asp:TextBox ID="Company_ID" runat="server" Text='<%# Eval("Comp_ID") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
            
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#FF0044" Font-Bold="True" ForeColor="#1E1E1E" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#FDD38F" ForeColor="#1E1E1E" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView></center>
    <br />

    <br />
    <br />
    
</asp:Content>
