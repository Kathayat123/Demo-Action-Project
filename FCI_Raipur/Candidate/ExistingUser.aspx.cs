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

public partial class Candidate_ExistingUser : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImgBtnLogin_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = Mysql.GetDataSetWithQuery("exec gettbldata @Canid='"+TextBoxLoginID.Text.Trim()+ "', @Password='"+TextBoxPassword.Text.Trim()+"'");
        

        if(ds != null && ds.Tables[0].Rows.Count>0)
        {
            Session["canid"] = ds.Tables[0].Rows[0]["ApplNo"].ToString();
            Response.Redirect("../Candidate/Res_Details.aspx");
        }
        else
        {
            LabelErrorMessage.Text = "Invalid Credentials";
        }
        //ds = Mysql.GetDataSetWithQuery("exec SpGetDataForExistingUser @canid='" + TextBoxLoginID.Text + "', @Password='" + TextBoxPassword.Text+ "'");
        //if(ds.Tables[0].Rows.Count>0)
        //{
        //    string step1 = ds.Tables[0].Rows[0]["isstep1"].ToString();
        //    string step2 = ds.Tables[0].Rows[0]["isstep2"].ToString();
        //    string step3 = ds.Tables[0].Rows[0]["isstep3"].ToString();
        //    string step4 = ds.Tables[0].Rows[0]["isstep4"].ToString();
        //    string step5 = ds.Tables[0].Rows[0]["isstep5"].ToString();
        //    Session["canid"] = ds.Tables[0].Rows[0]["canid"].ToString();
        //    if (step1 == "1" && step2 == "")
        //    {
        //        Response.Redirect("../Candidate/Application.aspx");
        //    }
        //    if(step3=="")
        //    {
        //        Response.Redirect("../Candidate/Contact.aspx");
        //    }
        //    if (step4 == "")
        //    {
        //        Response.Redirect("../Candidate/EducationDetails.aspx");
        //    }
        //    if (step5 == "")
        //    {
        //        Response.Redirect("../Candidate/UploadDocuments.aspx");
        //    }
        //    if (step5 == "1")
        //    {
        //        Response.Redirect("../Candidate/Preview.aspx");
        //    }

        //}

    }
}