using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {

            List<Product> temp = (List<Product>)Session["Products"];

            if (temp == null) {

                List<Product> products = new List<Product>();
                Session["Products"] = products;
            }
        }
    }
}