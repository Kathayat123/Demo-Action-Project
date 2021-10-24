using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Net;
using Common.Class;


public partial class Candidate_EducationDetails : ClsErrorLog
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["CanId"] = "111843";
        //Session["Modify"] = "Yes";
        //  Session["canid"] = "300001";
        RegistrationClosed();
        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("../Home/ListofExam.aspx");
        }

        if (!IsPostBack)
        {
            SetBYear();
            FillGrade();
            Fill_TradePreference1();

            if (Convert.ToString(Session["Modify"]) == "Yes")
            {
                DataSet ds = new DataSet();
                ds = MySql.GetDataSetWithQuery("exec GetEducation @Canid='" + Convert.ToString(Session["canid"]) + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {

                    txtsub3.Text = ds.Tables[0].Rows[0]["ITISubject"].ToString();
                    txtmaxmarks3.Text = ds.Tables[0].Rows[0]["ITIMMarks"].ToString();
                    txtobtainedMarks3.Text = ds.Tables[0].Rows[0]["ITIOMarks"].ToString();
                    txtpercentage3.Text = ds.Tables[0].Rows[0]["ITIPerc"].ToString();
                    ddlGrade3.SelectedValue = ds.Tables[0].Rows[0]["ITIGrade"].ToString();
                    txtboard3.Text = ds.Tables[0].Rows[0]["ITIBoard"].ToString();
                    ddlpassingyear3.SelectedValue = ds.Tables[0].Rows[0]["ITIPassingYear"].ToString();
                    ddlpassingyear1_SelectedIndexChanged(sender, e);
                    txtrollno3.Text = ds.Tables[0].Rows[0]["ITIRollNo"].ToString();
                    txtGrade3.Text = ds.Tables[0].Rows[0]["ITIGrading"].ToString();

                    txtsub1.Text = ds.Tables[0].Rows[0]["HSubject"].ToString();
                    txtmaxmarks1.Text = ds.Tables[0].Rows[0]["HMMarks"].ToString();
                    txtobtainedMarks1.Text = ds.Tables[0].Rows[0]["HOMarks"].ToString();
                    txtpercentage1.Text = ds.Tables[0].Rows[0]["HPerc"].ToString();
                    ddlGrade1.SelectedValue = ds.Tables[0].Rows[0]["HGrade"].ToString();
                    txtboard1.Text = ds.Tables[0].Rows[0]["HBoard"].ToString();
                    ddlpassingyear1.Text = ds.Tables[0].Rows[0]["HPassingYear"].ToString();
                    txtrollno1.Text = ds.Tables[0].Rows[0]["HRollNo"].ToString();
                    txtGrade1.Text = ds.Tables[0].Rows[0]["HGrading"].ToString();

                    txtsub2.Text = ds.Tables[0].Rows[0]["ISubject"].ToString();
                    txtmaxmarks2.Text = ds.Tables[0].Rows[0]["IMMarks"].ToString();
                    txtobtainedMarks2.Text = ds.Tables[0].Rows[0]["IOMarks"].ToString();
                    txtpercentage2.Text = ds.Tables[0].Rows[0]["IPerc"].ToString();
                    ddlGrade2.SelectedValue = ds.Tables[0].Rows[0]["IGrade"].ToString();
                    txtboard2.Text = ds.Tables[0].Rows[0]["IBoard"].ToString();
                    ddlpassingyear2.SelectedValue = ds.Tables[0].Rows[0]["IPassingYear"].ToString();
                    txtrollno2.Text = ds.Tables[0].Rows[0]["IRollNo"].ToString();
                    txtGrade2.Text = ds.Tables[0].Rows[0]["IGrading"].ToString();

                    txtsub4.Text = ds.Tables[0].Rows[0]["GSubject"].ToString();
                    txtmaxmarks4.Text = ds.Tables[0].Rows[0]["GMMarks"].ToString();
                    txtobtainedMarks4.Text = ds.Tables[0].Rows[0]["GOMarks"].ToString();
                    txtpercentage4.Text = ds.Tables[0].Rows[0]["GPerc"].ToString();
                    ddlGrade4.SelectedValue = ds.Tables[0].Rows[0]["GGrade"].ToString();
                    txtboard4.Text = ds.Tables[0].Rows[0]["GBoard"].ToString();
                    ddlpassingyear4.SelectedValue = ds.Tables[0].Rows[0]["GPassingYear"].ToString();
                    txtrollno4.Text = ds.Tables[0].Rows[0]["GRollNo"].ToString();
                    txtGrade4.Text = ds.Tables[0].Rows[0]["GGrading"].ToString();
                }

            }

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (isvalidate())
            {
                string HMMarks = txtmaxmarks1.Text.Trim().Replace("'", "").ToUpper();
                string HOMarks = txtobtainedMarks1.Text.Trim().Replace("'", "").ToUpper();
                string HPerc = txtpercentage1.Text.Trim().Replace("'", "").ToUpper();
                string HYears = ddlpassingyear1.SelectedValue.Trim().Replace("'", "").ToUpper() == "YEAR" ? "0" : ddlpassingyear1.SelectedValue.Trim().Replace("'", "").ToUpper();

                string IMMarks = txtmaxmarks2.Text.Trim().Replace("'", "").ToUpper();
                string IOMarks = txtobtainedMarks2.Text.Trim().Replace("'", "").ToUpper();
                string IPerc = txtpercentage2.Text.Trim().Replace("'", "").ToUpper();
                string IYears = ddlpassingyear2.SelectedValue.Trim().Replace("'", "").ToUpper() == "YEAR" ? "0" : ddlpassingyear2.SelectedValue.Trim().Replace("'", "").ToUpper();

                string ITIMMarks = txtmaxmarks3.Text.Trim().Replace("'", "").ToUpper();
                string ITIOMarks = txtobtainedMarks3.Text.Trim().Replace("'", "").ToUpper();
                string ITIPerc = txtpercentage3.Text.Trim().Replace("'", "").ToUpper();
                string ITIYears = ddlpassingyear3.SelectedValue.Trim().Replace("'", "").ToUpper() == "YEAR" ? "0" : ddlpassingyear3.SelectedValue.Trim().Replace("'", "").ToUpper();

                string GMMarks = txtmaxmarks4.Text.Trim().Replace("'", "").ToUpper();
                string GOMarks = txtobtainedMarks4.Text.Trim().Replace("'", "").ToUpper();
                string GPerc = txtpercentage4.Text.Trim().Replace("'", "").ToUpper();
                string GYears = ddlpassingyear4.SelectedValue.Trim().Replace("'", "").ToUpper() == "YEAR" ? "0" : ddlpassingyear4.SelectedValue.Trim().Replace("'", "").ToUpper();


                if (Convert.ToString(Session["Modify"]) == "Yes")
                {
                    string str = "exec SP_Update_tbabmCandidateeduNEW @CanId='" + Convert.ToString(Session["CanId"]) + "', " +
                    " @HSubject='" + Convert.ToString(txtsub1.Text) + "', @HMMarks='" + HMMarks + "', @HOMarks='" + HOMarks + "', @HPerc='" + HPerc + "', @HGrade='" + ddlGrade1.SelectedValue + "', @HBoard='" + Convert.ToString(txtboard1.Text) + "', @HPassingYear='" + HYears + "', @HRollNo='" + Convert.ToString(txtrollno1.Text) + "', " +
                    " @ISubject='" + Convert.ToString(txtsub2.Text) + "', @IMMarks='" + IMMarks + "', @IOMarks='" + IOMarks + "', @IPerc='" + IPerc + "', @IGrade='" + ddlGrade2.SelectedValue + "', @IBoard='" + Convert.ToString(txtboard2.Text) + "', @IPassingYear='" + IYears + "', @IRollNo='" + Convert.ToString(txtrollno2.Text) + "', " +
                    " @ITISubject='" + Convert.ToString(txtsub3.Text) + "', @ITIMMarks='" + ITIMMarks + "', @ITIOMarks='" + ITIOMarks + "', @ITIPerc='" + ITIPerc + "', @ITIGrade='" + ddlGrade3.SelectedValue + "', @ITIBoard='" + Convert.ToString(txtboard3.Text) + "', @ITIPassingYear='" + ITIYears + "', @ITIRollNo='" + Convert.ToString(txtrollno3.Text) + "', " +
                    " @GSubject='" + Convert.ToString(txtsub4.Text) + "', @GMMarks='" + GMMarks + "', @GOMarks='" + GOMarks + "', @GPerc='" + GPerc + "', @GGrade='" + ddlGrade4.SelectedValue + "', @GBoard='" + Convert.ToString(txtboard4.Text) + "', @GPassingYear='" + GYears + "', @GRollNo='" 
                    + Convert.ToString(txtrollno4.Text) + "', @HGrading='" + Convert.ToString(txtGrade1.Text) + "', @IGrading='" + Convert.ToString(txtGrade2.Text) + "', @ITIGrading='" + Convert.ToString(txtGrade3.Text) + "', @GGrading='" + Convert.ToString(txtGrade4.Text) + "'";


                    Boolean result = MySql.ExecuteNonQuery(str);
                    if (result == true)
                    {
                        Response.Redirect("../Candidate/UploadDocuments.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Your Education Details Not Updated!!');", true);
                        txtsub1.Focus();
                        return;
                    }
                }
                else
                {
                    string strSQL = "exec SP_Insert_tbabmCandidateeduNEW  @CanId='" + Convert.ToString(Session["CanId"]) + "', " +
                   " @HSubject='" + Convert.ToString(txtsub1.Text) + "', @HMMarks='" + HMMarks + "', @HOMarks='" + HOMarks + "', @HPerc='" + HPerc + "', @HGrade='" + ddlGrade1.SelectedValue + "', @HBoard='" + Convert.ToString(txtboard1.Text) + "', @HPassingYear='" + HYears + "', @HRollNo='" + Convert.ToString(txtrollno1.Text) + "', " +
                   " @ISubject='" + Convert.ToString(txtsub2.Text) + "', @IMMarks='" + IMMarks + "', @IOMarks='" + IOMarks + "', @IPerc='" + IPerc + "', @IGrade='" + ddlGrade2.SelectedValue + "', @IBoard='" + Convert.ToString(txtboard2.Text) + "', @IPassingYear='" + IYears + "', @IRollNo='" + Convert.ToString(txtrollno2.Text) + "', " +
                   " @ITISubject='" + Convert.ToString(txtsub3.Text) + "', @ITIMMarks='" + ITIMMarks + "', @ITIOMarks='" + ITIOMarks + "', @ITIPerc='" + ITIPerc + "', @ITIGrade='" + ddlGrade3.SelectedValue + "', @ITIBoard='" + Convert.ToString(txtboard3.Text) + "', @ITIPassingYear='" + ITIYears + "', @ITIRollNo='" + Convert.ToString(txtrollno3.Text) + "', " +
                   " @GSubject='" + Convert.ToString(txtsub4.Text) + "', @GMMarks='" + GMMarks + "', @GOMarks='" + GOMarks + "', @GPerc='" + GPerc + "', @GGrade='" + ddlGrade4.SelectedValue + "', @GBoard='" + Convert.ToString(txtboard4.Text) + "', @GPassingYear='" + GYears + "', @GRollNo='" + Convert.ToString(txtrollno4.Text) + "', " +
                   " @updateDT='" + DateTime.Now.ToString("yyyy-MM-dd") + "', @HGrading='" + Convert.ToString(txtGrade1.Text) + "', @IGrading='" + Convert.ToString(txtGrade2.Text) + "', @ITIGrading='" + Convert.ToString(txtGrade3.Text) + "', @GGrading='" + Convert.ToString(txtGrade4.Text) + "'";



                    Boolean result = MySql.ExecuteNonQuery(strSQL);
                    if (result == true)
                    {
                        Response.Redirect("../Candidate/UploadDocuments.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Your Education Details Not Updated!!');", true);
                        txtsub1.Focus();
                        return;
                    }
                }


            }
        }
        catch (Exception ex)
        {
            LogError(ex);
            return;
        }


    }
    public string getyear()
    {
        try
        {

            DataSet dsyear = new DataSet();
            dsyear = MySql.GetDataSetWithQuery("exec sp_getdobyear @canid='" + Convert.ToString(Session["CanId"]) + "'");
            if (dsyear.Tables[0].Rows.Count > 0)
            {
                return Convert.ToString(dsyear.Tables[0].Rows[0][0]);
            }
            else
            {
                return "2016";
            }
        }
        catch (Exception ex)
        {
            LogError(ex);
            return "2016";
        }
    }
    void SetBYear()
    {
        try
        {
            ddlpassingyear3.Items.Clear();
            ddlpassingyear3.Items.Add("YEAR");
            for (int y = Convert.ToInt32(getyear()); y <= 2016; y += 1)
            {
                ddlpassingyear3.Items.Add(y.ToString());
            }
            //ddlPGYear.Items.Add("YEAR");
            //for (int y = Convert.ToInt32(getyear()); y <= 2016; y += 1)
            //{
            //    ddlPGYear.Items.Add(y.ToString());
            //}
            //ddlpassingyear1.Items.Add("YEAR");
            //for (int y = Convert.ToInt32(getyear()); y <= 2016; y += 1)
            //{
            //    ddlpassingyear1.Items.Add(y.ToString());
            //}
        }
        catch (Exception ex)
        {
            LogError(ex);
            return;
        }
    }
    protected void ddlpassingyear1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlpassingyear3.SelectedValue != "YEAR")
            {
                if (Convert.ToInt32(ddlpassingyear3.SelectedValue) > 0)
                {
                    ddlpassingyear1.Items.Clear();
                    ddlpassingyear1.Items.Add("YEAR");
                    ddlpassingyear2.Items.Clear();
                    ddlpassingyear2.Items.Add("YEAR");
                    ddlpassingyear4.Items.Clear();
                    ddlpassingyear4.Items.Add("YEAR");
                    //drpdStartYear.Items.Clear();
                    //drpdStartYear.Items.Add("YEAR");
                    //drpdEndYear.Items.Clear();
                    //drpdEndYear.Items.Add("YEAR");
                    for (int y = Convert.ToInt32(ddlpassingyear3.SelectedValue) + 1; y <= 2016; y += 1)
                    {
                        ddlpassingyear1.Items.Add(y.ToString());
                        ddlpassingyear2.Items.Add(y.ToString());
                        ddlpassingyear4.Items.Add(y.ToString());
                        //drpdStartYear.Items.Add(y.ToString());
                        //drpdEndYear.Items.Add(y.ToString());
                    }
                }
            }
        }
        catch (Exception ex)
        {
            LogError(ex);
            return;
        }
    }
    bool isvalidate()
    {
        //ITI Validation
        #region 8th Std - Mandatory
        if (string.IsNullOrEmpty(txtsub3.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Subject Name. ');", true);
            txtsub3.Focus();
            return false;
        }
        //if (string.IsNullOrEmpty(txtmaxmarks3.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Maximum Marks. ');", true);
        //    txtmaxmarks3.Focus();
        //    return false;
        //}
        //if (string.IsNullOrEmpty(txtobtainedMarks3.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Marks Obtained. ');", true);
        //    txtobtainedMarks3.Focus();
        //    return false;
        //}

        if (!string.IsNullOrEmpty(txtmaxmarks3.Text) && !string.IsNullOrEmpty(txtobtainedMarks3.Text))
        {
            if (Convert.ToInt32(txtobtainedMarks3.Text) > Convert.ToInt32(txtmaxmarks3.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Obtained marks should not be greater than Maximum marks. ');", true);
                txtobtainedMarks3.Focus();
                return false;
            }
        }

        if (string.IsNullOrEmpty(txtpercentage3.Text) && string.IsNullOrEmpty(txtGrade3.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Percentage or Grades. ');", true);
            txtpercentage3.Focus();
            return false;
        }

        if (!string.IsNullOrEmpty(txtpercentage3.Text))
        {
            Match myMatch1 = System.Text.RegularExpressions.Regex.Match(txtpercentage3.Text, @"^\d+([,\.]\d{1,2})?$");
            if (!myMatch1.Success)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Percentage.');", true);
                txtpercentage3.Focus();
                return false;
            }
            if (Convert.ToDecimal(txtpercentage3.Text) > 100)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('8th Percentage should not be greater than 100. ');", true);
                txtpercentage3.Focus();
                return false;
            }
        }

        if (ddlGrade3.SelectedIndex == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 8th Grade. ');", true);
            ddlGrade3.Focus();
            return false;
        }
        if (string.IsNullOrEmpty(txtboard3.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Board. ');", true);
            txtboard3.Focus();
            return false;
        }
        if (ddlpassingyear3.SelectedIndex == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 8th Passing Year. ');", true);
            ddlpassingyear3.Focus();
            return false;
        }
        //if (string.IsNullOrEmpty(txtrollno3.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 8th Roll Number. ');", true);
        //    txtrollno3.Focus();
        //    return false;
        //}
        #endregion

        //10th Validation
        #region
        bool bTenthData = false;
        if (!string.IsNullOrEmpty(txtsub1.Text) || !string.IsNullOrEmpty(txtmaxmarks1.Text) || !string.IsNullOrEmpty(txtobtainedMarks1.Text) ||
            !string.IsNullOrEmpty(txtpercentage1.Text) || ddlGrade1.SelectedIndex > 0 || !string.IsNullOrEmpty(txtboard1.Text)
            || ddlpassingyear1.SelectedIndex > 0 || !string.IsNullOrEmpty(txtrollno1.Text))
        {
            bTenthData = true;
        }

        if (bTenthData)
        {
            if (string.IsNullOrEmpty(txtsub1.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Subject Name. ');", true);
                txtsub1.Focus();
                return false;
            }
            //if (string.IsNullOrEmpty(txtmaxmarks1.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Maximum Marks. ');", true);
            //    txtmaxmarks1.Focus();
            //    return false;
            //}
            //if (string.IsNullOrEmpty(txtobtainedMarks1.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Marks Obtained. ');", true);
            //    txtobtainedMarks1.Focus();
            //    return false;
            //}

            if (!string.IsNullOrEmpty(txtmaxmarks1.Text) && !string.IsNullOrEmpty(txtobtainedMarks1.Text))
            {
                if (Convert.ToInt32(txtobtainedMarks1.Text) > Convert.ToInt32(txtmaxmarks1.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Obtained marks should not be greater than Maximum Marks ');", true);
                    txtmaxmarks1.Focus();
                    return false;
                }
            }

            if (string.IsNullOrEmpty(txtpercentage1.Text) && string.IsNullOrEmpty(txtGrade1.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Percentage or Grades. ');", true);
                txtpercentage1.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtpercentage1.Text))
            {
                Match myMatch = System.Text.RegularExpressions.Regex.Match(txtpercentage1.Text, @"^\d+([,\.]\d{1,2})?$");
                if (!myMatch.Success)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Percentage.');", true);
                    txtpercentage1.Focus();
                    return false;
                }
                if (Convert.ToDecimal(txtpercentage1.Text) > 100)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('10th Percentage should not be greater than 100. ');", true);
                    txtpercentage1.Focus();
                    return false;
                }
            }
            if (ddlGrade1.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 10th Grade. ');", true);
                ddlGrade1.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(txtboard1.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Board. ');", true);
                txtboard1.Focus();
                return false;
            }
            if (ddlpassingyear1.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 10th Passing Year. ');", true);
                ddlpassingyear1.Focus();
                return false;
            }
            //if (string.IsNullOrEmpty(txtrollno1.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 10th Roll Number. ');", true);
            //    txtrollno1.Focus();
            //    return false;
            //}
        }


        #endregion

        //12th Validation
        #region
        bool bTwenthData = false;
        if (!string.IsNullOrEmpty(txtsub2.Text) || !string.IsNullOrEmpty(txtmaxmarks2.Text) || !string.IsNullOrEmpty(txtobtainedMarks2.Text) ||
            !string.IsNullOrEmpty(txtpercentage2.Text) || ddlGrade2.SelectedIndex > 0 || !string.IsNullOrEmpty(txtboard2.Text)
            || ddlpassingyear2.SelectedIndex > 0 || !string.IsNullOrEmpty(txtrollno2.Text))
        {
            bTwenthData = true;
        }

        if (bTwenthData)
        {
            if (Convert.ToString(txtsub2.Text) != "" || Convert.ToString(txtmaxmarks2.Text) != "" || Convert.ToString(txtobtainedMarks2.Text) != "" || Convert.ToString(txtpercentage2.Text) != "" || ddlGrade2.SelectedValue != "0" || Convert.ToString(txtboard2.Text) != "" || ddlpassingyear2.SelectedValue != "YEAR" || Convert.ToString(txtmaxmarks2.Text) != "")
            {

                if (string.IsNullOrEmpty(txtsub2.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Subject Name. ');", true);
                    txtsub2.Focus();
                    return false;
                }
                //if (string.IsNullOrEmpty(txtmaxmarks2.Text))
                //{
                //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Maximum Marks. ');", true);
                //    txtmaxmarks2.Focus();
                //    return false;
                //}
                //if (string.IsNullOrEmpty(txtobtainedMarks2.Text))
                //{
                //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Marks Obtained. ');", true);
                //    txtobtainedMarks2.Focus();
                //    return false;
                //}

                if (!string.IsNullOrEmpty(txtmaxmarks2.Text) && !string.IsNullOrEmpty(txtobtainedMarks2.Text))
                {
                    if (Convert.ToInt32(txtobtainedMarks2.Text) > Convert.ToInt32(txtmaxmarks2.Text))
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Obtained marks should not be greater than Maximum marks. ');", true);
                        txtobtainedMarks2.Focus();
                        return false;

                    }
                }

                if (string.IsNullOrEmpty(txtpercentage2.Text) && string.IsNullOrEmpty(txtGrade2.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Percentage or Grades. ');", true);
                    txtpercentage2.Focus();
                    return false;
                }

                if (!string.IsNullOrEmpty(txtpercentage2.Text))
                {
                    Match myMatch2 = System.Text.RegularExpressions.Regex.Match(txtpercentage2.Text, @"^\d+([,\.]\d{1,2})?$");
                    if (!myMatch2.Success)
                    {

                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Percentage.');", true);
                        txtpercentage2.Focus();
                        return false;
                    }
                    if (Convert.ToDecimal(txtpercentage2.Text) > 100)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('12th Percentage should not be greater than 100. ');", true);
                        txtpercentage2.Focus();
                        return false;
                    }
                }
                if (ddlGrade2.SelectedIndex == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 12th Grade. ');", true);
                    ddlGrade2.Focus();
                    return false;
                }
                if (string.IsNullOrEmpty(txtboard2.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Board. ');", true);
                    txtboard2.Focus();
                    return false;
                }
                if (ddlpassingyear2.SelectedIndex == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select 12th Passing Year. ');", true);
                    ddlpassingyear2.Focus();
                    return false;
                }
                //if (string.IsNullOrEmpty(txtrollno2.Text))
                //{
                //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 12th Roll Number. ');", true);
                //    txtrollno2.Focus();
                //    return false;
                //}

            }
        }

        #endregion

        //15th Validation
        #region
        bool bFifthData = false;
        if (!string.IsNullOrEmpty(txtsub4.Text) || !string.IsNullOrEmpty(txtmaxmarks4.Text) || !string.IsNullOrEmpty(txtobtainedMarks4.Text) ||
            !string.IsNullOrEmpty(txtpercentage4.Text) || ddlGrade4.SelectedIndex > 0 || !string.IsNullOrEmpty(txtboard4.Text)
            || ddlpassingyear4.SelectedIndex > 0 || !string.IsNullOrEmpty(txtrollno4.Text))
        {
            bFifthData = true;
        }

        if (bFifthData)
        {
            if (string.IsNullOrEmpty(txtsub4.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 15th Subject Name. ');", true);
                txtsub4.Focus();
                return false;
            }
            //if (string.IsNullOrEmpty(txtmaxmarks4.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 15th Maximum Marks. ');", true);
            //    txtmaxmarks4.Focus();
            //    return false;
            //}
            //if (string.IsNullOrEmpty(txtobtainedMarks4.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter 15th Marks Obtained. ');", true);
            //    txtobtainedMarks4.Focus();
            //    return false;
            //}

            if (!string.IsNullOrEmpty(txtmaxmarks4.Text) && !string.IsNullOrEmpty(txtobtainedMarks4.Text))
            {
                if (Convert.ToInt32(txtobtainedMarks4.Text) > Convert.ToInt32(txtmaxmarks4.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Obtained marks should not be greater than Maximum marks. ');", true);
                    txtobtainedMarks4.Focus();
                    return false;

                }
            }

            if (string.IsNullOrEmpty(txtpercentage4.Text) && string.IsNullOrEmpty(txtGrade4.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Graduation Percentage or Grades. ');", true);
                txtpercentage4.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtpercentage4.Text))
            {
                Match myMatch2 = System.Text.RegularExpressions.Regex.Match(txtpercentage4.Text, @"^\d+([,\.]\d{1,2})?$");
                if (!myMatch2.Success)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Enter Valid Percentage.');", true);
                    txtpercentage4.Focus();
                    return false;
                }
                if (Convert.ToDecimal(txtpercentage4.Text) > 100)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Graduation Percentage should not be greater than 100. ');", true);
                    txtpercentage4.Focus();
                    return false;
                }
            }

            if (ddlGrade4.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Graduation Grade. ');", true);
                ddlGrade4.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(txtboard4.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Graduation Board. ');", true);
                txtboard4.Focus();
                return false;
            }
            if (ddlpassingyear4.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Graduation Passing Year. ');", true);
                ddlpassingyear4.Focus();
                return false;
            }
            //if (string.IsNullOrEmpty(txtrollno4.Text))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Graduation Roll Number. ');", true);
            //    txtrollno4.Focus();
            //    return false;
            //}
        }

        #endregion


        #region Comment

        //if (string.IsNullOrEmpty(txtInstitute.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter name of institute. ');", true);
        //    txtInstitute.Focus();
        //    return false;
        //}
        //if (string.IsNullOrEmpty(txtCouncil.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter name of Council/University. ');", true);
        //    txtCouncil.Focus();
        //    return false;
        //}
        //if (string.IsNullOrEmpty(txtCourse.Text))
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter name of Trade/Course. ');", true);
        //    txtCourse.Focus();
        //    return false;
        //}
        //if (drpdStartDate.SelectedValue == "0" || drpdStartMonth.SelectedValue == "0" || drpdStartYear.SelectedValue == "YEAR")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Start Date of Course');", true);
        //    drpdStartDate.Focus();
        //    return false;
        //}
        //if (drpdEndDate.SelectedValue == "0" || drpdEndMonth.SelectedValue == "0" || drpdEndYear.SelectedValue == "YEAR")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter End Date of Course');", true);
        //    drpdEndDate.Focus();
        //    return false;
        //}




        //if (ddlTrade1.SelectedValue == "0")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Trade Preference 1. ');", true);
        //    ddlTrade1.Focus();
        //    return false;
        //}
        //if (ddltradepref2.SelectedValue == "0")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Trade Preference 2. ');", true);
        //    ddltradepref2.Focus();
        //    return false;
        //}
        //if (ddltradepref3.SelectedValue == "0")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please Select Trade Preference 3. ');", true);
        //    ddltradepref3.Focus();
        //    return false;
        //}
        #endregion

        return true;
    }
    protected void FillGrade()
    {
        try
        {
            ddlGrade1.Items.Clear();
            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec spGetGrade");
            if (ds.Tables[0].Rows.Count > 0)
            {

                ddlGrade1.DataSource = ds;
                ddlGrade1.DataTextField = "Grade";
                ddlGrade1.DataValueField = "Id";
                ddlGrade1.DataBind();
                ddlGrade1.Items.Insert(0, new ListItem("--SELECT--", "0"));

                ddlGrade2.DataSource = ds;
                ddlGrade2.DataTextField = "Grade";
                ddlGrade2.DataValueField = "Id";
                ddlGrade2.DataBind();
                ddlGrade2.Items.Insert(0, new ListItem("--SELECT--", "0"));

                ddlGrade3.DataSource = ds;
                ddlGrade3.DataTextField = "Grade";
                ddlGrade3.DataValueField = "Id";
                ddlGrade3.DataBind();
                ddlGrade3.Items.Insert(0, new ListItem("--SELECT--", "0"));

                ddlGrade4.DataSource = ds;
                ddlGrade4.DataTextField = "Grade";
                ddlGrade4.DataValueField = "Id";
                ddlGrade4.DataBind();
                ddlGrade4.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {
            LogError(ex);
            return;
        }
    }

    protected void Fill_TradePreference1()
    {
        try
        {
            //ddlTrade1.Items.Clear();
            DataSet DsTrade = new DataSet();
            DsTrade = MySql.GetDataSetWithQuery("exec spGetTrade1");
            if (DsTrade.Tables[0].Rows.Count > 0)
            {

                //ddlTrade1.DataSource = DsTrade;
                //ddlTrade1.DataTextField = "TradeName";
                //ddlTrade1.DataValueField = "ID";
                //ddlTrade1.DataBind();
                //ddlTrade1.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_TradePreference2(string trade1)
    {
        try
        {
            //ddltradepref2.Items.Clear();
            DataSet DsTrade = new DataSet();
            DsTrade = MySql.GetDataSetWithQuery("exec spGetTrade2 @Trade1='" + trade1 + "'");
            if (DsTrade.Tables[0].Rows.Count > 0)
            {

                //ddltradepref2.DataSource = DsTrade;
                //ddltradepref2.DataTextField = "TradeName";
                //ddltradepref2.DataValueField = "ID";
                //ddltradepref2.DataBind();
                //ddltradepref2.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void Fill_TradePreference3(string trade1, string trade2)
    {
        try
        {
            //ddltradepref3.Items.Clear();
            DataSet DsTrade = new DataSet();
            DsTrade = MySql.GetDataSetWithQuery("exec spGetTrade3 @Trade1='" + trade1 + "', @Trade2='" + trade2 + "'");
            if (DsTrade.Tables[0].Rows.Count > 0)
            {

                //ddltradepref3.DataSource = DsTrade;
                //ddltradepref3.DataTextField = "TradeName";
                //ddltradepref3.DataValueField = "ID";
                //ddltradepref3.DataBind();
                //ddltradepref3.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    //protected void ddlTrade1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Fill_TradePreference2(ddlTrade1.SelectedValue.ToString());
    //}
    //protected void ddltradepref2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Fill_TradePreference3(ddlTrade1.SelectedValue.ToString(), ddltradepref2.SelectedValue.ToString());
    //}
    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }

}