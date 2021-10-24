/* =============================================================================================================
 * Project:CMAT
 * Module : Add Exam Date (Entry College AND Create College Capacity)
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

using Property_Layer;
using Business_Layer;
using Data_Layer;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using Common.Class;
using System.Security.Cryptography;
using System.Globalization;
using System.Threading;
using System.Net;
using CollegeEntry;

public partial class SchedulerSep2014_AddExamDate : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            FillCenterCode();
        }

    }

    #region Clearfileds()
    void Clearfields()
    {
        drpdCenterCode.SelectedValue = "0";
        Page.SetFocus(drpdCenterCode);

    }

    #endregion

    protected void Reset_Click(object sender, EventArgs e)
    {
        trrow1.Visible = false; BtnSubmit.Visible = false; Reset.Visible = false;
        ClearControls();

    }

    #region CatchCenterCode
    void FillCenterCode()
    {
        DataSet DsCenterCode = new DataSet();
        DsCenterCode = MySql.GetDataSetWithQuery("EXEC Sp_FillCenterCode");
        if (DsCenterCode.Tables[0].Rows.Count > 0)
        {
            //drpdCenterCode.Items.Clear();
            drpdCenterCode.DataSource = DsCenterCode;
            drpdCenterCode.DataTextField = "CenterCode";
            drpdCenterCode.DataValueField = "CenterId";
            drpdCenterCode.DataBind();

        }
    }

    #endregion

    protected void drpdCenterCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ableeditcollege.Visible = true;       
        Hide_Unhide(drpdCenterCode.SelectedItem.Value);
        Label11.Visible = false;

    }

    #region Hide N Unhide
    void Hide_Unhide(string Value)
    {
        //try
        //{
        if (Value == "0")
        {
            trrow1.Visible = false; BtnSubmit.Visible = false; Reset.Visible = false;
            trrow21.Visible = true;
        }
        else
        {
            trrow1.Visible = true; BtnSubmit.Visible = true; Reset.Visible = true;
            trrow21.Visible = false;
            SetValue(Value);

            /* Get Set Value from Table to Bind Table */

            DataSet DsGetExamDate = new DataSet();
            DsGetExamDate = null;
            Int32 Day1, Day2, Day3, Day4, Day5 = 0;
            string isStatus1 = "";
            string isStatus2 = "";
            string isStatus3 = "";
            string isStatus4 = "";
            string isStatus5 = "";

            string IsSlot1_1, IsSlot1_2, IsSlot1_3 = "";
            string IsSlot2_1, IsSlot2_2, IsSlot2_3 = "";
            string IsSlot3_1, IsSlot3_2 = "";
            string IsSlot4_1, IsSlot4_2 = "";
            string IsSlot5_1, IsSlot5_2 = "";

            DsGetExamDate = MySql.GetDataSetWithQuery("Exec Sp_GetExamDetails  '" + Value + "' ");
            if (DsGetExamDate.Tables[0].Rows.Count > 0)
            {
                BtnSubmit.Enabled = true; BtnSubmit.Text = "Modify";
                BtnSubmit.ForeColor = System.Drawing.Color.Red;
                BtnSubmit.Font.Bold = true;
                for (int xi = 0; xi < DsGetExamDate.Tables[0].Rows.Count; xi++)
                {
                    if (xi == 0)
                    {
                        Day1 = Convert.ToInt32(DsGetExamDate.Tables[0].Rows[xi]["Day"]);
                        isStatus1 = DsGetExamDate.Tables[0].Rows[xi]["Status"].ToString();
                        IsSlot1_1 = DsGetExamDate.Tables[0].Rows[xi]["Slot1"].ToString();
                        IsSlot1_2 = DsGetExamDate.Tables[0].Rows[xi]["Slot2"].ToString();
                        IsSlot1_3 = DsGetExamDate.Tables[0].Rows[xi]["Slot3"].ToString();

                        if (Day1 == 5 && isStatus1 == "Y")
                        {
                            chkall0.Checked = true;
                            if (IsSlot1_1 == "Y") { chk9.Checked = true; } else { chk9.Checked = false; }
                            if (IsSlot1_2 == "Y") { chk14.Checked = true; } else { chk14.Checked = false; }
                            if (IsSlot1_3 == "Y") { chk18.Checked = true; } else { chk18.Checked = false; }
                        }
                        else
                        {
                            chkall0.Checked = false;
                            if (IsSlot1_1 == "Y") { chk9.Checked = true; } else { chk9.Checked = false; }
                            if (IsSlot1_2 == "Y") { chk14.Checked = true; } else { chk14.Checked = false; }
                            if (IsSlot1_3 == "Y") { chk18.Checked = true; } else { chk18.Checked = false; }
                        }
                    }

                    if (xi == 1)
                    {
                        Day2 = Convert.ToInt32(DsGetExamDate.Tables[0].Rows[xi]["Day"]);
                        isStatus2 = DsGetExamDate.Tables[0].Rows[xi]["Status"].ToString();
                        IsSlot2_1 = DsGetExamDate.Tables[0].Rows[xi]["Slot1"].ToString();
                        IsSlot2_2 = DsGetExamDate.Tables[0].Rows[xi]["Slot2"].ToString();
                        IsSlot2_3 = DsGetExamDate.Tables[0].Rows[xi]["Slot3"].ToString();

                        if (Day2 == 6 && isStatus2 == "Y")
                        {
                            chkall1.Checked = true;
                            if (IsSlot2_1 == "Y") { chk10.Checked = true; } else { chk10.Checked = false; }
                            if (IsSlot2_2 == "Y") { chk15.Checked = true; } else { chk15.Checked = false; }
                            if (IsSlot2_3 == "Y") { chk19.Checked = true; } else { chk19.Checked = false; }
                        }
                        else
                        {
                            chkall1.Checked = false;
                            if (IsSlot2_1 == "Y") { chk10.Checked = true; } else { chk10.Checked = false; }
                            if (IsSlot2_2 == "Y") { chk15.Checked = true; } else { chk15.Checked = false; }
                            if (IsSlot2_3 == "Y") { chk19.Checked = true; } else { chk19.Checked = false; }
                        }
                    }

                    if (xi == 2)
                    {
                        Day3 = Convert.ToInt32(DsGetExamDate.Tables[0].Rows[xi]["Day"]);
                        isStatus3 = DsGetExamDate.Tables[0].Rows[xi]["Status"].ToString();
                        IsSlot3_1 = DsGetExamDate.Tables[0].Rows[xi]["Slot1"].ToString();
                        IsSlot3_2 = DsGetExamDate.Tables[0].Rows[xi]["Slot2"].ToString();

                        if (Day3 == 7 && isStatus3 == "Y")
                        {
                            chkall2.Checked = true;
                            if (IsSlot3_1 == "Y") { chk11.Checked = true; } else { chk11.Checked = false; }
                            if (IsSlot3_2 == "Y") { chk16.Checked = true; } else { chk16.Checked = false; }
                            if (IsSlot2_3 == "Y") { chk20.Checked = true; } else { chk20.Checked = false; }
                        }
                        else
                        {
                            chkall2.Checked = false;
                            if (IsSlot3_1 == "Y") { chk11.Checked = true; } else { chk11.Checked = false; }
                            if (IsSlot3_2 == "Y") { chk16.Checked = true; } else { chk16.Checked = false; }
                            if (IsSlot2_3 == "Y") { chk20.Checked = true; } else { chk20.Checked = false; }
                        }
                    }

                    if (xi == 3)
                    {
                        Day4 = Convert.ToInt32(DsGetExamDate.Tables[0].Rows[xi]["Day"]);
                        isStatus4 = DsGetExamDate.Tables[0].Rows[xi]["Status"].ToString();
                        IsSlot4_1 = DsGetExamDate.Tables[0].Rows[xi]["Slot1"].ToString();
                        IsSlot4_2 = DsGetExamDate.Tables[0].Rows[xi]["Slot2"].ToString();

                        if (Day4 == 22 && isStatus4 == "Y")
                        {
                            chkall3.Checked = true;
                            if (IsSlot4_1 == "Y") { chk12.Checked = true; } else { chk12.Checked = false; }
                            if (IsSlot4_2 == "Y") { chk17.Checked = true; } else { chk17.Checked = false; }
                        }
                        else
                        {
                            chkall3.Checked = false;
                            if (IsSlot4_1 == "Y") { chk12.Checked = true; } else { chk12.Checked = false; }
                            if (IsSlot4_2 == "Y") { chk17.Checked = true; } else { chk17.Checked = false; }
                        }
                    }

                    //if (xi == 4)
                    //{
                    //    Day5 = Convert.ToInt32(DsGetExamDate.Tables[0].Rows[xi]["Day"]);
                    //    isStatus5 = DsGetExamDate.Tables[0].Rows[xi]["Status"].ToString();
                    //    IsSlot5_1 = DsGetExamDate.Tables[0].Rows[xi]["Slot1"].ToString();
                    //    IsSlot5_2 = DsGetExamDate.Tables[0].Rows[xi]["Slot2"].ToString();

                    //    if (Day5 == 29 && isStatus5 == "Y")
                    //    {
                    //        chkall4.Checked = true;
                    //        if (IsSlot5_1 == "Y") { chk13.Checked = true; } else { chk13.Checked = false; }
                    //        if (IsSlot5_2 == "Y") { chk18.Checked = true; } else { chk18.Checked = false; }
                    //    }
                    //    else
                    //    {
                    //        chkall4.Checked = false;
                    //        if (IsSlot5_1 == "Y") { chk13.Checked = true; } else { chk13.Checked = false; }
                    //        if (IsSlot5_2 == "Y") { chk18.Checked = true; } else { chk18.Checked = false; }
                    //    }
                    //}
                }

                if (chkall0.Checked == true && chkall1.Checked == true && chkall2.Checked == true && chkall3.Checked == true && chk9.Checked == true && chk14.Checked == true && chk10.Checked == true && chk15.Checked == true && chk11.Checked == true && chk16.Checked == true && chk12.Checked == true && chk17.Checked == true)
                {
                    chkall.Checked = true;
                }
                else
                {
                    chkall.Checked = false;
                }
            }

            else
            {
                ClearControls();
                BtnSubmit.Enabled = true; BtnSubmit.Text = "Submit";
            }

        }
        //}
        //catch (Exception ex)
        //{
        //    ex.Message.ToString();
        //    return;
        //}


    }
    #endregion

    #region SetValue
    void SetValue(string CenterCode)
    {
        if (CenterCode == "0")
        {
            trrow1.Visible = false; BtnSubmit.Visible = false; Reset.Visible = false;
        }
        else
        {
            trrow1.Visible = true; BtnSubmit.Visible = true; Reset.Visible = true;
            string centercode = "";
            centercode = drpdCenterCode.SelectedItem.Text.ToString();
            string[] bk = centercode.Split('-');
            string CenterCode_ = bk[0].ToString();

            Label6.Text = CenterCode_; Label7.Text = CenterCode_; Label8.Text = CenterCode_; Label9.Text = CenterCode_;
        }
    }
    #endregion

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
        {
            string centercode = "";
            centercode = drpdCenterCode.SelectedItem.Text.ToString();
            string[] bk = centercode.Split('-');
            string CenterCode_ = bk[0].ToString();

            e.Row.Cells[2].Text = CenterCode_;

            //for (int i = 0; i <=GridView1.Rows.Count; i++)
            //{
            //    string Id_ = e.Row.Cells[3].Text.ToString();                
            //}

            // ((CheckBox)e.Row.FindControl("CheckBox7")).Attributes.Add("onclick", "javascript:SelectAll('" + ((CheckBox)e.Row.FindControl("CheckBox7")).ClientID + "')");



        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //Response.Write("Hello"); 
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox mycheckbox = (CheckBox)row.FindControl("ContentPlaceHolder1_GridView1_CheckBox1_0");
            mycheckbox.Checked = true;

        }

    }

    protected void chkall_CheckedChanged(object sender, EventArgs e)
    {
        if (chkall.Checked == true)
        {
            chkall0.Checked = true; chkall1.Checked = true; chkall2.Checked = true; chkall3.Checked = true; 
            chk9.Checked = true; chk10.Checked = true; chk11.Checked = true; chk12.Checked = true;
            chk14.Checked = true; chk15.Checked = true; chk16.Checked = true; chk17.Checked = true; chk18.Checked = true; chk19.Checked = true; chk20.Checked = true; 
            BtnSubmit.Enabled = true;
        }
        if (chkall.Checked == false)
        {
            chkall0.Checked = false; chkall1.Checked = false; chkall2.Checked = false; chkall3.Checked = false; 
            chk9.Checked = false; chk10.Checked = false; chk11.Checked = false; chk12.Checked = false;
            chk14.Checked = false; chk15.Checked = false; chk16.Checked = false; chk17.Checked = false;
            BtnSubmit.Enabled = true; chk18.Checked = false; chk19.Checked = false; chk20.Checked = false; 
        }
    }
    protected void chkall0_CheckedChanged(object sender, EventArgs e)
    {
        if (chkall0.Checked == true)
        {
            chk9.Checked = true;
            chk14.Checked = true;
            chk18.Checked = true;
            BtnSubmit.Enabled = true;
        }
        if (chkall0.Checked == false)
        {
            chk9.Checked = false;
            chk14.Checked = false;
            chk18.Checked = false;
            chkall.Checked = false; BtnSubmit.Enabled = true;
        }

        if (chk9.Checked == true && chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true &&  chk18.Checked == true &&  chk19.Checked == true &&  chk20.Checked == true )
        {
            chkall.Checked = true; BtnSubmit.Enabled = true;
        }
    }
    protected void chkall1_CheckedChanged(object sender, EventArgs e)
    {
        if (chkall1.Checked == true)
        {
            chk10.Checked = true;
            chk15.Checked = true; chk19.Checked = true; BtnSubmit.Enabled = true;
        }
        if (chkall1.Checked == false)
        {
            chk10.Checked = false;
            chk15.Checked = false;
            chk19.Checked = false;
            chkall.Checked = false; BtnSubmit.Enabled = true;
        }
        if (chk9.Checked == true && chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
        {
            chkall.Checked = true; BtnSubmit.Enabled = true;
        }
    }
    protected void chkall2_CheckedChanged(object sender, EventArgs e)
    {
        if (chkall2.Checked == true)
        {
            chk11.Checked = true;
            chk16.Checked = true;
            chk20.Checked = true;
            BtnSubmit.Enabled = true;
        }
        if (chkall2.Checked == false)
        {
            chk11.Checked = false;
            chk16.Checked = false;
            chk20.Checked = false ;
            chkall.Checked = false; BtnSubmit.Enabled = true;
        }
        if (chk9.Checked == true && chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
        {
            chkall.Checked = true; BtnSubmit.Enabled = true;
        }
    }
    protected void chkall3_CheckedChanged(object sender, EventArgs e)
    {
        if (chkall3.Checked == true)
        {
            chk12.Checked = true;
            chk17.Checked = true; BtnSubmit.Enabled = true;
        }
        if (chkall3.Checked == false)
        {
            chk12.Checked = false;
            chk17.Checked = false;
            chkall.Checked = false; BtnSubmit.Enabled = true;
        }
        if (chk9.Checked == true && chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
        {
            chkall.Checked = true; BtnSubmit.Enabled = true;
        }
    }
    //protected void chkall4_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (chkall4.Checked == true)
    //    {
    //        chk13.Checked = true;
    //        chk18.Checked = true; BtnSubmit.Enabled = true;
    //    }
    //    if (chkall4.Checked == false)
    //    {
    //        chk13.Checked = false;
    //        chk18.Checked = false;
    //        chkall.Checked = false; BtnSubmit.Enabled = true;
    //    }
    //    if (chk9.Checked == true && chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk13.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true)
    //    {
    //        chkall.Checked = true; BtnSubmit.Enabled = true;
    //    }
    //}
    protected void chk9_CheckedChanged(object sender, EventArgs e)
    {
        if (chk9.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall0.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk9.Checked == false && chk14.Checked == false && chk18.Checked == false)
        {
            chkall.Checked = false; chkall0.Checked = false;
        }
    }
    protected void chk14_CheckedChanged(object sender, EventArgs e)
    {
        if (chk14.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall0.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk14.Checked == false && chk9.Checked == false && chk18.Checked == false)
        {
            chkall.Checked = false; chkall0.Checked = false;
        }
    }
    protected void chk10_CheckedChanged(object sender, EventArgs e)
    {
        if (chk10.Checked == true)
        {
            if (chk9.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall1.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk10.Checked == false && chk15.Checked == false && chk19.Checked ==false )
        {
            chkall.Checked = false; chkall1.Checked = false;
        }
    }
    protected void chk15_CheckedChanged(object sender, EventArgs e)
    {
        if (chk15.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk14.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall1.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk15.Checked == false && chk10.Checked == false && chk19.Checked == false)
        {
            chkall.Checked = false; chkall1.Checked = false;
        }
    }
    protected void chk11_CheckedChanged(object sender, EventArgs e)
    {
        if (chk11.Checked == true)
        {
            if (chk9.Checked == true && chk10.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall2.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk11.Checked == false && chk16.Checked == false && chk20.Checked ==false )
        {
            chkall.Checked = false; chkall2.Checked = false; chk20.Checked = false;
        }
    }
    protected void chk16_CheckedChanged(object sender, EventArgs e)
    {
        if (chk16.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk14.Checked == true && chk15.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall2.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk16.Checked == false && chk11.Checked == false && chk20.Checked == false)
        {
            chkall.Checked = false; chkall2.Checked = false; chk20.Checked = false; 
        }
    }
    protected void chk12_CheckedChanged(object sender, EventArgs e)
    {
        if (chk12.Checked == true)
        {
            if (chk9.Checked == true && chk11.Checked == true && chk10.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall3.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk12.Checked == false && chk17.Checked == false)
        {
            chkall.Checked = false; chkall3.Checked = false;
        }
    }
    protected void chk17_CheckedChanged(object sender, EventArgs e)
    {
        if (chk17.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall3.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk17.Checked == false && chk12.Checked == false)
        {
            chkall.Checked = false; chkall3.Checked = false;
        }
    }
    //protected void chk13_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (chk13.Checked == true)
    //    {
    //        if (chk9.Checked == true && chk11.Checked == true && chk10.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true)
    //        {
    //            chkall.Checked = true;
    //        }
    //        else
    //        {
    //            chkall.Checked = false;
    //        }
    //        chkall4.Checked = true;
    //    }
    //    else
    //    {
    //        chkall.Checked = false;
    //    }

    //    if (chk13.Checked == false && chk18.Checked == false)
    //    {
    //        chkall.Checked = false; chkall4.Checked = false;
    //    }
    //}
    //protected void chk18_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (chk18.Checked == true)
    //    {
    //        if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk13.Checked == true && chk9.Checked == true && chk14.Checked == true && chk15.Checked == true && chk17.Checked == true && chk16.Checked == true)
    //        {
    //            chkall.Checked = true;
    //        }
    //        else
    //        {
    //            chkall.Checked = false;
    //        }
    //        chkall4.Checked = true;
    //    }
    //    else
    //    {
    //        chkall.Checked = false;
    //    }

    //    if (chk18.Checked == false && chk13.Checked == false)
    //    {
    //        chkall.Checked = false; chkall4.Checked = false;
    //    }
    //}



    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        int i_ = 0;
        int iMax_ = 0;
        DateTime dt1 = new DateTime();

        //==============================================
        /* set value of checkbox */
        string Chkvalue0 = "";
        string Chkvalue1 = "";
        string Chkvalue2 = "";
        string Chkvalue3 = "";
        string Chkvalue4 = "";
        string Chkvalue5 = "";
        string Chkvalue6 = "";
        string Chkvalue7 = "";
        string Chkvalue8 = "";
        string Chkvalue9 = "";
        string Chkvalue10 = "";
        string Chkvalue11 = "";
        string Chkvalue12 = "";
        string Chkvalue13 = "";
        string Chkvalue14 = "";
        string Chkvalue15 = "";
        string Chkvalue16 = "";
        string Chkvalue17 = "";
        string Chkvalue18 = "";
        string Chkvalue19 = "";
        string Chkvalue20 = "";
        string ChkDt = "";
        int iSelect = 0;

        string Dt1;


        DataSet DsCatchExamDate = new DataSet();
        DsCatchExamDate = MySql.GetDataSetWithQuery("EXEC Sp_PreferredExamDate1");
        if (DsCatchExamDate.Tables[0].Rows.Count >= 0)
        {
            //for (int j = 0; j < DsCatchExamDate.Tables[0].Rows.Count; j++)
            //{
            for (i_ = 0; i_ < 5; i_++)
            {
                if (chkall0.Checked == true)
                {
                    if (chk9.Checked == true) { Chkvalue9 = "Y"; } else { Chkvalue9 = "N"; }
                    if (chk14.Checked == true) { Chkvalue14 = "Y"; } else { Chkvalue14 = "N"; }
                    if (chk18.Checked == true) { Chkvalue18 = "Y"; } else { Chkvalue18 = "N"; }
                    if (chk9.Checked == true || chk14.Checked == true || chk18.Checked == true) { ChkDt = "Y"; } else { ChkDt = "N"; }

                    /* INsert 1st row value */
                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "11");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();
                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification

                        string StrUPdate_tbCenterExamDate_1 = "Update dbo.tbCenterExamDateSlot  set Slot1='" + Chkvalue9 + "',Slot2='" + Chkvalue14 + "',Status='" + ChkDt + "',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_1);
                        iMax_ = 0; iSelect = 0;

                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_1 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','" + Chkvalue9 + "','" + Chkvalue14 + "','" + ChkDt + "' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_1);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                else
                {
                    //ChecK Duplicate Value //

                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "11");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_1 = "Update dbo.tbCenterExamDateSlot  set Slot1='N',Slot2='N',Status='N',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_1);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_1 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','N','N','N' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_1);
                        iMax_ = 0; iSelect = 0;
                    }
                }
                if (chkall1.Checked == true)
                {
                    if (chk10.Checked == true) { Chkvalue10 = "Y"; } else { Chkvalue10 = "N"; }
                    if (chk15.Checked == true) { Chkvalue15 = "Y"; } else { Chkvalue15 = "N"; }
                    if (chk19.Checked == true) { Chkvalue19 = "Y"; } else { Chkvalue19 = "N"; }
                    if (chk10.Checked == true || chk15.Checked == true || chk19.Checked == true) { ChkDt = "Y"; } else { ChkDt = "N"; }

                    /*INsret 2nd row value */
                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "12");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();
                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_2 = "Update dbo.tbCenterExamDateSlot  set Slot1='" + Chkvalue10 + "',Slot2='" + Chkvalue15 + "',Status='" + ChkDt + "',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_2);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_2 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','" + Chkvalue10 + "','" + Chkvalue15 + "','" + ChkDt + "' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_2);
                        iMax_ = 0; iSelect = 0;
                    }
                }
                else
                {
                    //ChecK Duplicate Value //

                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "12");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_2 = "Update dbo.tbCenterExamDateSlot  set Slot1='N',Slot2='N',Status='N',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_2);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_2 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','N','N','N' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_2);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                if (chkall2.Checked == true)
                {
                    if (chk11.Checked == true) { Chkvalue11 = "Y"; } else { Chkvalue11 = "N"; }
                    if (chk16.Checked == true) { Chkvalue16 = "Y"; } else { Chkvalue16 = "N"; }
                    if (chk20.Checked == true) { Chkvalue20 = "Y"; } else { Chkvalue20 = "N"; }
                    if (chk11.Checked == true || chk16.Checked == true || chk20.Checked == true) { ChkDt = "Y"; } else { ChkDt = "N"; }

                    /* INsret 3rd row value */
                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "13");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();
                    //ChecK Duplicate Value //
                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_3 = "Update dbo.tbCenterExamDateSlot  set Slot1='" + Chkvalue11 + "',Slot2='" + Chkvalue16 + "',Status='" + ChkDt + "',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_3);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_3 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','" + Chkvalue11 + "','" + Chkvalue16 + "','" + ChkDt + "' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_3);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                else
                {
                    //ChecK Duplicate Value //

                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "13");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_3 = "Update dbo.tbCenterExamDateSlot  set Slot1='N',Slot2='N',Status='N',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_3);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_3 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','N','N','N' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_3);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                if (chkall3.Checked == true)
                {
                    if (chk12.Checked == true) { Chkvalue12 = "Y"; } else { Chkvalue12 = "N"; }
                    if (chk17.Checked == true) { Chkvalue17 = "Y"; } else { Chkvalue17 = "N"; }
                    if (chk12.Checked == true || chk17.Checked == true) { ChkDt = "Y"; } else { ChkDt = "N"; }

                    /* INsret 4th row value */
                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "14");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();
                    //ChecK Duplicate Value //
                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_4 = "Update dbo.tbCenterExamDateSlot  set Slot1='" + Chkvalue12 + "',Slot2='" + Chkvalue17 + "',Status='" + ChkDt + "',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_4);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_4 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','" + Chkvalue12 + "','" + Chkvalue17 + "','" + ChkDt + "' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_4);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                else
                {
                    // ChecK Duplicate Value //

                    DateTime Dt_1 = Convert.ToDateTime("2016" + "/" + "11" + "/" + "14");
                    Dt1 = Dt_1.ToString();
                    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                    if (iSelect > 0)
                    {
                        //do nothing only modification
                        string StrUPdate_tbCenterExamDate_4 = "Update dbo.tbCenterExamDateSlot  set Slot1='N',Slot2='N',Status='N',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_4);
                        iMax_ = 0; iSelect = 0;
                    }
                    else
                    {
                        string StrInsertInto_tbCenterExamDate_4 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','N','N','N' ) ";
                        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_4);
                        iMax_ = 0; iSelect = 0;
                    }
                }

                //if (chkall4.Checked == true)
                //{
                //    if (chk13.Checked == true) { Chkvalue13 = "Y"; } else { Chkvalue13 = "N"; }
                //    if (chk18.Checked == true) { Chkvalue18 = "Y"; } else { Chkvalue18 = "N"; }
                //    if (chk13.Checked == true || chk18.Checked == true) { ChkDt = "Y"; } else { ChkDt = "N"; }

                //    /* INsret 5th row value */
                //    DateTime Dt_1 = Convert.ToDateTime("2014" + "/" + "09" + "/" + "29");
                //    Dt1 = Dt_1.ToString();
                //    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                //    //ChecK Duplicate Value //

                //    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                //    if (iSelect > 0)
                //    {
                //        //do nothing only modification
                //        string StrUPdate_tbCenterExamDate_5 = "Update dbo.tbCenterExamDateSlot  set Slot1='" + Chkvalue13 + "',Slot2='" + Chkvalue18 + "',Status='" + ChkDt + "',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                //        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_5);
                //        iMax_ = 0; iSelect = 0;
                //    }
                //    else
                //    {
                //        string StrInsertInto_tbCenterExamDate_5 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','" + Chkvalue13 + "','" + Chkvalue18 + "','" + ChkDt + "' ) ";
                //        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_5);
                //        iMax_ = 0; iSelect = 0;
                //    }

                //}
                //else
                //{
                //    //ChecK Duplicate Value //

                //    DateTime Dt_1 = Convert.ToDateTime("2014" + "/" + "09" + "/" + "29");
                //    Dt1 = Dt_1.ToString();
                //    Dt1 = Convert.ToDateTime(Dt1).ToString("dd-MMM-yyyy").ToString();

                //    iSelect = MySql.SingleCellResult("Select Count(*) from dbo.tbCenterExamDateSlot where CenterId=" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ");
                //    if (iSelect > 0)
                //    {
                //        //do nothing only modification
                //        string StrUPdate_tbCenterExamDate_5 = "Update dbo.tbCenterExamDateSlot  set Slot1='N',Slot2='N',Status='N',ModifyDate=getdate() where CenterId =" + drpdCenterCode.SelectedValue.ToString() + " and ExamDate='" + Dt1 + "' ";
                //        MySql.ExecuteNonQuery(StrUPdate_tbCenterExamDate_5);
                //        iMax_ = 0; iSelect = 0;
                //    }
                //    else
                //    {
                //        string StrInsertInto_tbCenterExamDate_5 = "Insert into dbo.tbCenterExamDateSlot (CenterId,ExamDate,Slot1,Slot2,Status) values (" + drpdCenterCode.SelectedValue.ToString() + ",'" + Dt1 + "','N','N','N' ) ";
                //        MySql.ExecuteNonQuery(StrInsertInto_tbCenterExamDate_5);
                //        iMax_ = 0; iSelect = 0;
                //    }
                //}
            }
            ClearControls();
            Label11.Visible = true;

            if (BtnSubmit.Text == "Submit")
            {
                Label11.Text = " Exam dates added successfully for the selected Center....";
            }
            else
            {
                Label11.Text = " Exam dates updated for the selected Center successfully....";
            }

            // }
        }


    }

    #region Clear Fields
    void ClearControls()
    {
        chkall.Checked = false;
        chkall0.Checked = false;
        chkall1.Checked = false;
        chkall2.Checked = false;
        chkall3.Checked = false;
        //chkall4.Checked = false;

        chk9.Checked = false;
        chk10.Checked = false;
        chk11.Checked = false;
        chk12.Checked = false;
        //chk13.Checked = false;
        chk14.Checked = false;
        chk15.Checked = false;
        chk16.Checked = false;
        chk17.Checked = false;
        //chk18.Checked = false;
        Label11.Visible = false;
        chk18.Checked = false;
        chk19.Checked = false;
        chk20.Checked = false;
    }
    #endregion

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClearControls();
        trrow1.Visible = false; Reset.Visible = false;
    }
    protected void chk20_CheckedChanged(object sender, EventArgs e)
    {
        if (chk20.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk14.Checked == true && chk15.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall2.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk16.Checked == false && chk11.Checked == false && chk20.Checked == false)
        {
            chkall.Checked = false; chkall2.Checked = false; chk20.Checked = false;
        }
    }
    protected void chk19_CheckedChanged(object sender, EventArgs e)
    {
        if (chk19.Checked == true)
        {
            if (chk9.Checked == true && chk11.Checked == true && chk12.Checked == true && chk14.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall1.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk10.Checked == false && chk15.Checked == false && chk19.Checked == false)
        {
            chkall.Checked = false; chkall1.Checked = false;
        }
    }
    protected void chk18_CheckedChanged(object sender, EventArgs e)
    {
        if (chk18.Checked == true)
        {
            if (chk10.Checked == true && chk11.Checked == true && chk12.Checked == true && chk9.Checked == true && chk15.Checked == true && chk16.Checked == true && chk17.Checked == true && chk18.Checked == true && chk19.Checked == true && chk20.Checked == true)
            {
                chkall.Checked = true;
            }
            else
            {
                chkall.Checked = false;
            }
            chkall0.Checked = true;
        }
        else
        {
            chkall.Checked = false;
        }

        if (chk14.Checked == false && chk9.Checked == false && chk18.Checked == false)
        {
            chkall.Checked = false; chkall0.Checked = false;
        }
    }
}