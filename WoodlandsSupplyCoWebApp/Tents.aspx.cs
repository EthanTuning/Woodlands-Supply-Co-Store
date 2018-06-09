using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Tents : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> tempProducts = (List<Product>)Session["Products"];

            if (tempProducts == null) {
                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e) {

            List<Product> products = (List<Product>)Session["Products"];

            if (Request["ProductName"].ToString() == "Big Agnes Fly Creek HV UL 1 mtnGLO Tent") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(6234, "Big Agnes Fly Creek HV UL 1 mtnGLO Tent", 240, 34, quantity));
            }
 
            if (Request["ProductName"].ToString() == "MSR FreeLite 3 Tent") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(6235, "MSR FreeLite 3 Tent", 300, 42, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Half Dome 2 Plus Tent") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(6236, "REI Co-op Half Dome 2 Plus Tent", 140, 87, quantity));
            }

            if (Request["ProductName"].ToString() == "REI Co-op Passage 2 Tent") {
                int quantity = Int32.Parse(Request["ProductQuantity"].ToString());
                products.Add(new Product(6237, "REI Co-op Passage 2 Tent", 100, 85, quantity));
            }

            Session["Products"] = products;

        }
    }
}