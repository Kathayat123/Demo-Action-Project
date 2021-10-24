using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using Common.Class;
public partial class SchedulerJune2016_Roster : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        // if (Convert.ToString (Session["roster"])=="1")
        //{
        roster1();
        // }
        //else if (Convert.ToString (Session["roster"])=="2")
        //{

        //}

    }

    void roster1()
    {
        string strcenterid = Convert.ToString(Session["Centreid"]);
        string strslot = Convert.ToString(Session["slot"]);
        string strexamtime = Convert.ToString(Session["examtime"]);
        //string strcenterid = "109";
        //string strslot = "1";
        //string strexamtime = "2016-08-05";

        DataSet ds = MySql.GetDataSetWithQuery("Exec SP_GenerateRoaster @CenterId='" + strcenterid + "',@slot='" + strslot + "',@ExamDate='" + strexamtime + "' ");
        DataTable dt = ds.Tables[0];
        string strcentercode = Convert.ToString(ds.Tables[0].Rows[0]["CenterCode"]);
        int startpage = 0;
        int mod = Convert.ToInt32(ds.Tables[0].Rows.Count) % 5 > 0 ? 1 : 0;
        int endpage = (Convert.ToInt32(ds.Tables[0].Rows.Count) / 5) + mod;

        StringBuilder html = new StringBuilder();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {


            if (i == 0 || i % 5 == 0)
            {
                if (i > 0)
                {
                    html.Append("<tr>");
                    html.Append("<td   align='left' colspan='6' style='height:25%' >");
                    html.Append("</br>");
                    //html.Append("</br>");
                    html.Append("Name & Signature of Invigilator");
                    html.Append("</br>");

                    html.Append("Mobile No. of Invigilator :___________");
                    html.Append("</br>");
                    html.Append("</br>");
                    html.Append("</td>");
                    html.Append("<td   align='center' colspan='7'  >");
                    html.Append("<table cellspacing='0' cellpadding='0' border='1' width='80%' height='100%'>");
                    html.Append("<tr>");
                    html.Append("<td>");
                    html.Append("Number of Candidates:");
                    html.Append("</td>");

                    html.Append("</tr>");

                    html.Append("<tr>");
                    html.Append("<td>");
                    html.Append("Total: ");
                    html.Append("</td>");

                    html.Append("</tr>");

                    html.Append("<tr>");
                    html.Append("<td>");
                    html.Append("Present: ");
                    html.Append("</td>");

                    html.Append("</tr>");

                    html.Append("<tr>");

                    html.Append("<td>");
                    html.Append("Absent: ");
                    html.Append("</td>");
                    html.Append("</tr>");
                    html.Append("</table>");

                    html.Append("</td>");
                    html.Append("</tr>");
                    //html.Append("<td   align='center' colspan='3' bgcolor='Silver' >");
                    //html.Append("CENTRE SUPT.'S SIGNATURE");
                    //html.Append("</td>");
                    //html.Append("<td   align='center' colspan='3'  >");
                    //html.Append("");
                    //html.Append("</td>");
                    html.Append("</table>");
                    //html.Append("</br>");
                   // html.Append("</br>");
                     html.Append("</br>");
                   html.Append("</br>");
                   // html.Append("</br>");
                 // html.Append("</br>");




                }
                startpage = (i / 5) + 1;
                html.Append("<table border = '0' style='font-family: Verdana; font-size: small;border-width: 1px;cellpadding='0'; cellspacing='0'' width='100%' >");
                html.Append("<tr>");
                html.Append("<td align='center'>");
                html.Append("<b><u>FOOD CORPORATION OF INDIA CHHATTISGARH REGION, RECRUITMENT OF WATCHMAN EXAM-2017 ATTENDANCE SHEET</u></b>");
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");
                //html.Append("</br>");
                //  html.Append("</br>");


                html.Append("<table border = '1' style='font-family: Verdana; font-size: small;border-width: 1px; cellpadding='0'; cellspacing='0'' width='100%' >");


                html.Append("<tr>");
                html.Append("<td   align='center' colspan='3' bgcolor='Silver' >");
                html.Append("CENTER CODE");
                html.Append("</td>");
                html.Append("<td colspan='6'  align='center' >");
                html.Append(strcenterid);
                html.Append("</td>");
                html.Append("<td   align='center' colspan='2' bgcolor='Silver'>");
                html.Append("PAGE NO.");
                html.Append("</td>");
                html.Append("<td  colspan='3' align='center'>");
                html.Append("Page" + startpage + " of " + endpage + "");
                // html.Append(Convert.ToString(ds.Tables[0].Rows[i]["SlotTiming"]));
                html.Append("</td>");
                html.Append("</tr>");

                html.Append("<tr>");
                html.Append("<td   align='center' colspan='3' bgcolor='Silver' >");
                html.Append("CENTER NAME");
                html.Append("</td>");
                html.Append("<td colspan='9'  style='height:60px' align='center' >");

                html.Append(Convert.ToString(ds.Tables[0].Rows[i]["CollegeName"]).ToUpper());
                html.Append("</td>");
                //  html.Append("<td   align='center' colspan='2' bgcolor='Silver'>");
                //  //html.Append("EXAM DATE");
                //  html.Append("</td>");
                //  html.Append("<td  colspan='3' align='center'>");
                ////  html.Append(Convert.ToString(ds.Tables[0].Rows[i]["ExamDate"]));
                //  html.Append("</td>");
                html.Append("</tr>");



                html.Append("<tr>");
                html.Append("<td   align='center'  bgcolor='Silver' >");
                html.Append("S.NO");
                html.Append("</td>");
                html.Append("<td   align='center' colspan='2' bgcolor='Silver' >");
                html.Append("ROLL NO.");
                html.Append("</td>");
                // html.Append("<td   align='center' colspan='1' bgcolor='Silver'>");
                //// html.Append("POST APPLIED");
                // html.Append("</td>");
                html.Append("<td   align='center' colspan='3' bgcolor='Silver' width='70px'>");
                html.Append("Candidate's Full Name");
                html.Append("</br>");
                html.Append("Registrationid");
                html.Append("</td>");
                //  html.Append("<td  align='center' bgcolor='Silver'>");
                ////  html.Append("PD");
                //  html.Append("</td>");
                html.Append("<td   align='center' colspan='2' bgcolor='Silver'>");
                html.Append("Photo");
                html.Append("</td>");
                html.Append("<td   align='center' colspan='3' bgcolor='Silver' width='150px'>");
                html.Append("OMR No/");
                html.Append("</br>");
                html.Append("Que");
              html.Append("</br>");
              html.Append("Booklet No");
                html.Append("</td>");
                html.Append("<td   align='center' colspan='1' bgcolor='Silver'  width='180px'>");
                html.Append("Signature of Candidate");
                html.Append("</br>");
                html.Append("Left Hand Thumb");
                html.Append("</br>");
                html.Append("Impression");
                html.Append("</td>");
                html.Append("</tr>");


            }



            html.Append("<tr>");
            html.Append("<td   align='center'   >");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["row"]));
            html.Append("</td>");
            html.Append("<td   align='center' colspan='2'  >");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["RollNumber"]));
            html.Append("</td>");
            // html.Append("<td   align='center' colspan='1'  >");
            //// html.Append(Convert.ToString(ds.Tables[0].Rows[i]["PositionApplied"]));
            // html.Append("</td>");
            html.Append("<td   align='center' colspan='3' >");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["CandidateName"]));
            html.Append("</br>");
            html.Append(Convert.ToString(ds.Tables[0].Rows[i]["canid"]));
            html.Append("</td>");
            //  html.Append("<td  align='center'>");
            ////  html.Append(Convert.ToString(ds.Tables[0].Rows[i]["PD"]));
            //  html.Append("</td>");
            html.Append("<td   align='center' colspan='2' >");
            html.Append("<img Width='80px' Height='70px' src=\"" + Convert.ToString(ds.Tables[0].Rows[i]["PhotoPath"]) + "\">");
            html.Append("</br>");
            html.Append("<img Width='80px' Height='70px' src=\"" + Convert.ToString(ds.Tables[0].Rows[i]["SignPath"]) + "\">");
            html.Append("</td>");
            html.Append("<td   align='center' colspan='3' >");
            html.Append("<table width='100%' cellspacing='0' cellpadding='0'>");
            html.Append("<tr style='border-bottom:1px solid black;'>");
            html.Append("<td style='border-bottom:1px solid black;'>");
            html.Append("</td>");
            html.Append("</tr>");

            html.Append("<tr>");
            html.Append("<td >");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("</table>");
            html.Append("</td>");
            html.Append("<td   align='center' colspan='1' >");
            //html.Append("");
            html.Append("<table width='100%' cellspacing='0' cellpadding='0'>");
            html.Append("<tr style='border-bottom:1px solid black;'>");
            html.Append("<td style='border-bottom:1px solid black;'>");
            html.Append("</td>");
            html.Append("</tr>");

            html.Append("<tr>");
            html.Append("<td >");
            html.Append("</td>");
            html.Append("</tr>");
            html.Append("</table>");

            html.Append("</td>");
            html.Append("</tr>");
            //html.Append("</table>");

        }

        html.Append("<tr>");
        html.Append("<td   align='left' colspan='6' style='height:25%'>");
        html.Append("</br>");
        //  html.Append("</br>");
        html.Append("Name & Signature of Invigilator");
        html.Append("</br>");
        html.Append("Mobile No. of Invigilator :____________");
        html.Append("</br>");
        html.Append("</br>");
        html.Append("</td>");
        html.Append("<td   align='center' colspan='7'  >");
        html.Append("<table width='80%' height='100%'cellspacing='0' cellpadding='0' border='1'>");
        html.Append("<tr>");
        html.Append("<td>");
        html.Append("Number of Candidates");
        html.Append("</td>");

        html.Append("</tr>");

        html.Append("<tr>");
        html.Append("<td>");
        html.Append("Total: ");
        html.Append("</td>");

        html.Append("</tr>");

        html.Append("<tr>");
        html.Append("<td>");
        html.Append("Present: ");
        html.Append("</td>");

        html.Append("</tr>");

        html.Append("<tr>");

        html.Append("<td>");
        html.Append("Absent: ");
        html.Append("</td>");
        html.Append("</tr>");
        html.Append("<table>");

        html.Append("</td>");
        //html.Append("<td   align='center' colspan='3' bgcolor='Silver' >");
        //html.Append("CENTRE SUPT.'S SIGNATURE");
        //html.Append("</td>");
        //html.Append("<td   align='center' colspan='4'  >");
        //html.Append("");
        //html.Append("</td>");
        html.Append("</table>");




        PlaceHolder1.Controls.Add(new LiteralControl(html.ToString()));
    }


}