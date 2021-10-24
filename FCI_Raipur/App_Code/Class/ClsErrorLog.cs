using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;
using Common.Class;
/// Summary description for ClsErrorLog
/// </summary>
public class ClsErrorLog : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    public ClsErrorLog()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void LogError(Exception ex)
    {
        String message = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss tt");
        message += Environment.NewLine;
        message += "-----------------------------------------------------------";
        message += Environment.NewLine;
        message += string.Format("Message: {0}", ex.Message);
        message += Environment.NewLine;
        message += string.Format("StackTrace: {0}", ex.StackTrace);
        message += Environment.NewLine;
        message += string.Format("Source: {0}", ex.Source);
        message += Environment.NewLine;
        message += string.Format("TargetSite: {0}", ex.TargetSite.ToString());
        message += Environment.NewLine;
        message += "-----------------------------------------------------------";
        message += Environment.NewLine;

        Boolean bln = Mysql.ExecuteNonQuery("Exec Sp_errlog '" + Convert.ToString(message).Replace("'", "''") + "' ");
    }

    public void RegistrationStart()
    {
        if (Convert.ToString(Session["CanId"]) == null)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec sp_RegistrationStartEndDate ");
        if (Ds.Tables[0].Rows.Count > 0 && Convert.ToString(Ds.Tables[0].Rows[0]["currentdate"]) != "")
        {
            if (Convert.ToDateTime(Ds.Tables[0].Rows[0]["currentdate"]) < Convert.ToDateTime(Ds.Tables[0].Rows[0]["RegistrationStartDate"]))
            {
                Session.Abandon();
                Response.Redirect("../Candidate/ListsofExam.aspx");
            }
        }
    }


    public void RegistrationClosed()
    {
        if (Convert.ToString(Session["CanId"]) == null)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec sp_RegistrationStartEndDate ");
        if (Ds.Tables[0].Rows.Count > 0 && Convert.ToString(Ds.Tables[0].Rows[0]["RegistrationEndDate"]) != "")
        {
            if (Convert.ToDateTime(Ds.Tables[0].Rows[0]["currentdate"]) > Convert.ToDateTime(Ds.Tables[0].Rows[0]["RegistrationEndDate"]))
            {
                Response.Redirect("../Candidate/RegClose.aspx");
            }
        }
    }

    public void PaymentClosed()
    {
        if (Convert.ToString(Session["CanId"]) == null)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec sp_RegistrationStartEndDate ");
        if (Ds.Tables[0].Rows.Count > 0 && Convert.ToString(Ds.Tables[0].Rows[0]["PaymentEndDate"]) != "")
        {
            if (Convert.ToDateTime(Ds.Tables[0].Rows[0]["currentdate"]) > Convert.ToDateTime(Ds.Tables[0].Rows[0]["PaymentEndDate"]))
            {
                Response.Redirect("../Candidate/RegClose.aspx");
            }
        }
    }

    public void getpage(string struserid, string strpwd)
    {
        if (Convert.ToString(Session["CanId"]) == null)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_ValidateLoginDetails  '" + struserid + "' ,'" + strpwd + "' ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            Session["canid"] = Convert.ToString(Ds.Tables[0].Rows[0]["Canid"]);
            Session["username"] = Convert.ToString(Ds.Tables[0].Rows[0]["UserName"]);
            Session["Password"] = Convert.ToString(Ds.Tables[0].Rows[0]["Password"]);
            Session["CAT"] = Convert.ToString(Ds.Tables[0].Rows[0]["Category"]);
            Session["SUBCAT"] = Convert.ToString(Ds.Tables[0].Rows[0]["subCategory"]);

            if (Convert.ToString(Session["CAT"]) == "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) == "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) == "")
            {
                Session["CurrentPage"] = "Application.aspx";
                Response.Redirect("../Candidate/Application.aspx");
            }
            else if (Convert.ToString(Session["CAT"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) == "")
            {
                Session["CurrentPage"] = "Application1.aspx";
                Response.Redirect("../Candidate/Application1.aspx");
            }
            else if (Convert.ToString(Session["CAT"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["EduCanID"]) == "")
            {
                Session["CurrentPage"] = "Education.aspx";
                Response.Redirect("~/candidate/Education.aspx");
            }

            else if (Convert.ToString(Session["CAT"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["EduCanID"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["PhotoPath"]) == "")
            {
                Session["CurrentPage"] = "UploadImage.aspx";
                Response.Redirect("~/candidate/UploadImage.aspx");
            }

            else if (Convert.ToString(Session["CAT"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["EduCanID"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["PhotoPath"]) != "" && (Convert.ToString(Ds.Tables[0].Rows[0]["lock"]) == "" || Convert.ToString(Ds.Tables[0].Rows[0]["lock"]) == "Y"))
            {
                Session["CurrentPage"] = "preview.aspx";
                Response.Redirect("~/candidate/preview.aspx");
            }

            else if (Convert.ToString(Session["CAT"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step1"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["step2"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["EduCanID"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["PhotoPath"]) != "" && Convert.ToString(Ds.Tables[0].Rows[0]["lock"]) == "N")
            {
                Session["CurrentPage"] = "WelcomePage.aspx";
                Response.Redirect("~/candidate/WelcomePage.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("../Home/ListsofExam.aspx");
            }
        }
    }
    public void CheckPayment()
    {
        if (Convert.ToString(Session["CanId"]) == null)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_CheckPayment @CanId = '" + Convert.ToString(Session["CanId"]) + "'");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            Session.Abandon();
            Response.Redirect("../Home/ListsofExam.aspx");
        }
    }
}