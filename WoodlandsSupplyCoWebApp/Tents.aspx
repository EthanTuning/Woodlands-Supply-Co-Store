<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Tents
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Big Agnes Fly Creek HV UL 1 mtnGLO Tent</h3>
                    <a id="t-product1" onclick="showModal('31')"><img src="Assets/Products/Tents/Big Agnes Fly Creek HV UL 1 mtnGLO Tent.png" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">MSR FreeLite 3 Tent</h3>
                    <a id="t-product2" onclick="showModal('32')"><img src="Assets/Products/Tents/MSR FreeLite 3 Tent.png" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Half Dome 2 Plus Tent</h3>
                    <a id="t-product3" onclick="showModal('33')"><img src="Assets/Products/Tents/REI Co-op Half Dome 2 Plus Tent.jpg" /></a>
                    <h4 class="title product-title">$20</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Passage 2 Tent</h3>
                    <a id="t-product4" onclick="showModal('34')"><img src="Assets/Products/Tents/REI Co-op Passage 2 Tent.jpg" /></a>
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