using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_LoginPage : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(Convert.ToString(Request.QueryString["Changepwd"])))
        {
            if (Convert.ToString(Request.QueryString["Changepwd"]).ToUpper() == "YES")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Password changed successfully.');", true);
                return;
            }
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = Mysql.GetDataSetWithQuery("exec SpGetDataForExistingUser @canid='" + TextBoxLoginID.Text + "', @Password='" + TextBoxPassword.Text + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            string step1 = ds.Tables[0].Rows[0]["isstep1"].ToString();
            string step2 = ds.Tables[0].Rows[0]["isstep2"].ToString();
            string step3 = ds.Tables[0].Rows[0]["isstep3"].ToString();
            string step4 = ds.Tables[0].Rows[0]["isstep4"].ToString();
            string step5 = ds.Tables[0].Rows[0]["isstep5"].ToString();
            string Lock = ds.Tables[0].Rows[0]["Lock"].ToString();

            Session["canid"] = ds.Tables[0].Rows[0]["canid"].ToString();
           

            Session["Modify"] = "";
           
            if (Lock.ToUpper() == "N")
            {
                Response.Redirect("../Candidate/WelcomePage.aspx");
            }


            if (step1 == "1" && step2 == "")
            {
                Response.Redirect("../Candidate/Application.aspx");
            }
            if (step3 == "")
            {
                Response.Redirect("../Candidate/Contact.aspx");
            }
            if (step4 == "")
            {
                Response.Redirect("../Candidate/EducationDetails.aspx");
            }
            if (step5 == "")
            {
                Response.Redirect("../Candidate/UploadDocuments.aspx");
            }
            if (step5 == "1")
            {
                Response.Redirect("../Candidate/Preview.aspx");
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Invalid Credentials.');", true);
            return;
        }
    }
}