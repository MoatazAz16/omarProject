<%@ Page Title="Our Team" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Team.aspx.cs" Inherits="Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" Runat="Server">
    Our Team
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .team-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .team-member {
            background-color: #f0f0f0;
            border-radius: 10px;
            margin: 15px;
            padding: 20px;
            width: 250px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .team-member h3 {
            margin: 10px 0 5px 0;
        }

        .team-member p {
            color: #666;
            font-size: 14px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="team-container">
        <div class="team-member">
            <img src="assets/photos/Ali Ahmed.jpg" alt="Member 1" />
            <h3>Ali Ahmed</h3>
            <p>Project Manager</p>
        </div>
        <div class="team-member">
            <img src="assets/photos/Sarah Saleh.jpg" alt="Member 2" />
            <h3>Sarah Saleh</h3>
            <p>Software Engineer</p>
        </div>
        <div class="team-member">
            <img src="assets/photos/Omar Khaled.jpg" alt="Member 3" />
            <h3>Omar Khaled</h3>
            <p>Designer</p>
        </div>
    </div>
</asp:Content>
