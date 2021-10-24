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


public partial class Admin_CategorywiseCount : System.Web.UI.Page
{
    CommonPerception mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    
    {
        //if (Session["LoginId"] == "" || Session["LoginId"]==null)
        //{
        //    Response.Redirect("Login.aspx");
        //}
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = mysql.GetDataSetWithQuery("exec GetCategorywise");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
  
    }
}