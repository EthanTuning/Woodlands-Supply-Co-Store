using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Backpacks : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "Granite Gear Crown2 60 Pack") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2235, "Granite Gear Crown2 60 Pack", 200, 36.7, quantity));
            }

            if (Request["ProductName"].ToString() == "Kid Comfort 3 Child Carrier") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2236, "Kid Comfort 3 Child Carrier", 220, 123, quantity));
            }

            if (Request["ProductName"].ToString() == "Osprey Atmos 65 Pack") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2237, "Osprey Atmos 65 Pack", 200, 73, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Trail 25") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2238, "REI Co-op Trail 25", 50, 25, quantity));
            }

            Session["Products"] = products;

        }
    }
}