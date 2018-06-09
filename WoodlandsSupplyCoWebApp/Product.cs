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
        private double mWeight;
        private double mTotalPrice;

        public Product(int sku, string name, double price, double weight, int quantity) {

            mName = name;
            mPrice = price;
            mSku = sku;
            mQuantity = quantity;
            mWeight = weight;
            mTotalPrice = 0;

        }

        public double GetTotalPrice() {

            return mTotalPrice;

        }

        public double GetWeight() {

            return mWeight;

        }

        public HtmlTableRow MakeTableRow() {

            HtmlTableRow row = new HtmlTableRow();
            HtmlTableCell cell1 = new HtmlTableCell();
            cell1.InnerText = mSku.ToString();
            HtmlTableCell cell2 = new HtmlTableCell();
            cell2.InnerText = mName.ToString();
            HtmlTableCell cell3 = new HtmlTableCell();
            cell3.InnerText = "$" + mPrice.ToString();
            HtmlTableCell cell4 = new HtmlTableCell();
            cell4.InnerText = mQuantity.ToString();
            HtmlTableCell cell5 = new HtmlTableCell();
            cell5.InnerText = mWeight.ToString() + " oz.";
            HtmlTableCell cell6 = new HtmlTableCell();
            cell6.InnerText = "$" + mTotalPrice.ToString();

            HtmlTableCell removeBtnCell = new HtmlTableCell();
            removeBtnCell.InnerHtml = "<button class='button is-rounded icon ion-md-trash remove-btn'></button>";

            row.Controls.Add(cell1);
            row.Controls.Add(cell2);
            row.Controls.Add(cell3);
            row.Controls.Add(cell4);
            row.Controls.Add(cell5);
            row.Controls.Add(cell6);
            row.Controls.Add(removeBtnCell);

            return row;
        }

        public void CalculateTotalPrice() {

            mTotalPrice = mPrice * mQuantity;

        }

        public override string ToString() {

            return mSku + "" + mName + "" + mPrice + "" + mWeight + "" + mQuantity;

        }
    }
}