<%@ Page Title="Featured Cars" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Featured_Cars.aspx.cs" Inherits="Featured_Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" Runat="Server">
    Featured Cars
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .car-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }

        .car-card {
            border: 1px solid #ccc;
            border-radius: 10px;
            width: 250px;
            text-align: center;
            padding: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .car-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }

        .car-name {
            font-weight: bold;
            margin-top: 10px;
            font-size: 18px;
        }

        .car-price {
            color: #555;
            font-size: 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="car-grid">
        <div class="car-card">
            <img src="assets/photos/Toyota Corolla.jpg" alt="Toyota Corolla" />
            <div class="car-name">Toyota Corolla</div>
            <div class="car-price">Price: $20,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Honda Civic.jpg" alt="Honda Civic" />
            <div class="car-name">Honda Civic</div>
            <div class="car-price">Price: $22,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Ferrari.jpg" alt="Ferrari" />
            <div class="car-name">Ferrari</div>
            <div class="car-price">Price: $210,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/bmw m5.jpg" alt="BMW M5" />
            <div class="car-name">BMW M5</div>
            <div class="car-price">Price: $23,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Nissan Sentra.jpg" alt="Nissan Sentra" />
            <div class="car-name">Nissan Sentra</div>
            <div class="car-price">Price: $19,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Mercedes.jpg" alt="Mercedes" />
            <div class="car-name">Mercedes</div>
            <div class="car-price">Price: $21,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Kia Forte.jpg" alt="Kia Forte" />
            <div class="car-name">Kia Forte</div>
            <div class="car-price">Price: $20,000</div>
        </div>

        <div class="car-card">
            <img src="assets/photos/Volkswagen Jetta.jpg" alt="Volkswagen Jetta" />
            <div class="car-name">Volkswagen Jetta</div>
            <div class="car-price">Price: $25,000</div>
        </div>
    </div>

</asp:Content>
