<%@ Page Title="Backpacks" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Backpacks.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Backpacks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Backpacks
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Granite Gear Crown2 60 Pack</h3>
                    <a id="b-product1" onclick="showModal('8')"><img src="Assets/Products/Backpacks/Granite Gear Crown2 60 Pack.jpg" /></a>
                    <h4 class="title product-title">$200</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Kid Comfort 3 Child Carrier</h3>
                    <a id="b-product2" onclick="showModal('9')"><img src="Assets/Products/Backpacks/Kid Comfort 3 Child Carrier.jpg" /></a>
                    <h4 class="title product-title">$220</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Osprey Atmos 65 Pack</h3>
                    <a id="b-product3" onclick="showModal('10')"><img src="Assets/Products/Backpacks/Osprey Atmos 65 Pack.jpg" /></a>
                    <h4 class="title product-title">$200</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Trail 25</h3>
                    <a id="b-product4" onclick="showModal('11')"><img src="Assets/Products/Backpacks/REI Co-op Trail 25.jpg" /></a>
                    <h4 class="title product-title">$50</h4>
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