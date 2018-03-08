using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            priceLabel.Text = "0.00";
        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            double total = 0;
            bool vali = true;

            if (size10RadioButton.Checked)
                total = total + 10;
            else if (size13RadioButton.Checked)
                total = total + 13;
            else if (size16RadioButton.Checked)
                total = total + 16;
            else
            {
                vali = false;
            }

            if (vali == true && deepDishRadioButton.Checked)
                total = total + 2;
            else if (!thinCrustRadioButton.Checked)
                vali = false;

            if (pepperoniCheckBox.Checked)
                total = total + 1.5;
            if (onionsCheckBox.Checked)
                total = total + 0.75;
            if (greenPeppersCheckBox.Checked)
                total = total + 0.5;
            if (redPeppersCheckBox.Checked)
                total = total + 0.75;
            if (anchoviesCheckBox.Checked)
                total = total + 2;

            if (pepperoniCheckBox.Checked
                && ((greenPeppersCheckBox.Checked && anchoviesCheckBox.Checked)
                || (redPeppersCheckBox.Checked && onionsCheckBox.Checked)))
                total = total - 2;

            if (vali == false)
                warningLabel.Text = "Please select a size and a type of crust";
            else
                priceLabel.Text = String.Format("{0:0.00}", total).ToString();



        }
    }
}