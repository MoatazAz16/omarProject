<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <table class="style1">
    <tr>
        <td class="style2" colspan="2" style="text-align: center">
            Registeration form</td>
    </tr>
    <tr>
        <td class="style4">
            username</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" Height="28px" Width="292px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            password</td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" Height="28px" Width="292px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            phone number</td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server" Height="28px" Width="292px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="292px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Register" />
&nbsp;<asp:Label ID="lblInfo" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

