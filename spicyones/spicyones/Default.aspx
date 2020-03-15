<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="spicyones._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>SpicyOnes</h1>
        <p class="lead">Spicy Ones is a HotSauce database inspired by and designed for the series &quot;Hot Ones&quot;</p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
        <p>&nbsp;</p>
        <p>
            <img src="Images/Logo/logo.png" style="margin: 0 auto; width: 100%;" /></p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Want to know more about a Hot Ones Guest Appearance?</h2>
            <p>
                Click learn more to retrive info about a the season and episode a guest appeared on!</p>
            <p>
                <a class="btn btn-default" href="WebForm2">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Cedes Test</h2>
            <p>UW computer test</p>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <br />
    <h3>Search by hotsauce name below to see if&nbsp; it has been featured on HotOnes!</h3>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="1856px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Search" Width="159px" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />

    <br />
    <br />
    
</asp:Content>
