<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Sleep
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Big Agnes Newcomb SL 0 Sleeping Bag</h3>
                    <a id="s-product1" onclick="showModal('26')"><img src="Assets/Products/Sleep/Big Agnes Newcomb SL 0 Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Marmot Trestles 0 Sleepinng Bag</h3>
                    <a id="s-product2" onclick="showModal('27')"><img src="Assets/Products/Sleep/Marmot Trestles 0 Sleepinng Bag.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">NEMO Canon -40 Sleeping Bag</h3>
                    <a id="s-product3" onclick="showModal('28')"><img src="Assets/Products/Sleep/NEMO Canon -40 Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Igneo 25 Sleeping Bag</h3>
                    <a id="s-product4" onclick="showModal('29')"><img src="Assets/Products/Sleep/REI Co-op Igneo 25 Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Seat to Summit Traveller Tr I Sleeping Bag</h3>
                    <a id="s-product5" onclick="showModal('30')"><img src="Assets/Products/Sleep/Seat to Summit Traveller Tr I Sleeping Bag.jpg" /></a>
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
                <p class="modal-product-description"></p>
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