using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Resources;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using System.Data.SqlClient;
using System.Net;
using System.Threading;

public partial class Admin_Home : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] == null)
        {
            Response.Redirect("Signout.aspx");
        }
        else
        {
            DataSet Ds = new DataSet();
            Ds = MySql.GetDataSetWithQuery("Exec Sp_FinalDashBordSummary ");
            if (Ds.Tables[0].Rows.Count > 0)
            {
                lblTotal.Text = Ds.Tables[0].Rows[0]["Total"].ToString();
            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

    }
}