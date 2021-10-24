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

public partial class Admin_ManualUpdation : System.Web.UI.Page
{
    ResourceManager rm;
    CultureInfo ci;
    int Total = 0;
    string strLocalpathfor_Profile = string.Empty;
    string strlocalpathfor_docs = string.Empty;

    string filepath1;
    string lstrFullPath1 = string.Empty;

    string filepath2;
    string lstrFullPath2 = string.Empty;
    string UpdateImagepaths = string.Empty;

    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {

        Thread.CurrentThread.CurrentCulture = new CultureInfo("mr-IN");
        rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
        ci = Thread.CurrentThread.CurrentCulture;
        LoadString(ci);

        if (Session["AdminId"] == null)
        {
            Session.Abandon();
            Response.Redirect("Signout.aspx");
        }
        else { tablepersonaldetails.Visible = false; }

        if(!IsPostBack)
        {
            tablepersonaldetails.Visible = false;
            //btnupdate.Enabled = false;
            SearchBy(); FillGrade(); DocType();
        }      
        if (drpdsearchBy.SelectedItem.Value == "1") { lblSearchBy.Text = "Enter EMail ID"; }
        else if (drpdsearchBy.SelectedItem.Value == "2") { lblSearchBy.Text = "Enter Mobile No."; }     
        
    }


    #region SearchBy

    void SearchBy()
    {
        drpdsearchBy.Items.Clear();
        drpdsearchBy.Items.Insert(0, new ListItem("Select One Type", "0"));       
        drpdsearchBy.Items.Insert(1, new ListItem("Email Id", "1"));
        drpdsearchBy.Items.Insert(2, new ListItem("Mobile No", "2"));
        drpdsearchBy.DataBind();
    }

    void DocType()
    {
        drpddoctype.Items.Clear();
        drpddoctype.Items.Insert(0, new ListItem("Select Certificate Type", "0"));
        drpddoctype.Items.Insert(1, new ListItem("Photo", "1"));
        drpddoctype.Items.Insert(2, new ListItem("Signature", "2"));
        drpddoctype.Items.Insert(3, new ListItem("Cast Certificate", "3"));
        drpddoctype.Items.Insert(4, new ListItem("Cast Validity Certificate", "4"));
        drpddoctype.Items.Insert(5, new ListItem("PH-Certificate", "5"));
        drpddoctype.Items.Insert(6, new ListItem("MSB-PAP Certificate", "6"));
        drpddoctype.Items.Insert(7, new ListItem("PAP Certificate", "7"));
        drpddoctype.Items.Insert(8, new ListItem("Earth Quake Certificate", "8"));
        drpddoctype.Items.Insert(9, new ListItem("Army Certificate", "9"));
        drpddoctype.Items.Insert(10, new ListItem("Emp registration Certificate", "10"));
        drpddoctype.Items.Insert(11, new ListItem("Marathi Certificate", "11"));
        drpddoctype.Items.Insert(12, new ListItem("Domicile Certificate", "12"));
        drpddoctype.Items.Insert(13, new ListItem("NCL-Certificate", "13"));
        drpddoctype.Items.Insert(14, new ListItem("Sport-Certificate", "14"));

        drpddoctype.Items.Insert(15, new ListItem("School Leaving Certificate", "15"));
        drpddoctype.Items.Insert(16, new ListItem("SSC Certificate", "16"));
        drpddoctype.Items.Insert(17, new ListItem("ITI Certificate", "17"));
        drpddoctype.Items.Insert(18, new ListItem("National Trade Certificate", "18"));


        drpddoctype.DataBind();
    }

    #endregion

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        DataSet Ds = new DataSet();

        Ds = Mysql.GetDataSetWithQuery("Exec Sp_GetCandidateDetails_ForUpdation  '" + drpdsearchBy.SelectedItem.Value.ToString().Trim() + "','" + txtpostaladdressline1.Value.ToString() + "'  ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            tablepersonaldetails.Visible = true;
            trfname.Visible = true;  trmobile.Visible = true; trgender.Visible = true; trbtn.Visible = true;
            txtapplicantfname.Value = Ds.Tables[0].Rows[0]["CandidateName"].ToString();
            txtmobileno.Value = Ds.Tables[0].Rows[0]["Mobile"].ToString();
            if (Ds.Tables[0].Rows[0]["Sex"].ToString() == "1") { rdosex_0.Checked = true; } else { rdosex_1.Checked = true; }
        }
        else
        {
            tablepersonaldetails.Visible = false;
            trfname.Visible = false;  trmobile.Visible = false; trgender.Visible = false; trbtn.Visible = false;
        }
    }
    protected void chkagree_CheckedChanged(object sender, EventArgs e)
    {
        //if (chkagree.Checked == true)
        //{ btnupdate.Enabled = true; }
        //else { btnupdate.Enabled = false; }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
            //Fill Data and Modify Some Details
            DataSet Ds = new DataSet();
            Ds = Mysql.GetDataSetWithQuery("Exec Sp_GetEducational_ToUpdate  '" + txtRegnoorUserid.Value.ToString().Trim() + "' ");
            if (Ds.Tables[0].Rows.Count > 0)
            {
                txtboardnuniversity1.Value = Ds.Tables[0].Rows[0]["Board1"].ToString();
                txtsubject1.Value = Ds.Tables[0].Rows[0]["Subject1"].ToString();
                txtyearofpassing1.Value = Ds.Tables[0].Rows[0]["Year1"].ToString();
                txttotalmark1.Value = Ds.Tables[0].Rows[0]["TotalMark1"].ToString();
                txtpmark1.Value = Ds.Tables[0].Rows[0]["PercentageofMark1"].ToString();
                drpdClassngrade1.SelectedIndex = Convert.ToInt32(Ds.Tables[0].Rows[0]["Grade1"].ToString());

                txtboardnuniversity2.Value = Ds.Tables[0].Rows[0]["Board2"].ToString();
                txtsubject2.Value = Ds.Tables[0].Rows[0]["Subject2"].ToString();
                txtyearofpassing2.Value = Ds.Tables[0].Rows[0]["Year2"].ToString();
                txttotalmark2.Value = Ds.Tables[0].Rows[0]["TotalMark2"].ToString();
                txtpmark2.Value = Ds.Tables[0].Rows[0]["PercentageofMark2"].ToString();
                drpdClassngrade2.SelectedIndex = Convert.ToInt32(Ds.Tables[0].Rows[0]["Grade2"].ToString());

            }
            else
            {
                lblCMessage.Text = "No Data Found , May be User-Id / Reg. No is not valid";
                return;
            }
       
    }

    #region AutoFill

    protected void FillGrade()
    {
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_GetGrade ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            drpdClassngrade1.Items.Clear(); drpdClassngrade2.Items.Clear(); 
            drpdClassngrade1.DataSource = Ds;
            drpdClassngrade1.DataTextField = "ClassorGradeName";
            drpdClassngrade1.DataValueField = "Id";
            drpdClassngrade1.DataBind();

            drpdClassngrade2.DataSource = Ds;
            drpdClassngrade2.DataTextField = "ClassorGradeName";
            drpdClassngrade2.DataValueField = "Id";
            drpdClassngrade2.DataBind();            

            drpdClassngrade1.Items.Insert(0, new ListItem("Select", "0"));
            drpdClassngrade2.Items.Insert(0, new ListItem("Select", "0"));
           
        }
    }

    #endregion


    private void LoadString(CultureInfo ci)
    {
        #region Homepage

        lblsrno.Text = rm.GetString("srno", ci);
        lblqualification.Text = rm.GetString("qualification", ci);
        lblboardnuniversity.Text = rm.GetString("boardnun", ci);

        lblsubjects.Text = rm.GetString("subjectnstream", ci);
        lblyearofpassing.Text = rm.GetString("yearofpassing", ci);
        lblTmarks.Text = rm.GetString("totalmarks", ci);
        lblPmarks.Text = rm.GetString("pmarks", ci);
        lblcngrade.Text = rm.GetString("classngrade", ci);

        lblqualification1.Text = rm.GetString("qualification1", ci);
        lblqualification2.Text = rm.GetString("qualification2", ci);        
        



        #endregion

    }

    protected void btnuploaddoc_Click(object sender, EventArgs e)
    {
        strlocalpathfor_docs= "D:/websites/MahatranscoM02/Documents/Certificates/";
        strLocalpathfor_Profile = "D:/websites/MahatranscoM02/Documents/Profile/";

        if (drpddoctype.SelectedItem.Text == "Photo")
        {
            #region Applicant's Photo

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";

                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 71200)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Applicant's Photo size should be 50KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = strLocalpathfor_Profile + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "P" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "P" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Applicant's Photo should be in .jpeg/jpg format only";
                    return;
                }
            }

            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Signature")
        {
            #region Applicant's Signature

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";

                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 51200)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Applicant's Signature size should be 20KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = strLocalpathfor_Profile + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "S" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "S" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Applicant's Signature should be in .jpeg/jpg format only";
                    return;
                }
            }

            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Cast Certificate")
        {
            #region Cast Certificates


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
                {
                    string NameChange = "";
                    string Imagepath = string.Empty;
                    string[] ImageName;
                    string ImageExtension = string.Empty;
                    string Itype = "";
                    NameChange = docuploader.PostedFile.FileName.ToString();
                    Imagepath = NameChange;
                    ImageName = Imagepath.Split('.');
                    ImageExtension = ImageName[1];
                    Itype = ImageCase(ImageExtension).ToString();

                    if (Itype == "1" || Itype == "2")
                    {
                        if (docuploader.PostedFile.ContentLength > 512000)
                        {
                            lblCMessage.Text = "Oops ! Error occured while uploading, School Certificate size should be 500KB";
                            return;
                        }
                        else
                        {
                            //lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + Session["canid"].ToString();
                            lstrFullPath1 = strlocalpathfor_docs + txtRegnoorUseridfordoc.Value.ToString().Trim();
                            filepath1 = "";

                            if (!Directory.Exists(lstrFullPath1))
                            {
                                Directory.CreateDirectory(lstrFullPath1);
                                filepath1 = lstrFullPath1 + '/' + "CastCertificate" + '.' + ImageExtension;
                                docuploader.SaveAs(filepath1);
                            }
                            else
                            {
                                filepath1 = lstrFullPath1 + '/' + "CastCertificate" + '.' + ImageExtension;
                                docuploader.SaveAs(filepath1);
                            }
                        }
                    }
                    else
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Cast Certificate should be in .jpeg/jpg format only";
                        return;
                    }
                }
           

            #endregion
        }
        else if (drpddoctype.SelectedItem.Text == "Cast Validity Certificate")
        {
            #region Cast Validity Certificates


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
                {
                    string NameChange = "";
                    string Imagepath = string.Empty;
                    string[] ImageName;
                    string ImageExtension = string.Empty;
                    string Itype = "";
                    NameChange = docuploader.PostedFile.FileName.ToString();
                    Imagepath = NameChange;
                    ImageName = Imagepath.Split('.');
                    ImageExtension = ImageName[1];
                    Itype = ImageCase(ImageExtension).ToString();

                    if (Itype == "1" || Itype == "2")
                    {
                        if (docuploader.PostedFile.ContentLength > 512000)
                        {
                            lblCMessage.Text = "Oops ! Error occured while uploading, Cast Validity Certificate size should be 500KB";
                            return;
                        }
                        else
                        {
                            lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                            filepath1 = "";

                            if (!Directory.Exists(lstrFullPath1))
                            {
                                Directory.CreateDirectory(lstrFullPath1);
                                filepath1 = lstrFullPath1 + '/' + "CastValidity" + '.' + ImageExtension;
                                docuploader.SaveAs(filepath1);
                            }
                            else
                            {
                                filepath1 = lstrFullPath1 + '/' + "CastValidity" + '.' + ImageExtension;
                                docuploader.SaveAs(filepath1);
                            }
                        }
                    }
                    else
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Cast Validity Certificate should be in .jpeg/jpg format only";
                        return;
                    }
                }
            


            #endregion
        }
        else if (drpddoctype.SelectedItem.Text == "PH-Certificate")
        {
            #region PH-Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Physical Disability Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "PWD" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "PWD" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Physical Disability Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "MSB-PAP Certificate")
        {
            #region MSB-PAP Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, PAP of MahatransCo Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "MHPAP" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "MHPAP" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, PAP of MahatransCo Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "PAP Certificate")
        {
            #region PAP Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, PAP Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "PAP" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "PAP" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, PAP Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Earth Quake Certificate")
        {
            #region Earth Quake Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Earth Quake Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "Equake" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "Equake" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Earth Quake Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Army Certificate")
        {
            #region Army Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Soldier Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "soldier" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "soldier" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Soldier Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Emp registration Certificate")
        {
            #region Emp registration Certificate


            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Employment registration Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "DistEmpReg" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "DistEmpReg" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Employment registration Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Marathi Certificate")
        {
            #region Marathi Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Marathi Knowledge Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "Marathi" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "Marathi" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Marathi Knowledge Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }
        else if (drpddoctype.SelectedItem.Text == "Domicile Certificate")
        {
            #region Domicile Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Domicile Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "Domicile" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "Domicile" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Domicile Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }
        else if (drpddoctype.SelectedItem.Text == "NCL-Certificate")
        {
            #region NCL-Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Non Creamy Layer Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "NCL" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "NCL" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Non Creamy Layer Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "Sport-Certificate")
        {
            #region Sport-Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, Sports Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "Sports" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "Sports" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Sports Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "School Leaving Certificate")
        {
            #region School Leaving Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, School Leaving Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "SSCLeaving" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "SSCLeaving" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, School Leaving Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "SSC Certificate")
        {
            #region SSC Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, School Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "SSCCertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "SSCCertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, School Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }
        else if (drpddoctype.SelectedItem.Text == "ITI Certificate")
        {
            #region ITI Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, ITI Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "ITICertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "ITICertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, ITI Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }

        else if (drpddoctype.SelectedItem.Text == "National Trade Certificate")
        {
            #region National Trade Certificate

            if (docuploader.FileName != "" && docuploader.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = docuploader.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (docuploader.PostedFile.ContentLength > 512000)
                    {
                        lblCMessage.Text = "Oops ! Error occured while uploading, ITI Trade Certificate size should be 500KB";
                        return;
                    }
                    else
                    {
                        lstrFullPath1 = "D:/websites/MahatranscoM02/Documents/Certificates/" + txtRegnoorUseridfordoc.Value.ToString().Trim();
                        filepath1 = "";

                        if (!Directory.Exists(lstrFullPath1))
                        {
                            Directory.CreateDirectory(lstrFullPath1);
                            filepath1 = lstrFullPath1 + '/' + "TradeCertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                        else
                        {
                            filepath1 = lstrFullPath1 + '/' + "TradeCertificate" + '.' + ImageExtension;
                            docuploader.SaveAs(filepath1);
                        }
                    }
                }
                else
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, ITI Trade Certificate should be in .jpeg/jpg format only";
                    return;
                }
            }



            #endregion
        }
        else { }

       //No need to Update on DB if it is intially uploaded
       //else { ??? }
       
 
    }

    protected void btncheckuser_Click(object sender, EventArgs e)
    {
        DataSet Ds = new DataSet();

        Ds = Mysql.GetDataSetWithQuery("Exec Sp_checkValiduserornot  '" + txtRegnoorUseridfordoc.Value.ToString().Trim() + "'  ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            drpddoctype.Enabled = true; docuploader.Enabled = true; btnuploaddoc.Enabled = true;
        }
        else
        {
            drpddoctype.Enabled = false; docuploader.Enabled = false; btnuploaddoc.Enabled = false;
        }
    }


    #region ImageFormatchecker
    protected int ImageCase(string Format)
    {
        int ImageType = 0;
        if (Format == "jpg") { ImageType = 1; }
        else if (Format == "JPG") { ImageType = 1; }
        else if (Format == "Jpg") { ImageType = 1; }
        else if (Format == "JPg") { ImageType = 1; }
        else if (Format == "jPG") { ImageType = 1; }
        else if (Format == "jpg") { ImageType = 1; }

        else if (Format == "jpeg") { ImageType = 2; }
        else if (Format == "JPEG") { ImageType = 2; }
        else if (Format == "Jpeg") { ImageType = 2; }
        else if (Format == "JPeg") { ImageType = 2; }
        else if (Format == "jPeG") { ImageType = 2; }
        return ImageType;

    }
    #endregion

    protected void btncheckorderno_Click(object sender, EventArgs e)
    {
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_checkOrderNo  '" + txtorderno.Value.ToString().Trim() + "'  ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            btnmakepaymentsuccess.Enabled = true;
            lblcandidatename.Text = Ds.Tables[0].Rows[0]["Name"].ToString();
            string status=Ds.Tables[0].Rows[0]["trans_code"].ToString();
            if (status == "0")
            {
                lblpaymentstatus.Text = "Success";
            }
            else { lblpaymentstatus.Text = "Not Success"; }
        }
        else
        {
            lblpaymentstaus.Text = "Invalid Order No.";
            btnmakepaymentsuccess.Enabled = false;
        }
    }

    protected void btnmakepaymentsuccess_Click(object sender, EventArgs e)
    {
        DataSet Ds = new DataSet();
        Ds = Mysql.GetDataSetWithQuery("Exec Sp_checkOrderNowithParticipant  '" + txtorderno.Value.ToString().Trim() + "'  ");
        if (Ds.Tables[0].Rows.Count > 0)
        {
            if(Ds.Tables[0].Rows[0]["Result"]=="1")
            {
                lblpaymentstaus.Text = "!! Order Updated Successfully !!"; return;
            }
            if(Ds.Tables[0].Rows[0]["Result"]=="0")
            {
                lblpaymentstaus.Text = "!! One order has been already success, we are unable to process this Order-no is  !!"; return;
            }
        }
        else
        {
            lblpaymentstaus.Text = "Invalid Order No.";
            btnmakepaymentsuccess.Enabled = false;
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        tablepersonaldetails.Visible = false;
    }
}