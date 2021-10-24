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

public partial class SchedulerSep2014_CollegeEntry : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Collegeadmin"] = "Bipin";
        /* */
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
        drpdCity.SelectedIndex  =-1;
        TxtPinCode.Text = string.Empty;
        drpdRegion.SelectedValue="0";
        TxtContactPersonName.Text = string.Empty;
        TxtContactNoofContactPerson.Text = string.Empty;
        TxtMobileNo.Text = string.Empty;
        TxtCenterCode.Text = string.Empty;
        TxtNoofMachine.Text = string.Empty;
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
        Page.SetFocus(TxtNameofColellge);


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
                //messageBox("Please enter additional no. of machines on any date");
                //return;
            }
            
        }

        CrateCollegeEntry objEntryNewcollege = new CrateCollegeEntry();
        DataCollegeEntry ObjDataAccess = new DataCollegeEntry();

        objEntryNewcollege.CollegName = TxtNameofColellge.Text.Replace("'", "''").ToString().Trim();
        objEntryNewcollege.Address = TxtAddress.Text.ToString().Trim();
        objEntryNewcollege.City = Convert.ToInt32(drpdCity.SelectedItem.Value);
        objEntryNewcollege.State = Convert.ToInt32(drpdState.SelectedItem.Value);
        objEntryNewcollege.Pincode = Convert.ToInt32(TxtPinCode.Text);
        objEntryNewcollege.Region = drpdRegion.SelectedItem.Value.ToString();
        objEntryNewcollege.Cperson = TxtContactPersonName.Text.Replace("'", "''").ToString().Trim();
        objEntryNewcollege.ContactpersonNo = TxtContactNoofContactPerson.Text.ToString().Trim();
        objEntryNewcollege.MobileNo = TxtMobileNo.Text.ToString().Trim();
        objEntryNewcollege.CenterCode = TxtCenterCode.Text.Replace("'", "''").ToString().Trim();
        objEntryNewcollege.NoofMachines = Convert.ToInt32(TxtNoofMachine.Text);

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

        string Result;
        Result = ObjDataAccess.Insert_CollegeEntry(objEntryNewcollege);
        if (Result == "1")
        {
            //Response.Write("Hello Bipin");
            Clearfields(); Label1.Visible = true;
            Label1.Text = "Record Inserted Successfully...";
        }
        if (Result == "0")
        {
            //Response.Write("Hello Bipin");
            TxtCenterCode.Text = string.Empty; Label1.Visible = true;
            Label1.Text = "Duplicate Center Code is not allowed...";
        }
        
        
        
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        Clearfields();
    }


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            tradditional.Visible = true;
            Label2.Text = "11 Nov 2016"; Label3.Text = "12 Nov 2016"; Label4.Text = "13 Nov 2016";
            Label5.Text = "14 Nov 2016"; Label6.Text = "29 Sep 2014";
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

    #region Message
    public void messageBox(string msg)
    {
        Label dd = new Label();
        dd.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "');</script>";
        Page.Controls.Add(dd);
    }

    #endregion
}