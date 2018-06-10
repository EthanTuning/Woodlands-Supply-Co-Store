<%@ Page Title="Camping Accessories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CampingAccessories.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.CampingAccessories" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero">
        <div id="shop-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Camping Accessories
                </h1>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">ENO Double Deluxe Hammock</h3>
                    <a id="ca-product1" onclick="showModal('12')"><img src="Assets/Products/Camping Accessories/ENO Double Deluxe Hammock.jpg" /></a>
                    <h4 class="title product-title">$60</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">ENO Sub7 Hammock</h3>
                    <a id="ca-product2" onclick="showModal('13')"><img src="Assets/Products/Camping Accessories/ENO Sub7 Hammock.png" /></a>
                    <h4 class="title product-title">$35</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Helinox Table One</h3>
                    <a id="ca-product3" onclick="showModal('14')"><img src="Assets/Products/Camping Accessories/Helinox Table One.jpg" /></a>
                    <h4 class="title product-title">$90</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Kelty Discovery Low-Level Seat</h3>
                    <a id="ca-product4" onclick="showModal('15')"><img src="Assets/Products/Camping Accessories/Kelty Discovery Low-Level Seat.jpg" /></a>
                    <h4 class="title product-title">$100</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">Mountain Summit Gear Roll Top Kitchen</h3>
                    <a id="ca-product5" onclick="showModal('16')"><img src="Assets/Products/Camping Accessories/Mountain Summit Gear Roll Top Kitchen.jpg" /></a>
                    <h4 class="title product-title">$100</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Camp Xtra Chair</h3>
                    <a id="ca-product6" onclick="showModal('17')"><img src="Assets/Products/Camping Accessories/REI Co-op Camp Xtra Chair.jpg" /></a>
                    <h4 class="title product-title">$25</h4>
                </div>
                <div class="column is-one-third product-image">
                    <h3 class="title product-title">REI Co-op Trail Stool</h3>
                    <a id="ca-product7" onclick="showModal('18')"><img src="Assets/Products/Camping Accessories/REI Co-op Trail Stool.jpg" /></a>
                    <h4 class="title product-title">$15</h4>
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
                <asp:Button ID="AddBtn" CssClass="modal-button" Text="Add To Cart" runat="server" OnClick="AddBtn_Click"/>
                <a class="modal-button" href="Cart.aspx">View Cart</a>
            </footer>
        </div>
        <button class="modal-close"></button>
    </div>
</asp:Content>
