using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Text.RegularExpressions;
using System.Text;
using System.Web.Mail;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Net;

public partial class Candidate_Congratulations : ClsErrorLog
{
    CommonPerception Mysql = new CommonPerception();
    string canid = string.Empty;
    string password = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        RegistrationClosed();
        canid = Convert.ToString(Session["canid"]) ;
       password = Convert.ToString(Session["Password"]);

        if (!IsPostBack)
        {
            lblloginid.Text = canid;
            lblpassword.Text = password;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Application.aspx");
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }
}