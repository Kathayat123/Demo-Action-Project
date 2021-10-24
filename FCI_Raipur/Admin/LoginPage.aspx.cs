using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.SetFocus(txtUserId);
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUserId.Value != "" && txtPassword.Value != "")
        {
            if (txtUserId.Value == "Admin" && txtPassword.Value == "Admin")
            {
                Session["LoginId"] = txtUserId.Value.ToString();
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}