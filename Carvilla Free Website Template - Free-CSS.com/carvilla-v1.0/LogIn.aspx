<%@ Page Title="Log In" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" Runat="Server">
    Log In
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div style="width:300px; margin:50px auto; padding:20px; border:1px solid #ccc; border-radius:10px;">
            <h2 style="text-align:center;">Log In</h2>
            
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br /><br />
            
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox><br /><br />
            
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100%"></asp:TextBox><br /><br />
            
            <asp:Button ID="btnLogin" runat="server" Text="Log In" Width="100%" OnClick="btnLogin_Click" />
        </div>

</asp:Content>
