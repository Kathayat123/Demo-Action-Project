using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PayCash_PaymentMode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        if (rdonline.Checked == false && rddd.Checked == false)
        {

            lblCMessage.Text = "Kindly select Payment Mode";
            return;
        }
        if (rdonline.Checked)
        {
            Session["CurrentPage"] = "PayOnline.aspx";
            Response.Redirect("PayOnline.aspx");
        }

        if (rddd.Checked)
        {
            Session["CurrentPage"] = "InsCashPayment.aspx";
            Response.Redirect("CashPayment.aspx");
        }
    }
}