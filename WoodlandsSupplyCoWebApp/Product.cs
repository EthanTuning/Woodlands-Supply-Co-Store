using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace WoodlandsSupplyCoWebApp {
    public class Product {

        private string mName;
        private double mPrice;
        private int mSku;
        private int mQuantity;
        private double mTotalPrice;

        public Product(int sku, string name, double price, int quantity) {

            mName = name;
            mPrice = price;
            mSku = sku;
            mQuantity = quantity;
            mTotalPrice = 0;

        }

        public HtmlTableRow MakeTableRow() {

            HtmlTableRow row = new HtmlTableRow();
            HtmlTableCell cell1 = new HtmlTableCell();
            cell1.InnerText = mSku.ToString();
            HtmlTableCell cell2 = new HtmlTableCell();
            cell2.InnerText = mName.ToString();
            HtmlTableCell cell3 = new HtmlTableCell();
            cell3.InnerText = mPrice.ToString();
            HtmlTableCell cell4 = new HtmlTableCell();
            cell4.InnerText = mQuantity.ToString();
            HtmlTableCell cell5 = new HtmlTableCell();
            cell5.InnerText = mTotalPrice.ToString();
            
            row.Controls.Add(cell1);
            row.Controls.Add(cell2);
            row.Controls.Add(cell3);
            row.Controls.Add(cell4);
            row.Controls.Add(cell5);
            
            return row;
        }

        public void CalculateTotalPrice() {

            mTotalPrice = mPrice * mQuantity;

        }

        public double GetTotalPrice() {
            return mTotalPrice;
        }

        public override string ToString() {
            return mSku + "" + mName + "" + mPrice + "" + mQuantity;
        }
    }
}