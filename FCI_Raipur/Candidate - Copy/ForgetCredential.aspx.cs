using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ForgetCredential : ClsErrorLog
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetDOBYear();
            Fill_Data();
        }
    }

    void SetDOBYear()
    {
        drpdyear.Items.Add("YEAR");
        for (int y = 1955; y <= 2005; y += 1)
        {
            drpdyear.Items.Add(y.ToString());
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (drpddate.SelectedValue != "0" && drpdmonth.SelectedValue != "0" && drpdyear.SelectedValue != "YEAR")
        {

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter valid Date of birth');", true);
            drpddate.SelectedIndex = -1;
            drpdmonth.SelectedIndex = -1;
            drpdyear.SelectedIndex = -1;
            drpddate.Focus();
            return;

        }

        if (txtemail.Text.ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter E-Mail id');", true);
            txtemail.Focus();
            return;
        }

        if (txtmbl.Text.ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter mobile number');", true);
            txtmbl.Focus();
            return;
        }

        string Mobile = txtmbl.Text.Trim();
        string Email = txtemail.Text.Trim();
        string DOB = drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue; ;

        DataSet ds = new DataSet();
        ds = Mysql.GetDataSetWithQuery("exec GetCanDetailsByAadharNo @Mobile='" + Mobile + "', @Email='" + Email + "', @DOB='" + DOB + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            string CName = Convert.ToString(ds.Tables[0].Rows[0]["CandidateName"]);
            string unique = Convert.ToString(ds.Tables[0].Rows[0]["Canid"]);
            string Password = Convert.ToString(ds.Tables[0].Rows[0]["Password"]);
            string MobileNo = Convert.ToString(ds.Tables[0].Rows[0]["Mobile"]);
            string Message = "Dear " + CName + ", Your Login Id: '" + unique + "' and Password : '" + Password + "'.";
        //    string gateway2use = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=romanf@aptech.ac.in:05Nov03&senderID=FCICIN&receipientno=" + MobileNo + "&msgtxt=" + Message + "&state=1";
            string gateway2use = "https://api.equence.in/pushsms?username=aptech_trans&password=-ZE56_nr&from=FCICIN&to=" + txtmbl.Text.ToString() + "&text=" + Message;
            System.Net.WebRequest request = System.Net.WebRequest.Create(gateway2use);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Thread.Sleep(100); response.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('SMS sent to your Registered Mobile No.');", true);
            return;
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('No record found.');", true);
            txtmbl.Focus();
            return;
        }
    }

    protected void Fill_Data()
    {
        //try
        //{
        //    ddlCandidateType.Items.Clear();
        //    DataSet Dstype = new DataSet();
        //    Dstype = Mysql.GetDataSetWithQuery("exec spGetCandidateType");
        //    if (Dstype.Tables[0].Rows.Count > 0)
        //    {

        //        ddlCandidateType.DataSource = Dstype;
        //        ddlCandidateType.DataTextField = "CandidateType";
        //        ddlCandidateType.DataValueField = "Id";
        //        ddlCandidateType.DataBind();
        //        ddlCandidateType.Items.Insert(0, new ListItem("--SELECT--", "0"));
        //    }
        //}
        //catch (Exception ex)
        //{

        //    LogError(ex);
        //}
    }
}