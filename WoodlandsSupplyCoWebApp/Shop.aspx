<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero is-medium">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Shop
                </h1>
            </div>
        </div>
    </section>
    <section id="options" class="section">
        <div class="container">
            <h2 class="title main-title">What are you looking for?</h2>
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Backpacking Accessories</h3>
                    <a href="BackpackAccessories.aspx"><img src="Assets/Products/Backpacking Accessories/Suunto MC-2G Navigator Compass.jpg" /></a>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Backpacks</h3>
                    <a href="Backpacks.aspx"><img src="Assets/Products/Backpacks/Granite Gear Crown2 60 Pack.jpg" /></a>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Camping Accessories</h3>
                    <a href="CampingAccessories.aspx"><img src="Assets/Products/Camping Accessories/ENO Double Deluxe Hammock.jpg" /></a>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Clothing</h3>
                    <a href="Clothing.aspx"><img src="Assets/Products/Clothing/Asolo Fulton Mid Hiking Boots.jpg" /></a>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Sleep</h3>
                    <a href="Sleep.aspx"><img src="Assets/Products/Sleep/Marmot Trestles 0 Sleepinng Bag.jpg" /></a>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title secondary-title">Tents</h3>
                    <a href="Tents.aspx"><img src="Assets/Products/Tents/Big Agnes Fly Creek HV UL 1 mtnGLO Tent.png" /></a>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
