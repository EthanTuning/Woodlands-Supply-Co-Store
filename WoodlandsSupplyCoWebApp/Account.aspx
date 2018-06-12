<%@ Page Title="Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="WoodlandsSupplyCoWebApp.Account" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="login-or-create-section" class="section">
        <div class="container">
            <div class="columns">
                <div id="login-form" class="column">
                    <h1 class="title main-title">Login</h1>
                    <div class="field">
                        <label class="label">Email </label><input class="input" type="email" placeholder="Email" />
                    </div>
                    <div class="field">
                        <label class="label">Password </label><input class="input" type="password" placeholder="Password" />
                    </div>
                    <div class="field">
                        <center><asp:button ID="LoginBtn" CssClass="button" runat="server" Text="Login" /></center>
                    </div>
                </div>
                <div id="create-form" class="column">
                    <h1 class="title main-title">Create Account</h1>
                    <div class="field">
                        <label class="label">First Name </label><input id="CustomerFirstName" name="CustomerFirstName" class="input" type="text" placeholder="First Name" required />
                        <br />
                    </div>
                    <div class="field">
                        <label class="label">Last Name </label><input id="CustomerLastName" name="CustomerLastName"  class="input" type="text" placeholder="Last Name" required />
                        <br />
                    </div>
                    <div class="field">
                        <label class="label">Email </label><input id="CustomerEmail" name="CustomerEmail"  class="input" type="email" placeholder="Email" required />
                        <br />
                    </div>
                    <div class="field">
                        <label class="label">Address </label><input id="CustomerAddress" name="CustomerAddress"  class="input" type="text" placeholder="Address Pattern: '253 N. Cherry St.'" pattern="\d{1,5}\s\w.\s(\b\w*\b\s){1,2}\w*\" required />
                        <br />
                    </div>
                    <div class="field">
                        <label class="label">City </label><input id="CustomerCity" name="CustomerCity"  class="input" type="text" placeholder="City" required />
                        <br />
                    </div>
                    <div class="field">
                        <label class="label">State </label><input id="CustomerState" name="CustomerState"  class="input" type="text" placeholder="State" required />
                        <br />
                    </div>
                    <div class="field">    
                        <label class="label">Zip </label><input id="CustomerZip" name="CustomerZip"  class="input" type="text" placeholder="Zip" pattern="(\d{5}([\-]\d{4})?)" required />
                        <br />
                    </div>
                    <div class="field">
                         <center><asp:button ID="CreateAccountBtn" CssClass="button" runat="server" Text="Submit" OnClick="CreateAccountBtn_Click" /></center>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>