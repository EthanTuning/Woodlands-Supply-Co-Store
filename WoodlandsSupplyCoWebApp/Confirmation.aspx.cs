using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Confirmation : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> productsToBuy = (List<Product>)Session["Products"];
            double orderTotal = 0;
            double orderWeight = 0;
            double shippingCost = 0;

            if (productsToBuy != null) {
                foreach (Product product in productsToBuy) {

                    product.CalculateTotalPrice();
                    orderTotal += product.GetTotalPrice();
                    orderWeight += product.GetWeight();
                    invoiceTable.Rows.Add(product.MakeTableRow());

                }
            }

            shippingCost = orderWeight * .46;
            orderTotal = orderTotal + shippingCost;
            OrderTotal.Text = "$" + orderTotal.ToString();
            OrderWeight.Text = orderWeight.ToString() + " oz.";
        }

        protected void PlaceOrderBtn_Click(object sender, EventArgs e) {

            Customer tempCustomer = (Customer)Session["Customer"];

            var apiKey = System.Environment.GetEnvironmentVariable("SENDGRID_APIKEY");
            var client = new SendGridClient(apiKey);

            var msg = new SendGridMessage() {
                From = new EmailAddress("etuning5@hotmail.com", "Woodlands Supply Co."),
                Subject = "Hello World from the SendGrid CSharp SDK!",
                PlainTextContent = "Hello, Email!",
                HtmlContent = "<strong>Hello, Email!</strong>"
            };

            msg.AddTo(new EmailAddress(tempCustomer.GetEmail(), "Test User"));
            var response = client.SendEmailAsync(msg);

            List<Product> products = new List<Product>();
            Session["Products"] = products;
            
            Response.Redirect("Shop.aspx");

        }
    }
}