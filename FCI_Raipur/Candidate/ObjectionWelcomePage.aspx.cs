using Common.Class;
using EvoPdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ObjectionWelcomePage : ClsErrorLog
{
    CommonPerception Mysql = new CommonPerception();
    string CanId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("../Home/ListofExam.aspx");
        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("../Home/ListofExam.aspx");
        }
        CanId = Convert.ToString(Session["canid"]);
        lblLoginId.Text = CanId;
        DataSet ds = Mysql.GetDataSet("Select * from tbabmCandidateInfo Where Canid = '" + CanId + "'");

        if (ds.Tables[0].Rows.Count > 0)
        {
            string RollNumber = ds.Tables[0].Rows[0]["RollNumber"].ToString();
            lblName.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString();
            lblMotherName.Text = ds.Tables[0].Rows[0]["MotherName"].ToString();
            lblFatherName.Text = ds.Tables[0].Rows[0]["FatherName"].ToString();
            lblRollNo.Text = ds.Tables[0].Rows[0]["RollNumber"].ToString();
            lblExamDate.Text = Convert.ToDateTime(Convert.ToString(ds.Tables[0].Rows[0]["ExamDate"])).ToString("dd-MM-yyyy");
            lblSlot.Text = ds.Tables[0].Rows[0]["SlotTiming"].ToString();

            if (String.IsNullOrEmpty(RollNumber))
            {
                btnAddObjection.Visible = false;
            }
            else
            {
                btnAddObjection.Visible = true;
            }
        }
    }
    protected void btnAddObjection_Click(object sender, EventArgs e)
    {
        Response.Redirect("ObjectionForm.aspx");
    }


    protected void btnViewAnskerkey_Click(object sender, EventArgs e)
    {
        string strfilename = "AnswerKey.pdf";
        Response.ContentType = "Application/pdf";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + strfilename);
        Response.TransmitFile(@"\\10.10.10.113\Aptech Limited\FCI_Raipur\Objection\\" + strfilename);
        Response.End();
    }
}