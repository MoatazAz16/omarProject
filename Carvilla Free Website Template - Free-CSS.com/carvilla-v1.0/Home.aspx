<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" Runat="Server">
Diamond Road Cars 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <!-- إضافة أي ملفات CSS أو جافا سكريبت إضافية هنا -->
    <style>
        /* تنسيق القسم الرئيسي (hero) */
        .hero-section {
            text-align: center;
            margin-top: 40px;
        }

        .hero-section h1 {
            font-size: 36px;
            font-weight: bold;
            color: #333;
        }

        .hero-section p {
            font-size: 18px;
            color: #555;
        }

  .hero-img {
    width: 200px;
    height: px;
    border-radius: 50%;
    object-fit: cover;
    border: 2px solid #1f2937; /* إطار اختياري بلون داكن */
}

        /* تنسيق قائمة السيارات المميزة */
        .featured-cars {
            margin-top: 40px;
            text-align: center;
        }

        .featured-cars h2 {
            font-size: 28px;
            color: #333;
        }

        .car-logos {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .car-item {
            text-align: center;
            margin: 20px;
        }

        .car-logo {
            width: 100px;
            height: auto;
            margin-bottom: 10px;
            transition: transform 0.3s ease;
        }

        .car-logo:hover {
            transform: scale(1.1);
        }

        .car-item a {
            display: block;
            font-size: 16px;
            color: #007BFF;
            text-decoration: none;
            margin-top: 8px;
        }

        .car-item a:hover {
            text-decoration: underline;
        }

        /* تنسيق القسم الخاص بـ "لماذا تختارنا" */
        .info-section {
            margin-top: 40px;
            text-align: center;
        }

        .info-section h3 {
            font-size: 24px;
            color: #333;
        }

        .info-section p {
            font-size: 16px;
            color: #555;
        }

        .info-img {
            width: 80%;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-section">
        <h1>Welcome to Diamond Road Cars!estination for premium cars.</h1>
<img src="assets/photos/Omarlogo.png" alt="Diamond Road Cars Banner" class="hero-img" />
    </div>

    <!-- قائمة السيارات المميزة -->
    <div class="featured-cars">
        <h2>Top Brands</h2>
        <div class="car-logos">
            <div class="car-item">
                <img src="assets/photos/bmw-logo.png" alt="BMW" class="car-logo" />
                <a href="#">BMW</a>
            </div>
            <div class="car-item">
                <img src="assets/photos/Audi-logo.png" alt="Audi" class="car-logo" />
                <a href="#">Audi</a>
            </div>
            <div class="car-item">
                <img src="assets/photos/Mercedes-logo.png" alt="Mercedes" class="car-logo" />
                <a href="#">Mercedes</a>
            </div>
            <div class="car-item">
                <img src="assets/photos/Ferrari-logo.png" alt="Ferrari" class="car-logo" />
                <a href="#">Ferrari</a>
            </div>
        </div>
    </div>

    <!-- معلومات إضافية -->
    <div class="info-section">
        <h3>Why Choose Diamond Road Cars ?</h3>
        <p>We offer a wide selection of cars, personalized service, and competitive pricing.</p>
        <img src="assets/photos/Img3.jpg" alt="Why Choose Us" class="info-img" />
    </div>
</asp:Content>
