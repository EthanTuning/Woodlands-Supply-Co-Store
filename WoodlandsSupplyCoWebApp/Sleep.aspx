<%@ Page Title="Sleep" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sleep.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Sleep" %>

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
                    <h4 class="title product-title">$165</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Marmot Trestles 0 Sleepinng Bag</h3>
                    <a id="s-product2" onclick="showModal('27')"><img src="Assets/Products/Sleep/Marmot Trestles 0 Sleepinng Bag.jpg" /></a>
                    <h4 class="title product-title">$120</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">NEMO Canon -40 Sleeping Bag</h3>
                    <a id="s-product3" onclick="showModal('28')"><img src="Assets/Products/Sleep/NEMO Canon -40 Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$790</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Igneo 25 Sleeping Bag</h3>
                    <a id="s-product4" onclick="showModal('29')"><img src="Assets/Products/Sleep/REI Co-op Igneo 25 Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$195</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Seat to Summit Traveller Tr I Sleeping Bag</h3>
                    <a id="s-product5" onclick="showModal('30')"><img src="Assets/Products/Sleep/Seat to Summit Traveller Tr I Sleeping Bag.jpg" /></a>
                    <h4 class="title product-title">$230</h4>
                </div>
            </div>
        </div>
    </section>
    <div class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <input id="ProductName" name="ProductName" class="modal-card-title" readonly=true/>
            </header>
            <section class="modal-card-body">
                <div class="product-image">
                    <img class="modal-product-image" src="" />
                </div>
                <input id="ProductDescription" name="ProductDescription" class="modal-product-description" readonly="true"/>
                <br />
                <input id="ProductWeight" name="ProductWeight" class="modal-product-weight" readonly="true"/>
                <br />
                <input id="ProductPrice" name="ProductPrice" class="modal-product-price" readonly="true"/>
                <br />
                <label>Quantity: <input id="ProductQuantity" name="ProductQuantity" type="number" style="width:45px;" min="1" max="50" value="1"/></label>
            </section>
            <footer class="modal-card-foot">
                <asp:Button ID="AddBtn" CssClass="button" Text="Add To Cart" runat="server" OnClick="AddBtn_Click"/>
                <a class="button" href="Cart.aspx">View Cart</a>
            </footer>
        </div>
        <button class="modal-close"></button>
    </div>
</asp:Content>