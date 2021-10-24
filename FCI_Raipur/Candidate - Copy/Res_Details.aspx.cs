using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Common.Class;

public partial class Candidate_Res_Details : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["canid"].ToString()))
        {
          // Session.Abandon();
            Response.Redirect("../Candidate/ExistingUser.aspx");
        }
        btnAdmitCard.Visible = false;
        if (!IsPostBack)
        {
            trspecial.Visible = false;
              trall.Visible = false;
            Getdata();

            string ss = "";
            //   ds = Mysql.GetDataSetWithQuery("select * from tbldata where ApplNo='" + Convert.ToString(Session["canid"]) + "'");
            ss = Mysql.SingleCellResultInString("select   td.Rollnumber as Rollnumber  from AdmitCardData_Phase2 td inner join tbabmcandidateinfo can on td.rollnumber=can.rollnumber where can.canid='" + Convert.ToString(Session["canid"]) + "'");
            if (ss != "")
            {
                btnAdmitCard.Visible = true ;
            }
            else
            {

                btnAdmitCard.Visible = false;
            }

        }
    }

    protected void Getdata()
    {
        DataSet ds = new DataSet();
        //   ds = Mysql.GetDataSetWithQuery("select * from tbldata where ApplNo='" + Convert.ToString(Session["canid"]) + "'");
        ds = Mysql.GetDataSetWithQuery("select can.candidatename, td.RollNo as Rollnumber, td.FTOTALMARKS as Mark, can.Barcode from TblData_AllCandidates td inner join tbabmcandidateinfo can on td.ApplicationNo=can.canid where can.canid='" + Convert.ToString(Session["canid"]) + "'");
        if (ds.Tables[0].Rows.Count>0)
        {
            lblcandidatename.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
            lblrollno.Text= ds.Tables[0].Rows[0]["Rollnumber"].ToString();
            lblmarks.Text= ds.Tables[0].Rows[0]["Mark"].ToString();
            hdnbarcode.Value= ds.Tables[0].Rows[0]["Barcode"].ToString();
            //Request.QueryString["id"]= ds.Tables[0].Rows[0]["Barcode"].ToString();
            //if(ds.Tables[0].Rows[0]["ApplNo"].ToString()== "197594")
            //{
            //    trspecial.Visible = true;
            //    trall.Visible = false;
            //}
            //else
            //{
            //    trspecial.Visible = false;
            //    trall.Visible = true;
            //}
        }
        else
        {

        }
    }

    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Home/ListofExam.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["canid"].ToString()))
        {
            // Session.Abandon();
            Response.Redirect("../Candidate/ExistingUser.aspx");
        }
        else
        {
            Response.Redirect("http://fcicgjobs.com/OMRSheet/" + hdnbarcode.Value + ".jpg", true);

        }
      
    }
    protected void btnAdmitCard_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["canid"].ToString()))
        {
            // Session.Abandon();
            Response.Redirect("../Candidate/ExistingUser.aspx");
        }
        else
        {
            Response.Redirect("AdmitCard_Phase2.aspx?CID=" + lblrollno.Text.Trim()  , true);

        }
    }
}