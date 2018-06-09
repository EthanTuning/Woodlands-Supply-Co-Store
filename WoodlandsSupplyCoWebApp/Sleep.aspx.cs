using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Sleep : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "Big Agnes Newcomb SL 0 Sleeping Bag") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5235, "Big Agnes Newcomb SL 0 Sleeping Bag", 165, 72, quantity));
            }

            if (Request["ProductName"].ToString() == "TMarmot Trestles 0 Sleepinng Bag") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5236, "TMarmot Trestles 0 Sleepinng Bag", 120, 79, quantity));
            }

            if (Request["ProductName"].ToString() == "NEMO Canon -40 Sleeping Bag") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5237, "NEMO Canon -40 Sleeping Bag", 790, 77, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Igneo 25 Sleeping Bag") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5238, "REI Co-op Igneo 25 Sleeping Bag", 195, 28, quantity));
            }

            if (Request["ProductName"].ToString() == "Seat to Summit Traveller Tr I Sleeping Bag") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5239, "Seat to Summit Traveller Tr I Sleeping Bag", 230, 16.8, quantity));
            }

            Session["Products"] = products;

        }
    }
}