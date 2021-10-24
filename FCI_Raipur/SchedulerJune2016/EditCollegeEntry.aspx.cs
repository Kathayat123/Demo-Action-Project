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
using System.Security.Cryptography;
using System.Globalization;
using System.Threading;
using System.Net;
using CollegeEntry;

public partial class SchedulerSep2014_EditCollegeEntry : System.Web.UI.Page
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
            FillState();
            Prefered_FillCity();
            Region();
            FillCenterCode();
        }
    }

    #region FillState

    protected void FillState()
    {
        try
        {
            DataSet DsState = new DataSet();
            DsState = MySql.GetDataSetWithQuery("exec Sp_FillState");
            if (DsState.Tables[0].Rows.Count > 0)
            {
                drpdState.Items.Clear();
                drpdState.DataSource = DsState;
                drpdState.DataTextField = "StateName";
                drpdState.DataValueField = "StateId";
                drpdState.DataBind();
                drpdState.Items.Insert(0, new ListItem("--- S e l e c t ---", "0"));
            }

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }

    #endregion

    #region PreferedFillCity

    protected void Prefered_FillCity()
    {
        try
        {
            drpdCity.Items.Clear();
            DataSet DspCity = new DataSet();
            DspCity = MySql.GetDataSetWithQuery("exec Sp_FillPreferedCity");
            if (DspCity.Tables[0].Rows.Count > 0)
            {

                drpdCity.DataSource = DspCity;
                drpdCity.DataTextField = "CityName";
                drpdCity.DataValueField = "Id";
                drpdCity.DataBind();
                //drpdCity.Items.Insert(0, new ListItem("--- S e l e c t ---", "0"));
            }

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }

    

    #endregion  

    #region Region

    protected void Region()
    {
        try
        {
            drpdRegion.Items.Clear();
            DataSet DsRegion = new DataSet();
                       
            drpdRegion.Items.Insert(0, new ListItem("--- S e l e c t ---", "0"));
            drpdRegion.Items.Insert(1, new ListItem("East", "1"));
            drpdRegion.Items.Insert(2, new ListItem("West", "2"));
            drpdRegion.Items.Insert(3, new ListItem("North", "3"));
            drpdRegion.Items.Insert(4, new ListItem("South", "4"));

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }



    #endregion  

    #region Clearfileds()
    void Clearfields()
    {
        TxtNameofColellge.Text = string.Empty;
        TxtAddress.Text = string.Empty;
        drpdState.SelectedValue="0";
        drpdCity.SelectedIndex =-1;
        TxtPinCode.Text = string.Empty;
        drpdRegion.SelectedValue="0";
        TxtContactPersonName.Text = string.Empty;
        TxtContactNoofContactPerson.Text = string.Empty;
        TxtMobileNo.Text = string.Empty;
        TxtCenterCode.Text = string.Empty;
        TxtNoofMachine.Text = string.Empty;
        drpdCenterCode.SelectedValue = "0";
        txtadd1.Text = string.Empty;
        txtadd2.Text = string.Empty;
        txtadd3.Text = string.Empty;
        txtadd4.Text = string.Empty;
        txtadd5.Text = string.Empty;
        Chk6.Checked = false;
        Chk2.Checked = false;
        Chk3.Checked = false;
        Chk4.Checked = false;
        Chk5.Checked = false;
        RadioButtonList1.SelectedIndex = -1;
        Page.SetFocus(drpdCenterCode);


    }

    #endregion

    #region CatchCenterCode
    void FillCenterCode()
    {
        DataSet DsCenterCode = new DataSet();
        DsCenterCode = MySql.GetDataSetWithQuery("EXEC Sp_FillCenterCode");
        if (DsCenterCode.Tables[0].Rows.Count > 0)
        {
            drpdCenterCode.DataSource = DsCenterCode;
            drpdCenterCode.DataTextField = "CenterCode";
            drpdCenterCode.DataValueField = "CenterId";
            drpdCenterCode.DataBind();

        }
    }

    #endregion

    protected void Submit_Click(object sender, EventArgs e)
    {

        //Check Addtional Machine details

        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            if (Chk6.Checked == true)
            {
                if (txtadd1.Text == "")
                {
                    string scriptSTR = "<script language=javascript>alert('Please enter no. of machines for the " + Label2.Text.ToString() + " ');</script>";
                    if (!Page.IsStartupScriptRegistered("clientscript"))
                    {
                        Page.RegisterStartupScript("clientscript", scriptSTR);
                    }
                    return;
                }
            }


            if (Chk2.Checked == true)
            {
                if (txtadd2.Text == "")
                {
                    string scriptSTR = "<script language=javascript>alert('Please enter no. of machines for the " + Label3.Text.ToString() + " ');</script>";
                    if (!Page.IsStartupScriptRegistered("clientscript"))
                    {
                        Page.RegisterStartupScript("clientscript", scriptSTR);
                    }
                    return;
                }
            }


            if (Chk3.Checked == true)
            {
                if (txtadd3.Text == "")
                {
                    string scriptSTR = "<script language=javascript>alert('Please enter no. of machines for the " + Label4.Text.ToString() + " ');</script>";
                    if (!Page.IsStartupScriptRegistered("clientscript"))
                    {
                        Page.RegisterStartupScript("clientscript", scriptSTR);
                    }
                    return;
                }
            }


            if (Chk4.Checked == true)
            {
                if (txtadd4.Text == "")
                {
                    string scriptSTR = "<script language=javascript>alert('Please enter no. of machines for the " + Label5.Text.ToString() + " ');</script>";
                    if (!Page.IsStartupScriptRegistered("clientscript"))
                    {
                        Page.RegisterStartupScript("clientscript", scriptSTR);
                    }
                    return;
                }
            }


            if (Chk5.Checked == true)
            {
                if (txtadd5.Text == "")
                {
                    string scriptSTR = "<script language=javascript>alert('Please enter no. of machines for the " + Label6.Text.ToString() + " ');</script>";
                    if (!Page.IsStartupScriptRegistered("clientscript"))
                    {
                        Page.RegisterStartupScript("clientscript", scriptSTR);
                    }
                    return;
                }
            }

            if (Chk6.Checked == false && Chk2.Checked == false && Chk3.Checked == false && Chk4.Checked == false && Chk5.Checked == false)
            {
                string scriptSTR = "<script language=javascript>alert('Please enter additional no. of machines on any date');</script>";
                if (!Page.IsStartupScriptRegistered("clientscript"))
                {
                    Page.RegisterStartupScript("clientscript", scriptSTR);
                }
                return;
            }

        }

        CrateCollegeEntry objEntryNewcollege = new CrateCollegeEntry();
        DataCollegeEntry ObjDataAccess = new DataCollegeEntry();

        objEntryNewcollege.CollegName = TxtNameofColellge.Text.Replace("'","''").ToString().Trim();
        objEntryNewcollege.Address= TxtAddress.Text.ToString().Trim();
        objEntryNewcollege.City = Convert.ToInt32(drpdCity.SelectedItem.Value);
        objEntryNewcollege.State  = Convert.ToInt32(drpdState.SelectedItem.Value);
        objEntryNewcollege.Pincode = Convert.ToInt32(TxtPinCode.Text);
        objEntryNewcollege.Region = drpdRegion.SelectedItem.Value.ToString();
        objEntryNewcollege.Cperson = TxtContactPersonName.Text.Replace("'", "''").ToString().Trim();
        objEntryNewcollege.ContactpersonNo = TxtContactNoofContactPerson.Text.ToString().Trim();
        objEntryNewcollege.MobileNo = TxtMobileNo.Text.ToString();
        //objEntryNewcollege.CenterCode = TxtCenterCode.Text.ToString().Trim();
        objEntryNewcollege.CenterId = Convert.ToInt32(drpdCenterCode.SelectedValue.ToString());
        objEntryNewcollege.NoofMachines =  Convert.ToInt32(TxtNoofMachine.Text);

        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            objEntryNewcollege.AnyAdditional = "Yes";
        }
        else
        {
            objEntryNewcollege.AnyAdditional = "No";
        }

        if (Chk6.Checked == true)
        {
            objEntryNewcollege.NoofAdditionalMC1 = Convert.ToInt32(txtadd1.Text);
        }
        else
        {
            objEntryNewcollege.NoofAdditionalMC1 = 0;
        }

        if (Chk2.Checked == true)
        {
            objEntryNewcollege.NoofAdditionalMC2 = Convert.ToInt32(txtadd2.Text);
        }
        else
        {
            objEntryNewcollege.NoofAdditionalMC2 = 0;
        }

        if (Chk3.Checked == true)
        {
            objEntryNewcollege.NoofAdditionalMC3 = Convert.ToInt32(txtadd3.Text);
        }
        else
        {
            objEntryNewcollege.NoofAdditionalMC3 = 0;
        }

        if (Chk4.Checked == true)
        {
            objEntryNewcollege.NoofAdditionalMC4 = Convert.ToInt32(txtadd4.Text);
        }
        else
        {
            objEntryNewcollege.NoofAdditionalMC4 = 0;
        }

        if (Chk5.Checked == true)
        {
            objEntryNewcollege.NoofAdditionalMC5 = Convert.ToInt32(txtadd5.Text);
        }
        else
        {
            objEntryNewcollege.NoofAdditionalMC5 = 0;
        }

        bool Result;
        Result = ObjDataAccess.Update_CollegeEntry(objEntryNewcollege);
        if(Result==true)
        {
            //Response.Write("Hello Bipin");
            Clearfields();
            Label1.Visible = true;
            Label1.Text = "Record Updated Successfully....";
        }
        
        
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        Clearfields();
    }


    protected void drpdCenterCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ableeditcollege.Visible = true;       
        Hide_Unhide(drpdCenterCode.SelectedItem.Value);
    }

    #region Hide N Unhide
    void Hide_Unhide(string Value)
    {
        if (Value == "0")
        {
            trrow1.Visible = false; trrow2.Visible = false; trrow3.Visible = false; trrow4.Visible = false; trrow5.Visible = false;
            trrow6.Visible = false; trrow7.Visible = false; trrow8.Visible = false; trrow9.Visible = false; trrow10.Visible = false;
            trrow11.Visible = false; trrow12.Visible = false; trrow13.Visible = false; trrow14.Visible = false; trrow140.Visible = false; trrow141.Visible = false; trrow15.Visible = false;
            trrow16.Visible = false; trrow17.Visible = false; trrow18.Visible = false; trrow19.Visible = false; trrow20.Visible = false;
            trrow21.Visible = false; trrow23.Visible = false; trrow24.Visible = false;
            falseRow.Visible = true;
        }
        else
        {
            falseRow.Visible = false;
            trrow1.Visible = true; trrow2.Visible = true; trrow3.Visible = true; trrow4.Visible = true; trrow5.Visible = true;
            trrow6.Visible = true; trrow7.Visible = true; trrow8.Visible = true; trrow9.Visible = true; trrow10.Visible = true;
            trrow11.Visible = true; trrow12.Visible = true; trrow13.Visible = true; trrow14.Visible = true; trrow140.Visible = true; trrow141.Visible = true; trrow15.Visible = true;
            trrow16.Visible = true; trrow17.Visible = true; trrow18.Visible = true; trrow19.Visible = true; trrow20.Visible = true;
            trrow21.Visible = true; trrow23.Visible = true; trrow24.Visible = true; trrow91.Visible = true;
            tradditional.Visible = true;
            Label2.Text = "11 Nov 2016"; Label3.Text = "12 Nov 2016"; Label4.Text = "13 Nov 2016";
            Label5.Text = "14 Nov 2016";// Label6.Text = "24 Feb 2014";
            SetValue(Value);
        }
    }
    #endregion

    #region SetValue
    void SetValue(string CenterCode)
    {
        if (CenterCode == "0")
        {
            trrow1.Visible = false; trrow2.Visible = false; trrow3.Visible = false; trrow4.Visible = false; trrow5.Visible = false;
            trrow6.Visible = false; trrow7.Visible = false; trrow8.Visible = false; trrow9.Visible = false; trrow10.Visible = false;
            trrow11.Visible = false; trrow12.Visible = false; trrow13.Visible = false; trrow14.Visible = false; trrow140.Visible = false; trrow141.Visible = false; trrow15.Visible = false;
            trrow16.Visible = false; trrow17.Visible = false; trrow18.Visible = false; trrow19.Visible = false; trrow20.Visible = false;
            trrow21.Visible = false; trrow23.Visible = false; trrow24.Visible = false; trrow91.Visible = false;
        }
        else
        {
            DataSet DsGetdata=MySql.GetDataSetWithQuery("EXEC SP_GetCollegeData  '" +  CenterCode + "'  ");
            if (DsGetdata.Tables[0].Rows.Count > 0)
            {
                TxtNameofColellge.Text = DsGetdata.Tables[0].Rows[0]["CollegeName"].ToString();
                TxtAddress.Text = DsGetdata.Tables[0].Rows[0]["Address"].ToString();
                drpdState.SelectedValue = DsGetdata.Tables[0].Rows[0]["State"].ToString();
                drpdCity.SelectedValue = DsGetdata.Tables[0].Rows[0]["City"].ToString();
                TxtPinCode.Text = DsGetdata.Tables[0].Rows[0]["Pincode"].ToString();
                drpdRegion.SelectedValue = DsGetdata.Tables[0].Rows[0]["Religion"].ToString();
                TxtContactPersonName.Text = DsGetdata.Tables[0].Rows[0]["ContactPersonName"].ToString();
                TxtContactNoofContactPerson.Text = DsGetdata.Tables[0].Rows[0]["MoblieNo"].ToString();
                TxtMobileNo.Text = DsGetdata.Tables[0].Rows[0]["MobileNo1"].ToString();
                TxtCenterCode.ReadOnly = true;
                TxtCenterCode.Text = DsGetdata.Tables[0].Rows[0]["CenterCode"].ToString();
                TxtNoofMachine.Text = DsGetdata.Tables[0].Rows[0]["MachineNo"].ToString();

                string AnyAdditional = DsGetdata.Tables[0].Rows[0]["AnyAddtional"].ToString();
                if (AnyAdditional == "Yes")
                {
                    RadioButtonList1.SelectedIndex = 0;
                    tradditional.Visible = true;
                    int Add1, Add2, Add3, Add4, Add5 = 0;
                    Add1 = Convert.ToInt32(DsGetdata.Tables[0].Rows[0]["AddMachine1"]);
                    Add2 = Convert.ToInt32(DsGetdata.Tables[0].Rows[0]["AddMachine2"]);
                    Add3 = Convert.ToInt32(DsGetdata.Tables[0].Rows[0]["AddMachine3"]);
                    Add4 = Convert.ToInt32(DsGetdata.Tables[0].Rows[0]["AddMachine4"]);
                    Add5 = Convert.ToInt32(DsGetdata.Tables[0].Rows[0]["AddMachine5"]);
                    if (Add1 > 0)
                    {
                        Chk6.Checked = true; txtadd1.Text = Add1.ToString();
                    }
                    if (Add2 > 0)
                    {
                        Chk2.Checked = true; txtadd2.Text = Add2.ToString();
                    }
                    if (Add3 > 0)
                    {
                        Chk3.Checked = true; txtadd3.Text = Add3.ToString();
                    }
                    if (Add4 > 0)
                    {
                        Chk4.Checked = true; txtadd4.Text = Add4.ToString();
                    }
                    if (Add5 > 0)
                    {
                        Chk5.Checked = true; txtadd5.Text = Add5.ToString();
                    }
                }
                else
                {
                    RadioButtonList1.SelectedIndex = 1;
                    tradditional.Visible = false;
                }


            }
        }
    }
    #endregion

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            tradditional.Visible = true;
            Label2.Text = "11 Nov 2016"; Label3.Text = "12 Nov 2016"; Label4.Text = "13 Nov 2016";
            Label5.Text = "14 Nov 2016"; //Label6.Text = "29 Sep 2014";
        }
        else
        {
            tradditional.Visible = false; txtadd1.Text = string.Empty; txtadd2.Text = string.Empty;
            txtadd3.Text = string.Empty; txtadd4.Text = string.Empty; txtadd5.Text = string.Empty;
        }
    }
    protected void Chk6_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk6.Checked == true) { txtadd1.Enabled = true; } else { txtadd1.Enabled = false; txtadd1.Text = ""; }
    }
    protected void Chk2_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk2.Checked == true) { txtadd2.Enabled = true; } else { txtadd2.Enabled = false; txtadd2.Text = ""; }
    }

    protected void Chk3_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk3.Checked == true) { txtadd3.Enabled = true; } else { txtadd3.Enabled = false; txtadd3.Text = ""; }
    }
    protected void Chk4_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk4.Checked == true) { txtadd4.Enabled = true; } else { txtadd4.Enabled = false; txtadd4.Text = ""; }
    }
    protected void Chk5_CheckedChanged(object sender, EventArgs e)
    {
        if (Chk5.Checked == true) { txtadd5.Enabled = true; } else { txtadd5.Enabled = false; txtadd5.Text = ""; }
    }
}