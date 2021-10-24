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
using Common.Class;
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

public partial class CashPayment : ClsErrorLog
{
    ResourceManager rm;
    CultureInfo ci;
    CommonPerception MySql = new CommonPerception();
    string CanId = string.Empty;
    string unique = "", username = "", Password = "";
    bool blins = false;
    string ins = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            RegistrationClosed();
            //CheckPayment();
            //PaymentClosed();
            //lblregno.Text = Convert.ToString(Session["CanId"]);
            Thread.CurrentThread.CurrentCulture = new CultureInfo("hi-IN");
            rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
            ci = Thread.CurrentThread.CurrentCulture;
            LoadString(ci);


            if (!IsPostBack)
            {
                filldata();
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }

    }

    void filldata()
    {
        try
        {

            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_getcanidatedetails @canid='" + Convert.ToString(Session["CanId"]) + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtloginid.Text = Convert.ToString(Session["CanId"]);
                txtmobileno.Text = Convert.ToString(ds.Tables[0].Rows[0]["Mobile"]);
                txtcandidatename.Text = Convert.ToString(ds.Tables[0].Rows[0]["CandidateName"]);
                txtcategory.Text = Convert.ToString(ds.Tables[0].Rows[0]["catName"]);
                txtRegistrationFee.Text = FeesAmount();

            }

        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
    string FeesAmount()
    {
        string strfee = "250.00";
        return strfee;
    }
    private void LoadString(CultureInfo ci)
    {
        #region Homepage
        lblkloginId.Text = "Login Id (लॉगिन आईडी)";
        lblcandidatename.Text = "Applicant Full name";
        lblmobileno.Text = "MobileNo";
        lblcategory.Text = "Category";

        #endregion
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("https://www.onlinesbi.com/sbicollect/icollecthome.htm?corpID=353624");
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }


}
