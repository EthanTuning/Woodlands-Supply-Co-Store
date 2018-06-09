<%@ Page Title="Order Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Confirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero is-medium">
        <div id="cart-hero-image" class="hero-body">
            <div class="container">
                <h1 id="hero-text" class="title">
                    Order Details
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
            <div class="container">
                <center>
                    <br />
                    <asp:Label ID="Weight" CssClass="cart-total" runat="server" Text="Weight: "></asp:Label>
                    <asp:Label ID="OrderWeight" CssClass="cart-total" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="ShippingCost" CssClass="cart-weight" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Total" CssClass="cart-total" runat="server" Text="Order Total: "></asp:Label>
                    <asp:Label ID="OrderTotal" CssClass="cart-total" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="PlaceOrderBtn" runat="server" CssClass="button check-out-btn" Text="Place Order" OnClick="PlaceOrderBtn_Click"/>
                </center>
            </div>
        </div>
    </section>
</asp:Content>