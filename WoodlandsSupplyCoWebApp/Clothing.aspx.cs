using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Clothing : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "Asolo Fulton Mid Hiking Boots") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4234, "Asolo Fulton Mid Hiking Boots", 140, quantity));
            }

            if (Request["ProductName"].ToString() == "Marmot PreCip Rain Jacket") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4235, "Marmot PreCip Rain Jacket", 70, quantity));
            }

            if (Request["ProductName"].ToString() == "Marmot PreCip Safari Hat") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4236, "Marmot PreCip Safari Hat", 45, quantity));
            }

            if (Request["ProductName"].ToString() == "Outdoor Research Plaza Down Vest") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4237, "Outdoor Research Plaza Down Vest", 175, quantity));
            }

            if (Request["ProductName"].ToString() == "Patagonia Down Sweater") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4238, "Patagonia Down Sweater", 145, quantity));
            }

            if (Request["ProductName"].ToString() == "Salomon Quest 4D GTX Hiking Boots") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(4239, "Salomon Quest 4D GTX Hiking Boots", 170, quantity));
            }

            if (Request["ProductName"].ToString() == "Teva Voya Infinity Sandals") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(5234, "Teva Voya Infinity Sandals", 40, quantity));
            }
            Session["Products"] = products;

        }
    }
}