using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Resources;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using System.Data.SqlClient;
using System.Net;

public partial class Admin_DashBoard : System.Web.UI.Page
{
    int TotalRegcount, CurrentRegcount, PreviousRegcount = 0;
    int post1Total, post1Currntcount, post1Previouscount = 0;
    int Totalmale, pmale, ppmale = 0;
    int Totalfemale, pfemale, ppfemale = 0;

    int Total = 0;

    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginId"] == null)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
        else { }

        FillDashboardSummay();
    }

    #region FillSummary
    void FillDashboardSummay()
    {
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_FinalDashBordSummary");
        if(Ds.Tables[0].Rows.Count>0)
        {
            lblTotalCurrentRegcount.Text = Ds.Tables[0].Rows[0]["Total"].ToString();
            lblTotalPreviousRegcount.Text = Ds.Tables[0].Rows[0]["PTotal"].ToString();
            TotalRegcount = Convert.ToInt32(Ds.Tables[0].Rows[0]["Total"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PTotal"].ToString());
            lblTotalRegcount.Text = TotalRegcount.ToString();

            lblpsot1Currentcount.Text = Ds.Tables[0].Rows[0]["Total"].ToString();
            lblpsot1Previouscount.Text = Ds.Tables[0].Rows[0]["PTotal"].ToString();
            post1Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["Total"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PTotal"].ToString());
            lblpsot1Totalcount.Text = TotalRegcount.ToString();

            lblcmale.Text = Ds.Tables[0].Rows[0]["Male"].ToString();
            lblpmale.Text = Ds.Tables[0].Rows[0]["PMale"].ToString();
            Totalmale = Convert.ToInt32(Ds.Tables[0].Rows[0]["Male"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PMale"].ToString());
            lbltotalmale.Text = Totalmale.ToString();

            lblcfemale.Text = Ds.Tables[0].Rows[0]["Female"].ToString();
            lblpfemale.Text = Ds.Tables[0].Rows[0]["PFemale"].ToString();
            lbltotalfemale.Text   = Convert.ToString( Convert.ToInt32(Ds.Tables[0].Rows[0]["Female"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PFemale"].ToString()));
           

            lblctrasgender.Text = Ds.Tables[0].Rows[0]["Transgender"].ToString();
            lblptrasgender.Text = Ds.Tables[0].Rows[0]["PTransgender"].ToString();
            lbltotaltrasgender.Text = Convert.ToString(Convert.ToInt32(Ds.Tables[0].Rows[0]["Transgender"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PTransgender"].ToString()));


            Label13.Text = Ds.Tables[0].Rows[0]["FormfillUpButnotPayment"].ToString();
            Label15.Text = Ds.Tables[0].Rows[0]["PFormfillUpButnotPayment"].ToString();
            Label16.Text = Convert.ToString(Convert.ToInt32(Ds.Tables[0].Rows[0]["FormfillUpButnotPayment"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PFormfillUpButnotPayment"].ToString()));

            //Category
            lblcCs.Text = Ds.Tables[0].Rows[0]["SC"].ToString();
            lblpCs.Text = Ds.Tables[0].Rows[0]["PSC"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["SC"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PSC"].ToString());
            lbltotalsc.Text = Total.ToString();

            lblcST.Text = Ds.Tables[0].Rows[0]["ST"].ToString();
            lblPST.Text = Ds.Tables[0].Rows[0]["PST"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["ST"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PST"].ToString());
            lbltotalST.Text = Total.ToString();

          
            lblcOBC.Text = Ds.Tables[0].Rows[0]["OBC"].ToString();
            lblPOBC.Text = Ds.Tables[0].Rows[0]["POBC"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["OBC"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["POBC"].ToString());
            lbltotalOBC.Text = Total.ToString();

            lblcOPEN.Text = Ds.Tables[0].Rows[0]["OPEN"].ToString();
            lblPOPEN.Text = Ds.Tables[0].Rows[0]["POPEN"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["OPEN"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["POPEN"].ToString());
            lbltotalOPEN.Text = Total.ToString();

            lblcphcount.Text = Ds.Tables[0].Rows[0]["PHD"].ToString();
            lblpphcount.Text = Ds.Tables[0].Rows[0]["PPHD"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["PHD"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PPHD"].ToString());
            lbltotalphcount.Text = Total.ToString();



            Label8.Text = Ds.Tables[0].Rows[0]["PerCount"].ToString();
            Label10.Text = Ds.Tables[0].Rows[0]["AllCount"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["PerCount"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["AllCount"].ToString());
            Label11.Text = Total.ToString();


            lblocount.Text = Ds.Tables[0].Rows[0]["Online"].ToString();
            lblopount.Text = Ds.Tables[0].Rows[0]["POnline"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["Online"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["POnline"].ToString());
            lblototalcount.Text = Total.ToString();

            lblCurrSBI.Text = Ds.Tables[0].Rows[0]["SBI"].ToString();
            lblAllSBI.Text = Ds.Tables[0].Rows[0]["PSBI"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["SBI"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PSBI"].ToString());
            lblTotalSBI.Text = Total.ToString();


            lblocountST.Text = Ds.Tables[0].Rows[0]["OnlineST"].ToString();
            lblopountST.Text = Ds.Tables[0].Rows[0]["POnlineST"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["OnlineST"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["POnlineST"].ToString());
            lblototalcountST.Text = Total.ToString();

            lblocountSC.Text = Ds.Tables[0].Rows[0]["OnlineSC"].ToString();
            lblopountSC.Text = Ds.Tables[0].Rows[0]["POnlineSC"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["OnlineSC"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["POnlineSC"].ToString());
            lblototalcountSC.Text = Total.ToString();


            lbltotalcountpaid.Text = Convert.ToString(Convert.ToInt32(Label8.Text) + Convert.ToInt32(Label10.Text) + Convert.ToInt32(lblTotalSBI.Text)
                + Convert.ToInt32(lblocount.Text) + Convert.ToInt32(lblopount.Text));

            lblcsubcount.Text = Ds.Tables[0].Rows[0]["Submitted"].ToString();
            lblpsubcount.Text = Ds.Tables[0].Rows[0]["PSubmitted"].ToString();
            Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["Submitted"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PSubmitted"].ToString());
            lbltsubcount.Text = Total.ToString();

            lblpost1Count.Text = Ds.Tables[0].Rows[0]["Post1"].ToString();
            lblpost1PCount.Text = Ds.Tables[0].Rows[0]["PPost1"].ToString();
            int Post1Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["Post1"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PPost1"].ToString());
           lblpost1TCount.Text = Post1Total.ToString();

           lblpost2Count.Text = Ds.Tables[0].Rows[0]["Post2"].ToString();
           lblpost2PCount.Text = Ds.Tables[0].Rows[0]["PPost2"].ToString();
           int Post2Total = Convert.ToInt32(Ds.Tables[0].Rows[0]["Post2"].ToString()) + Convert.ToInt32(Ds.Tables[0].Rows[0]["PPost2"].ToString());
           lblpost2TCount.Text = Post2Total.ToString();
        }
    }
    #endregion
}