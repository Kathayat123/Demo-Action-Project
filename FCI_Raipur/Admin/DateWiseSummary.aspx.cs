using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DateWiseSummary : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginId"] == null)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                FillGridView();
            }
        }
    }

    private void FillGridView()
    {
        DataSet ds = Mysql.GetDataSet("sp_GetDateWiseSummary");
        gvSummary.DataSource = ds;
        gvSummary.DataBind();
    }
}