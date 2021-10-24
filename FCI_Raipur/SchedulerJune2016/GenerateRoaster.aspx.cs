/* =============================================================================================================
 * Project:CMAT
 * Module : Entry College AND Create College Capacity
 * Developed By : Bipin Ojha
 * Created Date: 10 Aug 2012
 * 
 * =========================================================================================================*/
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using Property_Layer;
using Business_Layer;
using Data_Layer;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
//using MSCaptcha;
using System.Security.Cryptography;
//using CaptchaDotNet2.Security.Cryptography;
using System.Globalization;
using System.Threading;
using System.Net;
using CollegeEntry;

public partial class SchedulerSep2014_GenerateRoaster : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Collegeadmin"] = "Bipin"; CentreCode
        //if (Session["Collegeadmin"] != null && Session["CentreCode"] != null)
        //{
        //   //do something
        //}
        //else
        //{
        //    Response.Redirect("../Helpdesk/Logout.aspx");
        //}

        if (!IsPostBack)
        {
           CenterList();
        }
        
    }
 
    #region Clearfileds()
    void Clearfields()
    {      
       

    }

    #endregion
       
    
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            //do nothing
            string scriptSTR = "<script language=javascript>alert('Please select at least one Centre !');</script>";
            if (!Page.IsStartupScriptRegistered("clientscript"))
            {
                Page.RegisterStartupScript("clientscript", scriptSTR);
            }
            return;
        }

        if (RadioButtonList3.SelectedIndex == -1)
        {
            //do nothing
            string scriptSTR = "<script language=javascript>alert('Please select Exam Date from below list !');</script>";
            if (!Page.IsStartupScriptRegistered("clientscript"))
            {
                Page.RegisterStartupScript("clientscript", scriptSTR);
            }
            return;
        }

        if (RadioButtonList2.SelectedIndex == -1)
        {
            //do nothing
            string scriptSTR = "<script language=javascript>alert('Please select at least one Slot !');</script>";
            if (!Page.IsStartupScriptRegistered("clientscript"))
            {
                Page.RegisterStartupScript("clientscript", scriptSTR);
            }
            return;
        }
        //if (rdroster.SelectedIndex == -1)
        //{
        //    //do nothing
        //    string scriptSTR = "<script language=javascript>alert('Please select at least one roster !');</script>";
        //    if (!Page.IsStartupScriptRegistered("clientscript"))
        //    {
        //        Page.RegisterStartupScript("clientscript", scriptSTR);
        //    }
        //    return;
        //}
        else
        {

            Session["Centreid"] = RadioButtonList1.SelectedValue;
            Session["slot"] = RadioButtonList2.SelectedValue;
            Session["roster"] = rdroster.SelectedValue;
            Session["examtime"] = "2017-09-" + RadioButtonList3.SelectedValue;
            Response.Redirect("~/SchedulerJune2016/Roster.aspx");

            //if (Session["Collegeadmin"]!= null && Session["CentreCode"]!=null)
            //{
            //    Session["Centreid"] = RadioButtonList1.SelectedValue ;
            //    Session["slot"] = RadioButtonList2.SelectedValue;
            //    Session["examtime"] = "2016-09-" + RadioButtonList3.SelectedValue;
               

            //    Response.Redirect("~/SchedulerJune2016/Roster.aspx");
            //}
            //else
            //{
            //    trrow1.Visible = false;
            //    Response.Write("<script  language='javascript' align='center'>window.alert('There is No scheduled for this Date');history.back(-1);</script> ");
            //    //Response.Redirect("index.htm");
                

            //}


        }
   
    }

    #region Created Center list
    protected void CenterList()
    {

        DataSet DsCenterlist = new DataSet();
        DsCenterlist = null;
       // DsCenterlist = MySql.GetDataSetWithQuery("Select distinct a.CollegeName+'|'+a.centercode as CollegeName ,b.CenterId from dbo.tbExamCenterMaster a inner join dbo.Tb_CenterCapacity b on a.CenterId=b.Centerid and a.CenterCode='" + Session["CentreCode"].ToString() + "' ");//Select 'All' as CenterCode,999 as CenterId union 
        DsCenterlist = MySql.GetDataSetWithQuery("Select distinct b.[Tc Name]+'|'+b.centercode as CollegeName ,b.CenterId from dbo.tbabmCandidateInfo a inner join  dbo.tb_schedulemaster b on a.CenterId=b.Centerid where b.centercode='" + Convert.ToString(Session["CentreCode"]) + "'");//Select 'All' as CenterCode,999 as CenterId union 
        if (DsCenterlist.Tables[0].Rows.Count > 0)
        {
            trcenterlist.Visible = true;
            RadioButtonList1.DataSource = DsCenterlist;
            RadioButtonList1.DataTextField = "CollegeName";
            RadioButtonList1.DataValueField = "CenterId";
            RadioButtonList1.DataBind();
            RadioButtonList1.Items.Insert(0, new ListItem("Select one centre from list", "0"));
        }
        else
        {
            //do nothing
            Session.Abandon();
            Response.Write("<script  language='javascript' align='center'>window.alert('There is No Data scheduled for this Centre');history.back(-1);</script> ");
            //trcenterlist.Visible = false;
            //RadioButtonList1.DataSource = null;
            //RadioButtonList1.DataBind();
            //
            //Response.Redirect("../HelpDesk/Login.aspx");
        }
    }
    #endregion

    public void ExportToExcel(DataSet dt)
    {
        if (dt.Tables[0].Rows.Count > 0)
        {
            string filename = RadioButtonList1.SelectedItem.Text + ".xls";
            System.IO.StringWriter tw = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw);
            DataGrid dgGrid = new DataGrid();
            dgGrid.DataSource = dt;
            dgGrid.DataBind();

            //Get the HTML for the control.
            dgGrid.RenderControl(hw);
            //Write the HTML back to the browser.
            //Response.ContentType = application/vnd.ms-excel;
            Response.ContentType = "application/vnd.ms-excel";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename + "");
            this.EnableViewState = false;
            Response.Write(tw.ToString());
            Response.End();
        }
    }

  
   
}