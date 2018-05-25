<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WoodlandsSupplyCoWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <section class="hero is-fullheight">
            <div id="hero-image" class="hero-body">
                <div class="container">
                    <h1 id="hero-text" class="title">
                        Go Explore
                    </h1>
                    <div id="logo" class="container">
                        <img src="<%= ResolveUrl("~/Assets/Woodlands-Logo-Main.png") %>" />
                    </div>
                </div>
            </div>
        </section>
        <section id="store-or-blog-section" class="section">
            <div class="container">
                <div class="columns">
                    <div id="store-column" class="column is-one-half">
                        <h1 class="title">Shop</h1>
                    </div>
                    <div id="blog-column" class="column is-one-half">
                        <h1 class="title">Blog</h1>
                    </div>
                </div>
            </div>
        </section>
    
</asp:Content>