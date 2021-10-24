/* =============================================================================================================
 * Company : Attest Testing Services...
 
 * Project:CMATFEB 2013
 * 
 * Module : Entry College AND Create College Capacity
 * 
 * Developed By : Bipin Ojha
 * 
 * Created Date: 16 JAN 2013
 * 
 * No need to modify (Replace another one)
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
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using Common.Class;
//using MSCaptcha;
using System.Security.Cryptography;
using System.Globalization;
using System.Threading;
using System.Net;


public partial class SchedulerSep2014_Home : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Collegeadmin"] = "Bipin";
        if (Session["Collegeadmin"] != null)
        {
            //do something
        }
        else
        {
            Response.Redirect("Logout.aspx");
        }

        DataSet DsCount = new DataSet();
        DsCount = null;
        DsCount = MySql.GetDataSetWithQuery("(Select '1' as Region,(SELECT COUNT(RELIGION)AS TOTAL FROM dbo.tbExamCenterMaster WHERE RELIGION=1)as Total) UNION (Select '2' as Region,(SELECT COUNT(*)AS TOTAL FROM dbo.tbExamCenterMaster WHERE RELIGION=2)as Total) UNION (Select '3' as Region,(SELECT COUNT(*)AS TOTAL FROM dbo.tbExamCenterMaster WHERE RELIGION=3)as Total) UNION (Select '4' as Region,(SELECT COUNT(*)AS TOTAL FROM dbo.tbExamCenterMaster WHERE RELIGION=4)as Total)");
        if (DsCount.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < DsCount.Tables[0].Rows.Count; i++)
            {
                if (i == 0)
                {
                    Label1.Text = DsCount.Tables[0].Rows[i]["Total"].ToString();
                }
                if (i == 1)
                {
                    Label2.Text = DsCount.Tables[0].Rows[i]["Total"].ToString();
                }
                if (i == 2)
                {
                    Label3.Text = DsCount.Tables[0].Rows[i]["Total"].ToString();
                }
                if (i == 3)
                {
                    Label4.Text = DsCount.Tables[0].Rows[i]["Total"].ToString();
                }
            }
            Label5.Text = Convert.ToInt32(Convert.ToInt32(Label1.Text) + Convert.ToInt32(Label2.Text) + Convert.ToInt32(Label3.Text) + Convert.ToInt32(Label4.Text)).ToString();

            //DataSet DsSlotnMachineCount = new DataSet();
            //DsSlotnMachineCount = null;
            //DsSlotnMachineCount = MySql.GetDataSetWithQuery("Select distinct b.CenterId,a.CenterCode,a.MachineNo from dbo.tbExamCenterMaster a inner join dbo.Tb_CenterCapacity b on a.CenterId=b.CenterId");
            //GridView2.Visible = true;
            //GridView2.DataSource = DsSlotnMachineCount;
            //GridView2.DataBind();
        }

    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int irow = GridView2.Rows.Count;
            string CenterCode = e.Row.Cells[1].Text.ToString();

            Label Lablel1 = e.Row.FindControl("Label1") as Label;
            Label Lablel2 = e.Row.FindControl("Label2") as Label;
            Lablel1.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=1 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=19");
            Lablel2.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=2 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=19");

            Label Lablel3 = e.Row.FindControl("Label3") as Label;
            Label Lablel4 = e.Row.FindControl("Label4") as Label;
            Lablel3.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=1 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=20");
            Lablel4.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=2 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=20");

            Label Lablel5 = e.Row.FindControl("Label5") as Label;
            Label Lablel6 = e.Row.FindControl("Label6") as Label;
            Lablel5.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=1 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=21");
            Lablel6.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=2 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=21");

            Label Lablel7 = e.Row.FindControl("Label7") as Label;
            Label Lablel8 = e.Row.FindControl("Label8") as Label;
            Lablel7.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=1 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=22");
            Lablel8.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=2 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=22");

            Label Lablel9 = e.Row.FindControl("Label9") as Label;
            Label Lablel10 = e.Row.FindControl("Label10") as Label;
            Lablel9.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=1 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=29");
            Lablel10.Text = MySql.SingleCellResultInString("Select Count(Slot) from Tb_CenterCapacity where Slot=2 and CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "') and datepart(day,ExamDate)=29");

            string MC1, MC2, MC3, MC4, MC5 = string.Empty;
            MC1 = MySql.SingleCellResultInString("Select (MachineNo+AddMachine1) from dbo.tbExamCenterMaster where CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "')");
            MC2 = MySql.SingleCellResultInString("Select (MachineNo+AddMachine2) from dbo.tbExamCenterMaster where CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "')");
            MC3 = MySql.SingleCellResultInString("Select (MachineNo+AddMachine3) from dbo.tbExamCenterMaster where CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "')");
            MC4 = MySql.SingleCellResultInString("Select (MachineNo+AddMachine4) from dbo.tbExamCenterMaster where CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "')");
            MC5 = MySql.SingleCellResultInString("Select (MachineNo+AddMachine5) from dbo.tbExamCenterMaster where CenterId in (Select distinct CenterId from dbo.tbExamCenterMaster where CenterCode='" + CenterCode + "')");

            Label Label12 = e.Row.FindControl("Label12") as Label;
            Label12.Text = MC1 + "-" + MC2 + "-" + MC3 + "-" + MC4; //+ "-" + MC5;

        }
    }


}