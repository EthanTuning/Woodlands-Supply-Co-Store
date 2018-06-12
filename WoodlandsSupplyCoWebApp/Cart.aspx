<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero is-medium">
        <div id="cart-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Your Cart
                </h1>
            </div>
        </div>
    </section>
    <section id="cart-details-section" class="section">
        <div class="container">
            <table id="invoiceTable" class="table is-fullwidth" runat="server">
                <thead>
                    <tr>
                        <th>SKU</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Weight</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <div class="container">
            <br />
            <br />
            <div class="cart-info-labels">
                <asp:Label ID="Weight" CssClass="cart-weight" runat="server" Text="Total Weight: " />
                <asp:Label ID="CartWeight" CssClass="cart-weight" runat="server" />
            </div>
            <br />
            <br />
            <div class="cart-info-labels">
                <p id="cart-weight-description">**Estimated shipping cost: $0.46 x cart weight.</p>
            </div>
            <br />
            <br />
            <div class="cart-info-labels">
                <asp:Label ID="Total" CssClass="cart-total" runat="server" Text="Sub Total: " />
                <asp:Label ID="CartTotal" CssClass="cart-total" runat="server" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <center>
                <asp:Button ID="CheckOutBtn" runat="server" CssClass="button check-out-btn" Text="Check Out" OnClick="CheckOutBtn_Click"/>
            </center>
        </div>
    </section>
</asp:Content>
