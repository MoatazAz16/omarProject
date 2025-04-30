<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" Runat="Server">
    Sign In
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form-container {
            width: 50%;
            margin: 40px auto;
            background-color: rgba(255,255,255,0.85);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }

        .form-title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .input-label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }

        .input-box {
            width: 100%;
            padding: 8px;
            border: 2px solid #18186A;
            border-radius: 5px;
        }

        .form-button {
            width: 100%;
            margin-top: 20px;
            background-color: #18186A;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-button:hover {
            background-color: #1a1a99;
        }

        .message {
            text-align: center;
            font-weight: bold;
            margin-top: 15px;
        }

        .error-message { color: red; }
        .success-message { color: green; }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <div class="form-title">Sign In</div>

        <asp:Label ID="lblMessage" runat="server" CssClass="message" />

        <label class="input-label">User ID</label>
        <asp:TextBox ID="txtUserID" runat="server" CssClass="input-box" />

        <label class="input-label">Username</label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" />

        <label class="input-label">Email</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" TextMode="Email" />

        <label class="input-label">Phone Number</label>
        <asp:TextBox ID="txtPhone" runat="server" CssClass="input-box" TextMode="Phone" />

        <label class="input-label">Password</label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" />

        <label class="input-label">Role</label>
        <asp:DropDownList ID="ddlRole" runat="server" CssClass="input-box">
            <asp:ListItem Text="Admin" Value="Admin" />
            <asp:ListItem Text="User" Value="User" />
        </asp:DropDownList>

<asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="form-button" />
    </div>
</asp:Content>
