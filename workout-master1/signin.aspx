<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                Login Form</td>
        </tr>
        <tr>
            <td class="style2">
                username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                password</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="303px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
            </td>
            <td>
                <asp:Label ID="lblInfo" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

