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

public partial class Candidate_EntryForm : ClsErrorLog
{
    CommonPerception Mysql = new CommonPerception();
    string CanId = string.Empty;
    string unique = "", username = "", Password = "";
    bool blins = false;
    string ins = "";
    string dateString = "";
    int year = 0;
    int day = 0;
    int month = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            RegistrationClosed();
            CalculateAge();
            if (!IsPostBack)
            {
                SetDOBYear();
                Fill_CandidateType();
            }
        }

        catch (Exception ex)
        {
            LogError(ex);
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (isvalidate())
            {
                unique = Mysql.SingleCellResultInString("exec sp_GetUniquenum1");
                username = CreateRandomUsername();
                //string Password1 = CreateRandomPassword();
                //string Password2 = MySql.SingleCellResultInString("exec Sp_GetUnique_Reg_Id 'tbabmCandidateInfo','CanId'");
                //Password = "01012017";
                string dateString = drpdyear.SelectedValue + "-" + drpdmonth.SelectedValue + "-" + drpddate.SelectedValue;
                Password = Convert.ToDateTime(dateString).ToString("ddMMyyyy");
                ins = "exec SP_Insert_tbabmCandidateInfo  @canid='" + unique + "', @Username='" + username + "', @Password='" + Password + "', " +
                  "@CandidateName='" + txtcanname.Text.ToUpper().Trim() + " ', @Mobile='" + txtmbl.Text.ToString() + "', @Email='" + txtemail.Text.ToString() + "', @CanType='" + ddlCandidateType.SelectedValue + "', @dob='" + dateString + "'";
                blins = Mysql.ExecuteNonQuery(ins);
                if (blins)
                {
                    try
                    {
                        Session["canid"] = unique;
                        Session["username"] = username;
                        Session["Password"] = Password;

                        //Sending SMS
                        /* Sending SMS */
                        string CName = txtcanname.Text.ToUpper().Trim();
                        string Message = "Dear " + CName + ", Your 1st step of Online Registration for FCI has been Successful.Your Login Id: '" + unique + "' and Password : '" + Password + "'.Proceed to complete your form at earliest.";
                        string gateway2use = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=romanf@aptech.ac.in:05Nov03&senderID=FCICIN&receipientno=" + txtmbl.Text.ToString() + "&msgtxt=" + Message + "&state=1";
                        System.Net.WebRequest request = System.Net.WebRequest.Create(gateway2use);
                        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                        Thread.Sleep(100); response.Close();

                        //Sending Email

                        //SendMail(unique, Password, txtemailid.Value.Trim(), txtapplicantfname.Value.ToUpper().Trim() + " " + txtapplicantlname.Value.ToUpper().Trim(), drpdpositionapplied.SelectedItem.Text.ToString(), Category);

                        //Response.Redirect("~/Candidate/sendmail.aspx");
                        Session["CurrentPage"] = "Congratulations.aspx";
                        Response.Redirect("../Candidate/Congratulations.aspx");

                    }
                    catch (Exception ex)
                    {
                        LogError(ex);
                    }

                }
                else
                {
                    string message = "alert('Sorry !! Your Registration is not succcessful !!! Please try again !!')";
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
                    ddlCandidateType.Focus();

                    return;

                }

            }
        }
        catch (Exception ex)
        {
            LogError(ex);
        }


    }
    protected void drpddate_SelectedIndexChanged(object sender, EventArgs e)
    {
        CalculateAge();
    }
    protected void drpdmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        CalculateAge();
    }
    protected void drpdyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        CalculateAge();
    }
    void SetDOBYear()
    {
        drpdyear.Items.Add("YEAR");
        for (int y = 1955; y <= 2005; y += 1)
        {
            drpdyear.Items.Add(y.ToString());
        }
    }
    protected void Fill_CandidateType()
    {
        try
        {
            ddlCandidateType.Items.Clear();
            DataSet Dstype = new DataSet();
            Dstype = Mysql.GetDataSetWithQuery("exec spGetCandidateType");
            if (Dstype.Tables[0].Rows.Count > 0)
            {

                ddlCandidateType.DataSource = Dstype;
                ddlCandidateType.DataTextField = "CandidateType";
                ddlCandidateType.DataValueField = "Id";
                ddlCandidateType.DataBind();
                ddlCandidateType.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    bool isvalidate()
    {
        try
        {
            if (ddlCandidateType.SelectedValue == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Candidate Type');", true);
                ddlCandidateType.Focus();
                return false;
            }
            if (txtcanname.Text.ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Candidate Name');", true);
                txtcanname.Focus();
                return false;
            }
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
                return false;

            }
            if (txtemail.Text.ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter E-Mailid');", true);
                txtemail.Focus();
                return false;
            }

            if (txtmbl.Text.ToString() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter mobile number');", true);
                txtmbl.Focus();
                return false;
            }

            Regex regexmobile = new Regex(@"^[7-9]{1}[0-9]{9}$");
            Match matchmobile = regexmobile.Match(txtmbl.Text.ToString());
            if (!matchmobile.Success)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter valid mobile number');", true);
                txtmbl.Focus();
                return false;
            }

            CalculateAge();

            if (Convert.ToInt32(hfAge.Value) < 18)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('You are not eligible to apply as per Age criteria.');", true);
                return false;
            }

            if (Convert.ToInt32(hfAge.Value) > 50)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('You are not eligible to apply as per Age criteria.');", true);
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
    protected void CalculateAge()
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
                DateTime Today = Convert.ToDateTime("2017-08-01");//mm/dd/yyyy
                TimeSpan ts = Today - dob;
                DateTime Age = DateTime.MinValue + ts;

                //Age = Convert.ToDateTime(ts);
                int Years = 0;
                int Months = 0;
                int Days = 0;

                if (Convert.ToInt32(drpdyear.SelectedValue) % 4 >= 1 && Convert.ToInt32(drpddate.SelectedValue) == 1)
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
                year = Convert.ToInt32(Years);
                month = Convert.ToInt32(Months);
                day = Convert.ToInt32(Days);
                hfAge.Value = Convert.ToString(year);
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    public static string CreateRandomUsername()
    {
        try
        {
            Random random = new Random();
            StringBuilder builder = new StringBuilder();

            string legalCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            char character;

            for (int i = 0; i < 8; i++)
            {
                character = legalCharacters[random.Next(0, legalCharacters.Length)];
                builder.Append(character);
            }

            return builder.ToString();
        }
        catch (Exception exp)
        {
            throw new Exception("CreateRandomPassword//" + exp.Message);

        }
    }
    public static string CreateRandomPassword()
    {
        try
        {
            Random random = new Random();
            StringBuilder builder = new StringBuilder();
            string legalCharacters = "AFNGOYWKDPUZTBCQREVHIXJSLM";
            char character;
            for (int i = 0; i < 2; i++)
            {
                character = legalCharacters[random.Next(0, legalCharacters.Length)];
                builder.Append(character);
            }
            return builder.ToString();
        }
        catch (Exception exp)
        {
            throw new Exception("CreateRandomPassword//" + exp.Message);
        }
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }
}