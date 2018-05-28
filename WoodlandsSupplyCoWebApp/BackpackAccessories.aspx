<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Backpacking Accessories
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Aventure Medical Kits Mountain Series Hiker Med Kit</h3>
                    <a id="ba-product1" onclick="showModal('1')"><img src="Assets/Products/Backpacking Accessories/Aventure Medical Kits Mountain Series Hiker Med Kit.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Black Biamond Trail Ergo Cork Trekking Poles</h3>
                    <a id="ba-product2" onclick="showModal('2')"><img src="Assets/Products/Backpacking Accessories/Black Biamond Trail Ergo Cork Trekking Poles.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Petzl Tikkina Headlamp</h3>
                    <a id="ba-product3" onclick="showModal('3')"><img src="Assets/Products/Backpacking Accessories/Petzl Tikkina Headlamp.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Playtypus Big Zip LP Reservoir</h3>
                    <a id="ba-product4" onclick="showModal('4')"><img src="Assets/Products/Backpacking Accessories/Playtypus Big Zip LP Reservoir.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Bitty Sack 3 Pack</h3>
                    <a id="ba-product5" onclick="showModal('5')"><img src="Assets/Products/Backpacking Accessories/REI Co-op Bitty Sack 3 Pack.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Traverse 70 Hipbelt</h3>
                    <a id="ba-product6" onclick="showModal('6')"><img src="Assets/Products/Backpacking Accessories/REI Co-op Traverse 70 Hipbelt.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Suunto MC-2G Navigator Compass</h3>
                    <a id="ba-product7" onclick="showModal('7')"><img src="Assets/Products/Backpacking Accessories/Suunto MC-2G Navigator Compass.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
            </div>
        </div>
    </section>
    <div class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title"></p>
            </header>
            <section class="modal-card-body">
                <div class="product-image">
                    <img class="modal-product-image" src="" />
                </div>
                <p class="modal-product-price"></p>
                <label>Quantity: <input id="quantity" type="number" style="width:45px;" /></label>
            </section>
            <footer class="modal-card-foot">
                <asp:Button ID="AddBtn" CssClass="button add-btn" Text="Add To Cart" runat="server"/>
                <a class="button" href="Cart.aspx">View Cart</a>
            </footer>
        </div>
        <button class="modal-close"></button>
    </div>
</asp:Content>
