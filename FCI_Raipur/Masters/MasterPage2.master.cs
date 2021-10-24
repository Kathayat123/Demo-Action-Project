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

public partial class Home_MasterPage2 : System.Web.UI.MasterPage
{
    ResourceManager rm;
    CultureInfo ci;
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {


            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
            ci = Thread.CurrentThread.CurrentCulture;
            LoadString(ci);

        }
    }
    private void LoadString(CultureInfo ci)
    {


        lblCMAT.Text = rm.GetString("CMAT", ci).ToString();
        lblCMAT1.Text = rm.GetString("CMAT1", ci).ToString();



    }
}
