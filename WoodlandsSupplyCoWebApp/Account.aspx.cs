using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WoodlandsSupplyCoWebApp {
    public partial class Account : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void CreateAccountBtn_Click(object sender, EventArgs e) {

            
            Customer customer = new Customer(Request["CustomerFirstName"].ToString(),
                                             Request["CustomerLastName"].ToString(),
                                             Request["CustomerEmail"].ToString(),
                                             Request["CustomerAddress"].ToString(),
                                             Request["CustomerCity"].ToString(),
                                             Request["CustomerState"].ToString(),
                                             Int32.Parse(Request["CustomerZip"].ToString()));


            Session["Customer"] = customer;

            Response.Redirect("Cart.aspx");
        }
    }
}