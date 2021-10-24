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

public partial class Candidate_Application : ClsErrorLog
{
    //ResourceManager rm;
    //CultureInfo ci;
    string CID = string.Empty;
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Modify"] = "Yes";
        //Session["canid"] = "300041";
        RegistrationClosed();
        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("../Home/ListofExam.aspx");
        }
        else
        {

        }

        CID = Convert.ToString(Session["canid"]);
        if (!IsPostBack)
        {
            ddlCandidateType.Attributes.Add("readonly", "true");
            drpddate.Attributes.Add("readonly", "true");
            drpdmonth.Attributes.Add("readonly", "true");
            drpdyear.Attributes.Add("readonly", "true");
            SetDOBYear();
            Fill_Category();
            Fill_Gender();
            Fill_DisabilityType();
            Fill_Data();
            CanculateAge();

            if (Convert.ToString(Session["Modify"]) == "Yes")
            {
                DataSet ds = new DataSet();
                ds = Mysql.GetDataSetWithQuery("exec GetStepOnedata @canid='" + CID + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtFathersname.Text = ds.Tables[0].Rows[0]["FatherName"].ToString();
                    txtmothername.Text = ds.Tables[0].Rows[0]["MotherName"].ToString();
                    txtadharno.Text = ds.Tables[0].Rows[0]["AdharCardNo"].ToString();
                    ddlgender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                    ddlcategory.SelectedValue = ds.Tables[0].Rows[0]["Category"].ToString();
                    ddlexserviceman.SelectedValue = ds.Tables[0].Rows[0]["IsExserviceman"].ToString();
                    ddlisph.SelectedValue = ds.Tables[0].Rows[0]["IsPH"].ToString();
                    ddlisph_SelectedIndexChanged(sender, e);
                    ddltypeofDisability.SelectedValue = ds.Tables[0].Rows[0]["TypeofDisability"].ToString();
                    txtCertificateNo.Text = ds.Tables[0].Rows[0]["PHCertificateNo"].ToString();
                    ddlFCIEmp.SelectedValue = ds.Tables[0].Rows[0]["IsFCIEmployee"].ToString();
                    ddlDivorcee.SelectedValue = ds.Tables[0].Rows[0]["IsDivorcee"].ToString();
                    txtServiceYear.Text = ds.Tables[0].Rows[0]["FCIEmpServiceYear"].ToString();
                    //ddlServiceMonths.SelectedValue = ds.Tables[0].Rows[0]["FCIEmpServiceMonth"].ToString();
                    if (ddlServiceMonths.Items.FindByText(ds.Tables[0].Rows[0]["FCIEmpServiceMonth"].ToString()) != null)
                        ddlServiceMonths.Items.FindByText(ds.Tables[0].Rows[0]["FCIEmpServiceMonth"].ToString()).Selected = true;
                    ddlexserviceman_SelectedIndexChanged(sender, e);
                    ddlMinority.SelectedValue = ds.Tables[0].Rows[0]["Minority"].ToString();
                    txtNationality.Text = ds.Tables[0].Rows[0]["Nationality"].ToString();
                }

            }

        }

        txtcanname.Enabled = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (isvalidate())
            {

                if (txtadharno.Text != "")
                {
                    Match myMatch = System.Text.RegularExpressions.Regex.Match(txtadharno.Text, @"^\d{4}\d{4}\d{4}$");
                    if (!myMatch.Success)
                    {
                        //First Name was incorrect
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Adhar Card Number.');", true);
                        txtadharno.Focus();
                        return;
                    }
                }

                string strdob = drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue;

                string ServiceMonth = ddlServiceMonths.SelectedItem.Text.Trim().Replace("'", "").ToUpper() == "--SELECT MONTHS--" ? "" : ddlServiceMonths.SelectedItem.Text.Trim().Replace("'", "").ToUpper();

                bool result = Mysql.ExecuteNonQuery("Exec Updatetbabmcandidateinfo @CanId='" + CID + "', " +
                    "@FatherName='" + txtFathersname.Text.ToString() + "', @MotherName='" + txtmothername.Text.ToString() + "', " +
                    "@Gender='" + ddlgender.SelectedValue + "', @AdharCardNo='" + txtadharno.Text.ToString() + "', @Category='"
                    + ddlcategory.SelectedValue + "', @IsExserviceman='" + ddlexserviceman.SelectedValue + "', @IsPH='" + ddlisph.SelectedValue
                    + "', @TypeofDisability='" + ddltypeofDisability.SelectedValue + "', @Religion='" + txtreligion.Text + "',@IsFCIEmployee = '"
                    + ddlFCIEmp.SelectedValue + "',@IsDivorcee ='" + ddlDivorcee.SelectedValue + "',@FCIEmpServiceYear='" + txtServiceYear.Text
                    + "',@FCIEmpServiceMonth = '" + ServiceMonth + "', @PHCertificateNo='" + txtCertificateNo.Text + "', @Minority='"
                    + ddlMinority.SelectedValue + "', @Nationality = '" + txtNationality.Text + "'");

                if (result == true)
                {
                    Response.Redirect("../Candidate/Contact.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Try Again');", true);

                    return;
                }

            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }



    }
    protected void ddlhsc_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void drpdyear_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    void SetDOBYear()
    {
        drpdyear.Items.Add("YEAR");
        for (int y = 1955; y <= 2005; y += 1)
        {
            drpdyear.Items.Add(y.ToString());
        }



    }

    protected void Fill_Data()
    {
        try
        {

            DataSet ds = new DataSet();
            ds = Mysql.GetDataSetWithQuery("exec spGetCandidateType2 @canid='" + CID + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlCandidateType.DataSource = ds;
                ddlCandidateType.DataTextField = "CandidateType";
                ddlCandidateType.DataValueField = "Id";
                ddlCandidateType.DataBind();


                txtcanname.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
                drpddate.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["DDate"]);
                drpdmonth.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["month"]);
                drpdyear.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["Dyear"]);
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_Category()
    {
        try
        {
            ddlcategory.Items.Clear();
            DataSet Dscategory = new DataSet();
            Dscategory = Mysql.GetDataSetWithQuery("exec SpGetCategory");
            if (Dscategory.Tables[0].Rows.Count > 0)
            {

                ddlcategory.DataSource = Dscategory;
                ddlcategory.DataTextField = "catName";
                ddlcategory.DataValueField = "catId";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }


            ddlMinority.Items.Clear();
            DataSet DsMinority = new DataSet();
            Dscategory = Mysql.GetDataSetWithQuery("exec sp_GetMinority");
            if (Dscategory.Tables[0].Rows.Count > 0)
            {
                ddlMinority.DataSource = Dscategory;
                ddlMinority.DataTextField = "NationName";
                ddlMinority.DataValueField = "ID";
                ddlMinority.DataBind();
                ddlMinority.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_Gender()
    {
        try
        {
            ddlgender.Items.Clear();
            DataSet DsGender = new DataSet();
            DsGender = Mysql.GetDataSetWithQuery("exec SpGetGender");
            if (DsGender.Tables[0].Rows.Count > 0)
            {

                ddlgender.DataSource = DsGender;
                ddlgender.DataTextField = "Gender";
                ddlgender.DataValueField = "Id";
                ddlgender.DataBind();
                ddlgender.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_DisabilityType()
    {
        try
        {
            ddltypeofDisability.Items.Clear();
            DataSet DsDisabilityType = new DataSet();
            DsDisabilityType = Mysql.GetDataSetWithQuery("exec SpGetTypeofDisability");
            if (DsDisabilityType.Tables[0].Rows.Count > 0)
            {

                ddltypeofDisability.DataSource = DsDisabilityType;
                ddltypeofDisability.DataValueField = "Id";
                ddltypeofDisability.DataTextField = "DisabilityType";
                ddltypeofDisability.DataBind();
                ddltypeofDisability.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void ddlisph_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlisph.SelectedValue == "1")
        {
            DivTypeofDisability.Visible = true;
        }
        else
        {
            DivTypeofDisability.Visible = false;
            ddltypeofDisability.SelectedIndex = -1;
        }
    }

    bool isvalidate()
    {
        try
        {
            if (ddlCandidateType.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Candidate Type');", true);
                ddlCandidateType.Focus();
                return false;
            }
            if (txtcanname.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Candidate Name');", true);
                txtcanname.Focus();
                return false;
            }

            if (drpddate.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Date of Birth');", true);
                txtcanname.Focus();
                return false;
            }
            if (drpdmonth.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Date of Birth');", true);
                drpdmonth.Focus();
                return false;
            }
            if (drpdyear.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Date of Birth');", true);
                drpdyear.Focus();
                return false;
            }

            if (txtFathersname.Text.Trim().ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Father's Name');", true);
                txtFathersname.Focus();
                return false;
            }
            if (txtmothername.Text.Trim().ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Mother's Name');", true);
                txtmothername.Focus();
                return false;
            }


            if (ddlgender.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Gender');", true);
                ddlgender.Focus();
                return false;
            }

            if (ddlgender.SelectedValue == "2" && ddlDivorcee.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Whether candidate Separated/Widow/Divorcee');", true);
                ddlDivorcee.Focus();
                return false;
            }

            if (txtNationality.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Nationality');", true);
                txtNationality.Focus();
                return false;
            }

            if (ddlMinority.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Minority');", true);
                txtNationality.Focus();
                return false;
            }

            //if (txtadharno.Text.Trim().ToString() == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Adhar Card Number');", true);
            //    txtadharno.Focus();
            //    return false;
            //}

            if (ddlFCIEmp.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Whether candidate employed in Food Corporation of India');", true);
                ddlcategory.Focus();
                return false;
            }

            if (ddlcategory.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Category');", true);
                ddlcategory.Focus();
                return false;
            }



            if (ddlexserviceman.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select If Ex-Serviceman or not');", true);
                ddlexserviceman.Focus();
                return false;
            }

            if (ddlexserviceman.SelectedValue == "1" && txtServiceYear.Text.Trim().ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Ex-Serviceman service Year');", true);
                txtmothername.Focus();
                return false;
            }

            if (ddlexserviceman.SelectedValue == "1" && ddlServiceMonths.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Ex-Serviceman service Months');", true);
                ddlexserviceman.Focus();
                return false;
            }

            if (ddlisph.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select If Physical Disability or not');", true);
                ddlisph.Focus();
                return false;
            }
            if (ddlisph.SelectedValue == "1" && ddltypeofDisability.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Type of Disability');", true);
                ddltypeofDisability.Focus();
                return false;
            }

            if (ddlisph.SelectedValue == "1" && txtCertificateNo.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Disability Certificate No');", true);
                ddltypeofDisability.Focus();
                return false;
            }

            string dateString = drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue;

            if (!CalculateRelaxtionAge())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('You are not eligible to apply as per Age criteria.');", true);
                return false;
            }

            if (CHKAGR.Checked == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select  I Agree');", true);
                CHKAGR.Focus();
                return false;
            }
            return true;



        }

        catch (Exception ex)
        {

            LogError(ex);
            return false;
        }

    }

    protected void CanculateAge()
    {
        try
        {
            if (drpddate.SelectedValue != "0" && drpdmonth.SelectedValue != "0" && drpdyear.SelectedValue != "YEAR")
            {
                string dateString = drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue;
                string format = "yyyy-MM-dd";

                DateTime dateTime;
                if (DateTime.TryParseExact(dateString, format, CultureInfo.InvariantCulture,
                    DateTimeStyles.None, out dateTime))
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

                //DateTime dob = Convert.ToDateTime(drpddate.SelectedValue + "/" + drpdmonth.SelectedValue + "/" + drpdyear.SelectedValue);
                DateTime dob = Convert.ToDateTime(drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue);
                DateTime Today = Convert.ToDateTime("2017-07-31");//mm/dd/yyyy
                TimeSpan ts = Today - dob;
                DateTime Age = DateTime.MinValue + ts;

                //Age = Convert.ToDateTime(ts);
                int Years = 0;
                int Months = 0;
                int Days = 0;

                if (Convert.ToInt32(drpdyear.SelectedValue) % 4 >= 2 && Convert.ToInt32(drpddate.SelectedValue) == 1)
                {
                    Years = Age.Year - 1;
                    Months = Age.Month - 1;
                    Days = Age.Day - 2;
                }
                else
                {
                    Years = Age.Year - 1;
                    Months = Age.Month - 1;
                    Days = Age.Day - 1;
                }

                Days = Days == -1 ? 0 : Days;
                lblYears.Text = Years.ToString();
                lblMonths.Text = Months.ToString();
                lblDays.Text = Days.ToString();


            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void ddlexserviceman_SelectedIndexChanged(object sender, EventArgs e)
    {
        divServiceMan.Visible = false;
        if (ddlexserviceman.SelectedValue == "1")
        {
            divServiceMan.Visible = true;
        }

    }

    private bool CalculateRelaxtionAge()
    {
        int Category = Convert.ToInt32(ddlcategory.SelectedValue);
        string CanId = Convert.ToString(Session["CanId"]);

        int CandAge = Convert.ToInt32(lblYears.Text);
        int CandMonth = Convert.ToInt32(lblMonths.Text);
        int CandDays = Convert.ToInt32(lblDays.Text);
        int TotalServiceExperience = 0;

        if (CandMonth >= 1 || CandDays >= 1)
        {
            CandAge = CandAge + 1;
        }

        int MiniAge = 0;
        int MaxAge = 0;
        int AgeReal = 0;

        MiniAge = 18;
        MaxAge = 25;

        if (ddlFCIEmp.SelectedValue == "1")
        {
            return true;
        }

        if (ddlexserviceman.SelectedValue == "1")
        {
            TotalServiceExperience = Convert.ToInt32(txtServiceYear.Text);// * 12;
            //TotalServiceExperience = TotalServiceExperience + Convert.ToInt32(ddlServiceMonths.SelectedItem.Text);
        }

        //1	UNRESERVED
        if (Category == 1)
        {

        }
        //Add Age realisation 
        if (Category == 3 || Category == 4) //3 SCHEDULED CASTE || 4 SCHEDULED TRIBE
        {
            AgeReal = 5;
        }

        if (Category == 2)//2 OTHER BACKWARD CLASS
        {
            AgeReal = 3;
        }

        if (ddlexserviceman.SelectedValue == "1")
        {
            CandAge = CandAge - TotalServiceExperience;

            if (Category == 1)
            {
                CandAge = CandAge - 3;
            }
            if (Category == 2)//2 OTHER BACKWARD CLASS
            {
                CandAge = CandAge - 6;
            }
            //Add Age realisation 
            if (Category == 3 || Category == 4) //3 SCHEDULED CASTE || 4 SCHEDULED TRIBE
            {
                CandAge = CandAge - 8;
            }
        }

        if (ddlisph.SelectedValue == "1")// Physical Hand
        {
            AgeReal = 10;
        }

        if (ddlisph.SelectedValue == "1" && Category == 2)// Physical Hand +  2 OTHER BACKWARD CLASS
        {
            AgeReal = 13;
        }

        if (ddlisph.SelectedValue == "1" && (Category == 3 || Category == 4))// Physical Hand +  3 SCHEDULED CASTE || 4 SCHEDULED TRIBE
        {
            AgeReal = 15;
        }
        MaxAge = MaxAge + AgeReal;

        if (ddlDivorcee.SelectedValue == "1")
        {
            //1	UNRESERVED
            if (Category == 1)
            {
                if (MaxAge < 35)
                {
                    MaxAge = 35;
                }
            }
            if (Category == 2)//2 OTHER BACKWARD CLASS
            {
                if (MaxAge < 38)
                {
                    MaxAge = 38;
                }
            }
            //Add Age realisation 
            if (Category == 3 || Category == 4) //3 SCHEDULED CASTE || 4 SCHEDULED TRIBE
            {
                if (MaxAge < 40)
                {
                    MaxAge = 40;
                }
            }
        }

        if (CandAge >= MiniAge && MaxAge < CandAge)
        {
            return false;
        }

        return true;
    }

    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }

    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddlgender_SelectedIndexChanged(object sender, EventArgs e)
    {
        divDivorcee.Visible = false;
        ddlDivorcee.SelectedIndex = 0;
        if (ddlgender.SelectedValue == "2")
        {
            divDivorcee.Visible = true;
        }
    }
}