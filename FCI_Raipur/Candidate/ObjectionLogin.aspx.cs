using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ObjectionLogin : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("../Home/ListofExam.aspx");
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
            string RollNumber = ds.Tables[0].Rows[0]["RollNumber"].ToString();
            Session["canid"] = ds.Tables[0].Rows[0]["canid"].ToString();
            Session["Modify"] = "";

            if (String.IsNullOrEmpty(RollNumber))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Invalid Credentials.');", true);
                return;
            }

            Response.Redirect("../Candidate/ObjectionWelcomePage.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Invalid Credentials.');", true);
            return;
        }
    }
}