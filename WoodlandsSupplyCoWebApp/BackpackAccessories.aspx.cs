using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class BackpackAccessories : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "Aventure Medical Kits Mountain Series Hiker Med Kit") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1234, "Aventure Medical Kits Mountain Series Hiker Med Kit", 20, 7.2, quantity));
            }

            if (Request["ProductName"].ToString() == "Black Biamond Trail Ergo Cork Trekking Poles") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1235, "Black Biamond Trail Ergo Cork Trekking Poles", 80, 18, quantity));
            }

            if (Request["ProductName"].ToString() == "Petzl Tikkina Headlamp") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1236, "Petzl Tikkina Headlamp", 15, 3.03, quantity));
            }

            if (Request["ProductName"].ToString() == "Playtypus Big Zip LP Reservoir") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1237, "Playtypus Big Zip LP Reservoir", 25, 5.6, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Ditty Sack 3 Pack") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1238, "REI Co-op Bitty Sack 3 Pack", 30, 3, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Traverse 70 Hipbelt") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(1239, "REI Co-op Traverse 70 Hipbelt", 30, 10.2, quantity));
            }

            if (Request["ProductName"].ToString() == "Suunto MC-2G Navigator Compass") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2234, "Suunto MC-2G Navigator Compass", 55, 2.65, quantity));
            }

            Session["Products"] = products;
        }
    }
}