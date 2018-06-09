<%@ Page Title="Clothing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clothing.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Clothing" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Clothing
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Asolo Fulton Mid Hiking Boots</h3>
                    <a id="c-product1" onclick="showModal('19')"><img src="Assets/Products/Clothing/Asolo Fulton Mid Hiking Boots.jpg" /></a>
                    <h4 class="title product-title">$140</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Marmot PreCip Rain Jacket</h3>
                    <a id="c-product2" onclick="showModal('20')"><img src="Assets/Products/Clothing/Marmot PreCip Rain Jacket.png" /></a>
                    <h4 class="title product-title">$70</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Marmot PreCip Safari Hat</h3>
                    <a id="c-product3" onclick="showModal('21')"><img src="Assets/Products/Clothing/Marmot PreCip Safari Hat.jpg" /></a>
                    <h4 class="title product-title">$45</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Outdoor Research Plaza Down Vest</h3>
                    <a id="c-product4" onclick="showModal('22')"><img src="Assets/Products/Clothing/Outdoor Research Plaza Down Vest.jpg" /></a>
                    <h4 class="title product-title">$175</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Patagonia Down Sweater</h3>
                    <a id="c-product5" onclick="showModal('23')"><img src="Assets/Products/Clothing/Patagonia Down Sweater.jpg" /></a>
                    <h4 class="title product-title">$45</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Salomon Quest 4D GTX Hiking Boots</h3>
                    <a id="c-product6" onclick="showModal('24')"><img src="Assets/Products/Clothing/Salomon Quest 4D GTX Hiking Boots.jpg" /></a>
                    <h4 class="title product-title">$175</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Teva Voya Infinity Sandals</h3>
                    <a id="c-product7" onclick="showModal('25')"><img src="Assets/Products/Clothing/Teva Voya Infinity Sandals.jpg" /></a>
                    <h4 class="title product-title">$145</h4>
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
