<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    
        <div class="contact-form">
            <label for="Name">Name:</label>
            <asp:TextBox ID="Name" runat="server" placeholder="Enter your name" class="input-field" />
            
            <label for="Email">Email:</label>
            <asp:TextBox ID="Email" runat="server" placeholder="Enter your email" class="input-field" />
            
            <label for="Message">Message:</label>
            <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" placeholder="Enter your message" class="input-field" />
            
            <asp:Button ID="SubmitButton" runat="server" Text="Send Message"  class="submit-btn" />
        </div>

    <style>
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .contact-form .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .contact-form .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #38bdf8;
            border: none;
            color: white;
            font-weight: bold;
            border-radius: 4px;
            cursor: pointer;
        }

        .contact-form .submit-btn:hover {
            background-color: #1e91c2;
        }
    </style>
</asp:Content>
