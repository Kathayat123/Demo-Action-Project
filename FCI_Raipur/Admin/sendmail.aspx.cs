using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Common.Class;
using System.IO;
using System.Web.Mail;
using System.Resources;
using System.Threading;
using System.Text.RegularExpressions;
using System.Configuration;
public partial class sendmail : ClsErrorLog 
{
    CommonPerception MySql = new CommonPerception();
    string cat = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

           
            if (!IsPostBack)
            {

                string calltype = "";
                string remarks = "";
                string strcanid = "";
                 string stremailid = "";
                 string strtickrtNo = "";
                DataSet ds = new DataSet();
                ds = MySql.GetDataSetWithQuery("select top 1 tb_callcenter.Id, name,tbabmCandidateInfo.canid,Remarks,Email  from tb_callcenter inner join tbabmCandidateInfo on tbabmCandidateInfo.canid= tb_callcenter.Canid left  join tb_calltype on  tb_callcenter.CallType =tb_calltype.id   where tbabmCandidateInfo.Canid='" + Session["canid"].ToString() + "' order by tb_callcenter.Id  desc ");
                if (ds.Tables[0].Rows.Count > 0)
                {


                    remarks = Convert.ToString(ds.Tables[0].Rows[0]["Remarks"]);
                    calltype = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
                    strcanid = Convert.ToString(ds.Tables[0].Rows[0]["canid"]);
                    stremailid = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
                    strtickrtNo = Convert.ToString(ds.Tables[0].Rows[0]["Id"]);

                }
                SendMail(strcanid, calltype, remarks, stremailid, strtickrtNo);
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
       
    }
    void SendMail(string canid, string calltype, string remarks, string emailid,string ticketno )
    {
        try
        {
            #region

            string Filepath = System.Configuration.ConfigurationManager.AppSettings["ErrorMail"];
            StreamReader reader = new StreamReader(Filepath);
            string content = reader.ReadToEnd();
            reader.Close();
            content = Regex.Replace(content, "&lt;%errormsg%&gt;", remarks);
            content = Regex.Replace(content, "&lt;%ticketno%&gt;", ticketno);
            content = Regex.Replace(content, "&lt;%loginid%&gt;", canid);
            content = Regex.Replace(content, "&lt;%callType%&gt;", calltype);
         
            
            MailMessage msgMail = new MailMessage();
            Response.Write(ConfigurationSettings.AppSettings["mailServer"].ToString());  
            msgMail.From = System.Configuration.ConfigurationManager.AppSettings["mailFrom"];
            msgMail.To = emailid; 
            msgMail.Bcc = "techdev@aptech.ac.in";
            //msgMail.Bcc = "romanf@aptech.ac.in";
            msgMail.Subject = "UPJN| " + ticketno + " | " + calltype;

            msgMail.BodyFormat = MailFormat.Html;
            string strBody = content;
            msgMail.Body = strBody;
            SmtpMail.SmtpServer = ConfigurationSettings.AppSettings["mailServer"].ToString();
            //SmtpMail.SmtpServer.Insert(0, mailssrv);
            SmtpMail.Send(msgMail);

            Response.Redirect("~/Admin/CandidateDetails.aspx");
            #endregion
        }
        catch (Exception ex)
        {

            LogError(ex);
            Response.Redirect("~/Admin/CandidateDetails.aspx");
        }
    }
}