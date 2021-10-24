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

public partial class Candidate_Contact : ClsErrorLog
{
    CommonPerception Mysql = new CommonPerception();
    string CID = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Modify"] = "Yes";
        //Session["canid"] = "300037";
        RegistrationClosed();
        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("../Home/ListofExam.aspx");
        }
        CID = Convert.ToString(Session["Canid"]);
        //CID = "300007";
        if (!IsPostBack)
        {
            Fill_Data();
            Fill_CState();
            Fill_PState();

            if (Convert.ToString(Session["Modify"]) == "Yes")
            {
                DataSet ds = new DataSet();
                ds = Mysql.GetDataSetWithQuery("exec GetStepOnedata @canid='" + CID + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtCaddress.Text = ds.Tables[0].Rows[0]["Address1"].ToString();
                    drpCState.SelectedValue = ds.Tables[0].Rows[0]["state"].ToString();
                    drpCState_SelectedIndexChanged(sender, e);
                    drpCdistrict.SelectedValue = ds.Tables[0].Rows[0]["District"].ToString();
                    drpCdistrict_SelectedIndexChanged(sender, e);
                    txtcurOtherDistrict.Text = ds.Tables[0].Rows[0]["OtherDistrict"].ToString();
                    txtCCity.Text = ds.Tables[0].Rows[0]["city"].ToString();
                    txtCPincode.Text = ds.Tables[0].Rows[0]["Pincode"].ToString();

                    txtAddress1.Text = ds.Tables[0].Rows[0]["PerAddress1"].ToString();
                    ddlpreState.Text = ds.Tables[0].Rows[0]["Perstate"].ToString();
                    ddlpreState_SelectedIndexChanged(sender, e);
                    drpDistrict.Text = ds.Tables[0].Rows[0]["PerDistrict"].ToString();
                    drpDistrict_SelectedIndexChanged(sender, e);
                    txtPerOtherDIs.Text = ds.Tables[0].Rows[0]["PerOtherDistrict"].ToString();
                    txtCity.Text = ds.Tables[0].Rows[0]["PerCity"].ToString();
                    txtPincode.Text = ds.Tables[0].Rows[0]["PerPincode"].ToString();
                    ddlExamCity.SelectedValue = ds.Tables[0].Rows[0]["ExamCity"].ToString();
                    ddlExamCity_SelectedIndexChanged(sender, e);
                    ddlExamCity2.SelectedValue = ds.Tables[0].Rows[0]["ExamCity2"].ToString();
                    ddlExamCity2_SelectedIndexChanged(sender, e);
                    ddlExamCity3.SelectedValue = ds.Tables[0].Rows[0]["ExamCity3"].ToString();
                }
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (isvalidate())
        {
            Match myMatch = System.Text.RegularExpressions.Regex.Match(txtCPincode.Text, @"^\d{6,}$");
            if (!myMatch.Success)
            {
                //First Name was incorrect
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Pincode Number.');", true);
                txtCPincode.Focus();
                return;
            }
            Match myMatch1 = System.Text.RegularExpressions.Regex.Match(txtPincode.Text, @"^\d{6,}$");
            if (!myMatch1.Success)
            {
                //First Name was incorrect
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Pincode Number.');", true);
                txtPincode.Focus();
                return;
            }



            bool result = Mysql.ExecuteNonQuery("Exec Updatetbabmcandidateinfo_Contact @CanId='" + CID + "', @Address1='" + txtCaddress.Text.ToString() + "' , @state='" + drpCState.SelectedValue + "', " +
                "@District='" + drpCdistrict.Text.ToString() + "', @OtherDistrict='" + txtcurOtherDistrict.Text.ToString() + "',  @city ='" + txtCCity.Text.ToString() + "', @Pincode='" + txtCPincode.Text.ToString() + "', " +
                "@PerAddress1='" + txtAddress1.Text.ToString() + "', @Perstate='" + ddlpreState.SelectedValue + "', @PerDistrict='"
                + drpDistrict.SelectedValue + "', @PerOtherDistrict='" + txtPerOtherDIs.Text.ToString() + "', @PerCity='" + txtCity.Text.ToString()
                + "', @PerPincode='" + txtPincode.Text.ToString() + "', @ExamCity = '" + ddlExamCity.SelectedValue + "', @ExamCity2 = '" + ddlExamCity2.SelectedValue + "', @ExamCity3 = '" + ddlExamCity3.SelectedValue + "'");
            if (result == true)
            {
                Response.Redirect("../Candidate/EducationDetails.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Try Again');", true);

                return;
            }
        }

    }

    protected void Fill_CState()
    {
        try
        {
            drpCState.Items.Clear();
            DataSet DsCState = new DataSet();
            DsCState = Mysql.GetDataSetWithQuery("exec spgetState");
            if (DsCState.Tables[0].Rows.Count > 0)
            {

                drpCState.DataSource = DsCState;
                drpCState.DataValueField = "StateNo";
                drpCState.DataTextField = "StateName";
                drpCState.DataBind();
                drpCState.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_PState()
    {
        try
        {
            ddlpreState.Items.Clear();
            DataSet DsPstate = new DataSet();
            DsPstate = Mysql.GetDataSetWithQuery("exec spgetState");
            if (DsPstate.Tables[0].Rows.Count > 0)
            {

                ddlpreState.DataSource = DsPstate;
                ddlpreState.DataValueField = "StateNo";
                ddlpreState.DataTextField = "StateName";
                ddlpreState.DataBind();
                ddlpreState.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    protected void ddlpreState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            drpDistrict.Items.Clear();
            DataSet ds = new DataSet();
            ds = Mysql.GetDataSetWithQuery("exec spGetDistrict @Stateid='" + ddlpreState.SelectedValue + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {

                drpDistrict.DataSource = ds;
                drpDistrict.DataValueField = "id";
                drpDistrict.DataTextField = "District";
                drpDistrict.DataBind();
                drpDistrict.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    protected void drpCState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            drpCdistrict.Items.Clear();
            DataSet ds = new DataSet();
            ds = Mysql.GetDataSetWithQuery("exec spGetDistrict @Stateid='" + drpCState.SelectedValue + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {

                drpCdistrict.DataSource = ds;
                drpCdistrict.DataValueField = "id";
                drpCdistrict.DataTextField = "District";
                drpCdistrict.DataBind();
                drpCdistrict.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    protected void drpCdistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpCdistrict.SelectedValue == "9999")
        {
            DivCurDis.Visible = true;
        }
        else
        {
            DivCurDis.Visible = false;
        }
    }
    protected void drpDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpDistrict.SelectedValue == "9999")
        {
            DivPerOtherDis.Visible = true;
        }
        else
        {
            DivPerOtherDis.Visible = false;
        }
    }

    bool isvalidate()
    {

        if (txtCaddress.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Current Your Address');", true);
            txtCaddress.Focus();
            return false;
        }

        if (drpCState.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Current State');", true);
            drpCState.Focus();
            return false;
        }
        if (drpCdistrict.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Current District');", true);
            drpCdistrict.Focus();
            return false;
        }
        if (drpCdistrict.SelectedValue == "9999" && txtcurOtherDistrict.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Current District Name');", true);
            txtcurOtherDistrict.Focus();
            return false;
        }
        if (txtCCity.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Current City Name');", true);
            txtCCity.Focus();
            return false;
        }
        if (txtCPincode.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Current Pin Number');", true);
            txtCPincode.Focus();
            return false;
        }

        if (txtAddress1.Text.Trim().ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Your Permanent Address');", true);
            txtAddress1.Focus();
            return false;
        }
        if (ddlpreState.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Permanent State');", true);
            ddlpreState.Focus();
            return false;
        }


        if (drpDistrict.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select District');", true);
            drpDistrict.Focus();
            return false;
        }
        if (drpDistrict.SelectedValue == "9999" && txtPerOtherDIs.Text.Trim().ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter District Name');", true);
            txtPerOtherDIs.Focus();
            return false;
        }


        if (txtCity.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Permanent City Name');", true);
            txtCity.Focus();
            return false;
        }

        if (txtPincode.Text.Trim().ToString() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Pincode Number');", true);
            txtPincode.Focus();
            return false;
        }

        if (ddlExamCity.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Exam City 1.');", true);
            ddlExamCity.Focus();
            return false;
        }

        if (ddlExamCity2.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Exam City 2.');", true);
            ddlExamCity2.Focus();
            return false;
        }

        if (ddlExamCity3.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Exam City 3.');", true);
            ddlExamCity3.Focus();
            return false;
        }

        return true;
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }
    protected void chksame_CheckedChanged(object sender, EventArgs e)
    {
        if (chksame.Checked == true)
        {
            txtAddress1.Text = txtCaddress.Text.ToString();
            ddlpreState.SelectedValue = drpCState.SelectedValue;
            ddlpreState_SelectedIndexChanged(sender, e);
            drpDistrict.SelectedValue = drpCdistrict.SelectedValue;

            if (drpCdistrict.SelectedValue == "9999")
            {
                DivPerOtherDis.Visible = true;
            }
            else
            {
                DivPerOtherDis.Visible = false;
            }
            txtPerOtherDIs.Text = txtcurOtherDistrict.Text;
            txtCity.Text = txtCCity.Text;
            txtPincode.Text = txtCPincode.Text;
        }
        else
        {
            txtAddress1.Text = "";
            ddlpreState.SelectedValue = "0";
            drpDistrict.SelectedValue = "0";
            txtPerOtherDIs.Text = "";
            txtCity.Text = "";
            txtPincode.Text = "";

        }

    }

    protected void ddlExamCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            ddlExamCity2.Items.Clear();
            ddlExamCity3.Items.Clear();
            string value = ddlExamCity.SelectedValue;
            DataSet ds = Mysql.GetDataSet("GetExamCityOthers '" + ddlExamCity.SelectedValue + "',''");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlExamCity2.DataSource = ds;
                ddlExamCity2.DataValueField = "ID";
                ddlExamCity2.DataTextField = "CityName";
                ddlExamCity2.DataBind();
                ddlExamCity2.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch { }
    }

    protected void ddlExamCity2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlExamCity3.Items.Clear();
        DataSet ds = Mysql.GetDataSet("GetExamCityOthers '" + ddlExamCity.SelectedValue + "','" + ddlExamCity2.SelectedValue + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlExamCity3.DataSource = ds;
            ddlExamCity3.DataValueField = "ID";
            ddlExamCity3.DataTextField = "CityName";
            ddlExamCity3.DataBind();
            ddlExamCity3.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }
    }

    protected void Fill_Data()
    {
        try
        {

            DataSet ds = new DataSet();
            ds = Mysql.GetDataSetWithQuery("exec spGetCandidateData @canid='" + CID + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                ddlExamCity.Items.Clear();
                ddlExamCity.DataSource = Mysql.GetDataSet("GetExamCity");
                ddlExamCity.DataTextField = "CityName";
                ddlExamCity.DataValueField = "Id";
                ddlExamCity.DataBind();
                ddlExamCity.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
}