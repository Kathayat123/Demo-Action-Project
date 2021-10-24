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

public partial class Admin_Citywise : ClsErrorLog
{
    int TotalRegcount, CurrentRegcount, PreviousRegcount = 0;
    int post1Total, post1Currntcount, post1Previouscount = 0;
    int Totalmale, pmale, ppmale = 0;
    int Totalfemale, pfemale, ppfemale = 0;
    int sumFirstPref, sumSeconfPref, sumThirdPref, sumfourthPref, sumfifthPref = 0;
    DataSet Ds = new DataSet();
    DataTable dt = new DataTable();
    int Total = 0;

    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginId"] == null)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            if (!IsPostBack)
                {
                    Fill_CandidateType();
                    Fill_GridView();
                }
        }
    }

    private void Fill_GridView()
    {
        try
        {
            DataSet Ds = new DataSet();
            GridView1.DataSource = null;
            GridView1.DataBind(); lblCMessage.Text = "";

            Ds = Mysql.GetDataSetWithQuery("Exec Sp_GetCitywiseSummary ");
            dt = Mysql.GetDataTableWithQuery("Exec Sp_GetCitywiseSummary ");
            if (Ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.FooterRow.Cells[1].Text = "Total";
                GridView1.FooterRow.Cells[1].Font.Bold = true;
                GridView1.FooterRow.Cells[1].HorizontalAlign = HorizontalAlign.Left;

                GridView1.FooterRow.Cells[2].Text = sumFirstPref.ToString();
                GridView1.FooterRow.Cells[2].Font.Bold = true;
                GridView1.FooterRow.Cells[2].HorizontalAlign = HorizontalAlign.Left;

                GridView1.FooterRow.Cells[3].Text = sumSeconfPref.ToString();
                GridView1.FooterRow.Cells[3].Font.Bold = true;
                GridView1.FooterRow.Cells[3].HorizontalAlign = HorizontalAlign.Left;

                GridView1.FooterRow.Cells[4].Text = sumThirdPref.ToString();
                GridView1.FooterRow.Cells[4].Font.Bold = true;
                GridView1.FooterRow.Cells[4].HorizontalAlign = HorizontalAlign.Left;

                lblCMessage.Text = "Total City Count is : " + Ds.Tables[0].Rows.Count.ToString();
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                lblCMessage.Text = "Total Registration Count is : " + Ds.Tables[0].Rows.Count.ToString();
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
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
                
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int fstcount, sndcount, trdcount = 0;      
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView drv = (DataRowView)e.Row.DataItem;
            int CityId = Convert.ToInt32(drv["ID"]);

            string countPrefCenter1 = "";
            string countPrefCenter2 = "";
            string countPrefCenter3 = "";

            if (ddlCandidateType.SelectedValue == "0")
            {
                countPrefCenter1 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity='" + CityId + "' and lock='N' "));
                countPrefCenter2 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity2='" + CityId + "' and lock='N' "));
                countPrefCenter3 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity3='" + CityId + "' and lock='N' "));
            }
            else
            {
                countPrefCenter1 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity='" + CityId + "' and lock='N' and CandidateType='"+ddlCandidateType.SelectedValue+"'"));
                countPrefCenter2 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity2='" + CityId + "' and lock='N' and CandidateType='" + ddlCandidateType.SelectedValue + "'"));
                countPrefCenter3 = Convert.ToString(Mysql.SingleCellResultInString("Select count(*) from tbabmCandidateInfo where examcity3='" + CityId + "' and lock='N' and CandidateType='" + ddlCandidateType.SelectedValue + "'"));
            }
            
            e.Row.Cells[2].Text = countPrefCenter1 == "" ? "0" : countPrefCenter1;
            e.Row.Cells[3].Text = countPrefCenter1 == "" ? "0" : countPrefCenter2;
            e.Row.Cells[4].Text = countPrefCenter1 == "" ? "0" : countPrefCenter3;

            sumFirstPref = sumFirstPref + Convert.ToInt32(e.Row.Cells[2].Text);
            sumSeconfPref = sumSeconfPref + Convert.ToInt32(e.Row.Cells[3].Text);
            sumThirdPref = sumThirdPref + Convert.ToInt32(e.Row.Cells[4].Text);
        }

    }

    protected void ddlCandidateType_SelectedIndexChanged(object sender, EventArgs e)
    {
        Fill_GridView();
    }
}