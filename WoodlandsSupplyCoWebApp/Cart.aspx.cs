﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Cart : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> productsToBuy = (List<Product>)Session["Products"];
            double cartTotal = 0;
            double cartWeight = 0;

            if (productsToBuy != null) {
                foreach (Product product in productsToBuy) {

                    product.CalculateTotalPrice();
                    cartTotal += product.GetTotalPrice();
                    cartWeight += product.GetWeight();
                    invoiceTable.Rows.Add(product.MakeTableRow());

                }
            }

            CartTotal.Text = "$" + cartTotal.ToString();
            CartWeight.Text = cartWeight.ToString() + " oz.";
        }

        protected void CheckOutBtn_Click(object sender, EventArgs e) {

            Customer tempCustomer = (Customer)Session["Customer"];

            if(tempCustomer == null) {
                
                Response.Redirect("Account.aspx");

            }

            if(tempCustomer != null) {
                
                Response.Redirect("Confirmation.aspx");

            }
        }
    }
}