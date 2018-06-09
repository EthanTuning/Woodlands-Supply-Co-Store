<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <section class="hero is-fullheight">
            <div id="main-hero-image" class="hero-body">
                <div class="container">
                    <h1 id="main-hero-text" class="title">
                        Go Explore
                    </h1>
                    <div id="logo" class="container">
                        <img src="<%= ResolveUrl("~/Assets/Woodlands-Logo-Main.png") %>" />
                    </div>
                </div>
            </div>
        </section>
        <section id="mission-statement" class="section">
            <div class="container">
                <h1 class="title main-title">Our Mission:</h1>
                <p>
                    Here at Woodlands Supply Co. we aim to encourage people to go out and explore.
                    We are dedicated to supplying the best gear available at a reasonable price.
                    There are countless adventures awaiting you, what are you waiting for?
                </p>
            </div>
        </section>
        <section id="store-or-blog-section" class="section">
            <div class="container">
                <div class="columns">
                    <div id="store-column" class="column is-half">
                        <h1 class="title main-title">Shop</h1>
                        <a class="button is-rounded" href="Shop.aspx">Go</a>
                        <p>See what we have for sale.</p>
                    </div>
                    <div id="blog-column" class="column is-half">
                        <h1 class="title main-title">Blog</h1>
                        <a class="button is-rounded" href="Blog.aspx">Go</a>
                        <p>See what we have to say.</p>
                    </div>
                </div>
            </div>
        </section>
    
</asp:Content>