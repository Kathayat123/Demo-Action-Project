using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using System.Web.Mail;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Net;
using Common.Class;

public partial class Candidate_UploadDocuments : ClsErrorLog
{
    string lstrFullPath1 = string.Empty;
    string CID = string.Empty;
    string filepath1 = "";
    string filepath2 = "";
    string fileCateCert = "";
    string fileExserviceman = "";
    string PWDCert = "";
    string DOBCertPath = "";

    CommonPerception Mysql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["Modify"] = "Yes";
        //Session["canid"] = "300036";
        RegistrationClosed();
        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("~/Home/ListofExam.aspx");
        }

        CID = Convert.ToString(Session["canid"]);
        //  CID = "300012";
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = Mysql.GetDataSetWithQuery("select Category, IsExserviceman, IsPH from tbabmCandidateInfo where canid='" + CID + "'");
            if (ds.Tables[0].Rows[0]["Category"].ToString() != "1")
            {
                divCat.Visible = true;
            }
            else
            {
                divCat.Visible = false;
            }
            if (ds.Tables[0].Rows[0]["IsExserviceman"].ToString() == "1")
            {
                divex.Visible = true;
            }
            else
            {
                divex.Visible = false;
            }
            if (ds.Tables[0].Rows[0]["IsPH"].ToString() == "1")
            {
                divpwd.Visible = true;
            }
            else
            {
                divpwd.Visible = false;
            }

        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (isvalidate())
            {

                lstrFullPath1 = System.Configuration.ConfigurationManager.AppSettings["Photosavepath"];
                filepath1 = "";
                DOBCertPath = null;
                fileCateCert = null;
                fileExserviceman = null;
                PWDCert = null;
                string EighthDocPath = "";

                if (!Directory.Exists(lstrFullPath1))
                {
                    Directory.CreateDirectory(lstrFullPath1);
                    filepath1 = lstrFullPath1 + '/' + CID + "_P.jpg";
                    UplDoc.SaveAs(filepath1);
                }
                else
                {
                    filepath1 = lstrFullPath1 + '/' + CID + "_P.jpg";
                    UplDoc.SaveAs(filepath1);
                }

                if (!Directory.Exists(lstrFullPath1))
                {
                    Directory.CreateDirectory(lstrFullPath1);
                    filepath2 = lstrFullPath1 + '/' + CID + "_S.jpg";
                    UplSign.SaveAs(filepath2);
                }
                else
                {
                    filepath2 = lstrFullPath1 + '/' + CID + "_S.jpg";
                    UplSign.SaveAs(filepath2);
                }

                if (!Directory.Exists(lstrFullPath1))
                {
                    Directory.CreateDirectory(lstrFullPath1);
                    EighthDocPath = lstrFullPath1 + '/' + CID + "_8th." + hfEightExt.Value;
                    UplSign.SaveAs(EighthDocPath);
                }
                else
                {
                    EighthDocPath = lstrFullPath1 + '/' + CID + "_8th." + hfEightExt.Value;
                    UplSign.SaveAs(EighthDocPath);
                }

                //Category Proof
                if (divCat.Visible == true)
                {
                    if (!Directory.Exists(lstrFullPath1))
                    {
                        Directory.CreateDirectory(lstrFullPath1);
                        fileCateCert = lstrFullPath1 + '/' + CID + "_CAT." + hfCatExt.Value;
                        UplCatProofDoc.SaveAs(fileCateCert);
                    }
                    else
                    {
                        fileCateCert = lstrFullPath1 + '/' + CID + "_CAT." + hfCatExt.Value;
                        UplCatProofDoc.SaveAs(fileCateCert);
                    }

                }

                //Ex-serviceman
                if (divex.Visible == true)
                {
                    if (!Directory.Exists(lstrFullPath1))
                    {
                        Directory.CreateDirectory(lstrFullPath1);
                        fileExserviceman = lstrFullPath1 + '/' + CID + "_EX." + hfServiceExt.Value;
                        UplExservicemanDoc.SaveAs(fileExserviceman);
                    }
                    else
                    {
                        fileExserviceman = lstrFullPath1 + '/' + CID + "_EX." + hfServiceExt.Value;
                        UplExservicemanDoc.SaveAs(fileExserviceman);
                    }
                }

                //PWD
                if (divpwd.Visible == true)
                {
                    if (!Directory.Exists(lstrFullPath1))
                    {
                        Directory.CreateDirectory(lstrFullPath1);
                        PWDCert = lstrFullPath1 + '/' + CID + "_PWD." + hfPWDExt.Value;
                        UplPwdDoc.SaveAs(PWDCert);
                    }
                    else
                    {
                        PWDCert = lstrFullPath1 + '/' + CID + "_PWD." + hfPWDExt.Value;
                        UplPwdDoc.SaveAs(PWDCert);
                    }
                }




                bool result = Mysql.ExecuteNonQuery("Exec SpUpdateDocumentsPath  '" + CID + "','" + filepath1 + "', '" + filepath2 + "', '" + DOBCertPath
                    + "', '" + fileCateCert + "', '" + fileExserviceman + "', '" + PWDCert + "', '" + EighthDocPath + "' ");
                if (result == true)
                {
                    Response.Redirect("~/candidate/Preview.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Your documents is not uploaded successfully..Try Again');", true);

                    return;
                }

            }

        }
        catch (Exception ex)
        {

            LogError(ex);
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
        else if (Format == "pdf") { ImageType = 2; }
        else if (Format == "PDF") { ImageType = 2; }
        return ImageType;

    }
    #endregion

    bool isvalidate()
    {
        DataSet ds = new DataSet();
        ds = Mysql.GetDataSetWithQuery("select Category, IsExserviceman, IsPH from tbabmCandidateInfo where canid='" + CID + "'");

        #region Applicant's Photo

        if (UplDoc.FileName == "" && UplDoc.PostedFile.ContentLength <= 0)
        {

        }

        else if (UplDoc.FileName != "" && UplDoc.PostedFile.ContentLength > 0)
        {
            string NameChange = "";
            string Imagepath = string.Empty;
            string[] ImageName;
            string ImageExtension = string.Empty;
            string Itype = "";

            NameChange = UplDoc.PostedFile.FileName.ToString();
            Imagepath = NameChange;
            ImageName = Imagepath.Split('.');
            ImageExtension = ImageName[1];
            Itype = ImageCase(ImageExtension).ToString();

            if (Itype == "1" || Itype == "2")
            {
                if (UplDoc.PostedFile.ContentLength > 80000)
                {
                    lblmsg.Text = "Oops ! Error occured while uploading, Applicant's Photo size should be 80KB";
                    // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Oops ! Error occured while uploading, Applicant's Photo size should be 80KB');", true);

                    return false;
                }

            }
            else
            {
                lblmsg.Text = "Oops ! Error occured while uploading, Applicant's Photo should be in .jpeg/jpg format only";
                // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Oops ! Error occured while uploading, Applicant's Photo should be in .jpeg/jpg format only');", true);

                return false;

            }
        }
        else
        {
            lblmsg.Text = "Please upload candidate photo";
            return false;

        }

        #endregion

        #region Applicant's Signature
        if (UplSign.FileName != "" && UplSign.PostedFile.ContentLength > 0)
        {
            string NameChange = "";
            string Imagepath = string.Empty;
            string[] ImageName;
            string ImageExtension = string.Empty;
            string Itype = "";
            NameChange = UplSign.PostedFile.FileName.ToString();
            Imagepath = NameChange;
            ImageName = Imagepath.Split('.');
            ImageExtension = ImageName[1];
            Itype = ImageCase(ImageExtension).ToString();

            if (Itype == "1" || Itype == "2")
            {
                if (UplSign.PostedFile.ContentLength > 50000)
                {

                    lblmsg.Text = "Oops ! Error occured while uploading, Signature size should be 50KB";
                    return false;
                }

            }
            else
            {
                lblmsg.Text = "Oops ! Error occured while uploading, Signature should be in .jpeg/jpg format only";

                return false;
            }
        }
        else
        {
            lblmsg.Text = "Please upload candidate Signature";
            return false;

        }
        #endregion

        #region Eight Document
        if (UplEigthDoc.FileName != "" && UplEigthDoc.PostedFile.ContentLength > 0)
        {
            string NameChange = "";
            string Imagepath = string.Empty;
            string[] ImageName;
            string ImageExtension = string.Empty;
            string Itype = "";
            NameChange = UplEigthDoc.PostedFile.FileName.ToString();
            Imagepath = NameChange;
            ImageName = Imagepath.Split('.');
            ImageExtension = ImageName[1];
            Itype = ImageCase(ImageExtension).ToString();

            if (Itype == "1" || Itype == "2")
            {
                if (UplEigthDoc.PostedFile.ContentLength > 1000000)
                {

                    lblmsg.Text = "Oops ! Error occured while uploading, 8th Standard Marksheet  size should be 1MB";
                    return false;
                }

            }
            else
            {
                lblmsg.Text = "Oops ! Error occured while uploading, 8th Standard Marksheet  should be in pdf/jpeg/jpg format only";

                return false;
            }
        }
        else
        {
            lblmsg.Text = "Please upload 8th Standard Marksheet ";
            return false;

        }
        #endregion

        #region Category Document
        if (ds.Tables[0].Rows[0]["Category"].ToString() != "1")
        {
            if (UplCatProofDoc.FileName != "" && UplCatProofDoc.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = UplCatProofDoc.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (UplCatProofDoc.PostedFile.ContentLength > 1000000)
                    {
                        lblmsg.Text = "Oops ! Error occured while uploading, Category proof Certificate size should be 1MB";

                        return false;
                    }

                }
                else
                {
                    lblmsg.Text = "Oops ! Error occured while uploading, Category proof Certificate should be in pdf/jpeg/jpg format only";
                    return false;
                }
            }
            else
            {
                lblmsg.Text = "Please upload Category proof Certificate";
                return false;

            }
        }

        #endregion

        #region Ex-serviceman Document
        if (ds.Tables[0].Rows[0]["IsExserviceman"].ToString() == "1")
        {
            if (UplExservicemanDoc.FileName != "" && UplExservicemanDoc.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = UplExservicemanDoc.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (UplExservicemanDoc.PostedFile.ContentLength > 1000000)
                    {

                        lblmsg.Text = "Oops ! Error occured while uploading, Ex-serviceman proof Certificate size should be 1MB";
                        return false;
                    }

                }
                else
                {
                    lblmsg.Text = "Oops ! Error occured while uploading, Ex-serviceman proof Certificate should be in pdf/jpeg/jpg format only";
                    return false;
                }
            }
            else
            {
                lblmsg.Text = "Please upload Ex-serviceman proof Certificate";
                return false;

            }
        }

        #endregion

        #region PWD Document
        if (ds.Tables[0].Rows[0]["IsPH"].ToString() == "1")
        {
            if (UplPwdDoc.FileName != "" && UplPwdDoc.PostedFile.ContentLength > 0)
            {
                string NameChange = "";
                string Imagepath = string.Empty;
                string[] ImageName;
                string ImageExtension = string.Empty;
                string Itype = "";
                NameChange = UplPwdDoc.PostedFile.FileName.ToString();
                Imagepath = NameChange;
                ImageName = Imagepath.Split('.');
                ImageExtension = ImageName[1];
                Itype = ImageCase(ImageExtension).ToString();

                if (Itype == "1" || Itype == "2")
                {
                    if (UplPwdDoc.PostedFile.ContentLength > 1000000)
                    {

                        lblmsg.Text = "Oops ! Error occured while uploading, PH proof Certificate size should be 1MB";
                        return false;
                    }

                }
                else
                {
                    lblmsg.Text = "Oops ! Error occured while uploading, PH proof Certificate should be in pdf/jpeg/jpg format only";
                    return false;
                }
            }
            else
            {
                lblmsg.Text = "Please upload PH proof Certificate";
                return false;

            }
        }

        #endregion

        return true;
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home/ListofExam.aspx");
    }
}