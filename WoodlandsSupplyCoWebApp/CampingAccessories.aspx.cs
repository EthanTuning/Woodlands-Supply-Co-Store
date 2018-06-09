using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class CampingAccessories : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "ENO Double Deluxe Hammock") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(2239, "ENO Double Deluxe Hammock", 60, 28, quantity));
            }

            if (Request["ProductName"].ToString() == "ENO Sub7 Hammock") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3234, "ENO Sub7 Hammock", 35, 6.5, quantity));
            }

            if (Request["ProductName"].ToString() == "Helinox Table One") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3235, "Helinox Table One", 90, 24, quantity));
            }

            if (Request["ProductName"].ToString() == "Kelty Discovery Low-Level Seat") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3236, "Kelty Discovery Low-Level Seat", 100, 246, quantity));
            }

            if (Request["ProductName"].ToString() == "Mountain Summit Gear Roll Top Kitchen") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3237, "Mountain Summit Gear Roll Top Kitchen", 100, 163.2, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Camp Xtra Chair") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3238, "REI Co-op Camp Xtra Chair", 25, 160, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Trail Stool") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(3239, "REI Co-op Trail Stool", 15, 18, quantity));
            }

            Session["Products"] = products;

        }
    }
}