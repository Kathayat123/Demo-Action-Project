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

using System.Resources;
using System.Globalization;
using System.Threading;
using Common.Class;

public partial class Home_MasterPage3 : System.Web.UI.MasterPage
{
    CommonPerception MySql = new CommonPerception();
    ResourceManager rm;
    CultureInfo ci;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {

            if (Convert.ToString(Session["Lang"]) == "" || Convert.ToString(Session["Lang"]) == "E")
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
               
            }
            else if (Convert.ToString(Session["Lang"]) == "H")
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo("hi-IN");
               
            }
            rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
            ci = Thread.CurrentThread.CurrentCulture;
            LoadString(ci);

        }
    }
    private void LoadString(CultureInfo ci)
    {
       
        lblCMAT.Text = rm.GetString("CMAT", ci).ToString();
        lblCMAT1.Text = rm.GetString("CMAT1", ci).ToString();
        lblhome.Text = rm.GetString("home", ci).ToString();
        lbleligibilty.Text = rm.GetString("eligibility", ci).ToString();
        lblpaymentprocess.Text = rm.GetString("Paymentprocess", ci).ToString();
        lbltestcities.Text = rm.GetString("TestCities", ci).ToString();
        lbltestpatern.Text = rm.GetString("TestPattern", ci).ToString();
        lblnotification.Text = rm.GetString("Notification", ci).ToString();
        lbladvertisement.Text = rm.GetString("advertisement", ci).ToString();
        lblpressrelese.Text = rm.GetString("PressRelease", ci).ToString();
        lblstategovernment.Text = rm.GetString("stategovernment", ci).ToString();
        lbluniversity.Text = rm.GetString("university", ci).ToString();
        lblpassresult.Text = rm.GetString("PassResult", ci).ToString();
        lblfaq.Text = rm.GetString("FAQ", ci).ToString();

        lblnewuser.Text = rm.GetString("Newregistraion", ci).ToString();
        lblexistinguser.Text = rm.GetString("Existinguser", ci).ToString();
        lblHowtoapply.Text = rm.GetString("Howtoapply", ci).ToString();
        lblinstructionoffillingform.Text = rm.GetString("Insturctionforfillingform", ci).ToString();


    }
}
