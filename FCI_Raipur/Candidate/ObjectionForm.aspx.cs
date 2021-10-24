using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ObjectionForm : ClsErrorLog
{

    ResourceManager rm;
    CultureInfo ci;
    CommonPerception MySql = new CommonPerception();
    string filepath1 = "";
    string lstrFullPath1 = string.Empty;
    string CID = string.Empty;
    string filepath2 = "";
    string lstrFullPath2 = string.Empty;
    string cat = string.Empty;
    public string RollNo = "";
    string CanId = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("../Home/ListofExam.aspx");
            if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
            {
                Session.Abandon();
                Response.Redirect("../Home/ListofExam.aspx");
            }
            CanId = Convert.ToString(Session["canid"]);
            CID = CanId;
            lblregno.Text = CID;
            RollNo = CanId;

            if (!IsPostBack)
            {
                btnExit.Visible = false;
                btnsaveExit.Visible = false;
                fillsubjectname(); //
                fillQueryType();
                fillgrid();
            }

        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

    void fillsubjectname()
    {
        try
        {
            string PaperSetName = "FCI Chhattisgarh Region - Recruitment of Watchman Exam";
            ddlsubject.Items.Clear();
            ddlsubject.Items.Insert(0, PaperSetName);
            ddlsubject.Enabled = false;

            ddlGivAns.Items.Clear();
            ddlGivAns.Items.Insert(0, "A");
            ddlGivAns.Items.Insert(1, "B");
            ddlGivAns.Items.Insert(2, "C");
            ddlGivAns.Items.Insert(3, "D");
        }
        catch (Exception ex)
        {
            LogError(ex);
        }

        try
        {
            ddlQno.Items.Clear();
            ddlQno.Items.Insert(0, new ListItem("--SELECT--", "0"));

            ddlQno.Items.Insert(1, "A");
            ddlQno.Items.Insert(2, "B");
            ddlQno.Items.Insert(3, "C");
            ddlQno.Items.Insert(4, "D");

        }
        catch (Exception ex)
        {
            LogError(ex);
        }

    }
    void fillQueryType()
    {
        try
        {

            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_QueryType");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlquerytype.DataSource = ds;
                ddlquerytype.DataTextField = "query";
                ddlquerytype.DataValueField = "ID";
                ddlquerytype.DataBind();
                ddlquerytype.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }

        }
        catch (Exception ex)
        {
            LogError(ex);
        }



    }

    bool isvalidate()
    {

        lblCMessage.Text = "";
        if (ddlsubject.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Examination Name');", true);
            ddlsubject.Focus();
            return false;
        }
        if (ddlQno.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Question Id');", true);
            ddlQno.Focus();
            return false;
        }
        if (ddloptionid.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Option Id');", true);
            ddloptionid.Focus();
            return false;
        }

        if (ddlquerytype.SelectedValue == "0")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select type of objections');", true);
            ddlquerytype.Focus();
            return false;
        }

        //if (ddlquerytype.SelectedValue == "4" && txtobjection.Text.Replace("'", "''") == "")
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter  objections');", true);
        //    txtobjection.Focus();
        //    return false;
        //}
        //if (txtremarks.Value.Trim()  == "")

        //if (divGivAns.Visible && ddlGivAns.SelectedIndex == 0)
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Answer Option given in answer key');", true);
        //    ddlGivAns.Focus();
        //    return false;
        //}

        if (divCandAns.Visible && txtCandAnswer.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please select Answer Option according to Candidate');", true);
            txtCandAnswer.Focus();
            return false;
        }

        if (txtremarks.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please enter Explanation/Remarks');", true);
            txtremarks.Focus();
            return false;
        }

        if (uploadCandidatephoto.FileName == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please upload Reference File.');", true);
            uploadCandidatephoto.Focus();
            return false;
        }

        if (uploadCandidatephoto.PostedFile.ContentLength == 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Please upload file.');", true);
            txtremarks.Focus();
            return false;
        }

        if (uploadCandidatephoto.PostedFile.ContentLength > 100000)
        {
            lblCMessage.Text = "Oops ! Error occured while uploading, Reference File size should be 100KB";
            txtremarks.Focus();
            return false;
        }

        if (uploadCandidatephoto.FileName != "")
        {

            string NameChange = "";
            string Imagepath = string.Empty;
            string[] ImageName;
            string ImageExtension = string.Empty;
            string Itype = "";

            NameChange = uploadCandidatephoto.PostedFile.FileName.ToString();
            Imagepath = NameChange;
            ImageName = Imagepath.Split('.');
            ImageExtension = ImageName[1];
            Itype = ImageCase(ImageExtension).ToString();

            if (Itype == "1" || Itype == "2")
            {
                if (uploadCandidatephoto.PostedFile.ContentLength > 100000)
                {
                    lblCMessage.Text = "Oops ! Error occured while uploading, Reference File size should be 100KB";
                    return false;
                }
            }
            else
            {
                lblCMessage.Text = "'Oops ! Error occured while uploading, Please upload JPG/JPEG format only.'";
                return false;
            }
        }

        return true;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblCMessage.Text = "";
        string lstrFullPath1 = @"\\10.10.10.113\Aptech Limited\FCI_Raipur\Objection\";
        //string lstrFullPath1 = @"D:\\Websites\FCI\Objection\";
        try
        {
            if (isvalidate())
            {
                int objid = 0;
                string CandGivAnsKey = "";
                string CandAns = "";

                if (divGivAns.Visible)
                {
                    CandGivAnsKey = ddlGivAns.SelectedValue;
                }
                if (divCandAns.Visible)
                {
                    CandAns = txtCandAnswer.Text;
                }
                string strsql = "exec sp_insertobejction @setname='" + ddlsubject.SelectedValue + "',@Qno='" + ddlQno.SelectedValue + "',@section='"
                    + ddloptionid.SelectedValue + "',@QueryType='" + ddlquerytype.SelectedValue + "',@Remarks='" + txtremarks.Text.Replace("'", "''").ToUpper()
                    + "',@canid='" + Convert.ToString(RollNo) + "',@Objection='" + txtobjection.Text.Replace("'", "''").ToUpper()
                    + "', @CandGivAnsKey = '" + CandGivAnsKey + "',@CandAnswer='" + CandAns + "'";

                DataSet ds = MySql.GetDataSetWithQuery(strsql);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    objid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                }
                #region DOCUMENTS
                if (uploadCandidatephoto.FileName != "" && uploadCandidatephoto.PostedFile.ContentLength > 0)
                {
                    string NameChange = "";
                    string Imagepath = string.Empty;
                    string[] ImageName;
                    string ImageExtension = string.Empty;
                    string Itype = "";

                    NameChange = uploadCandidatephoto.PostedFile.FileName.ToString();
                    Imagepath = NameChange;
                    ImageName = Imagepath.Split('.');
                    ImageExtension = ImageName[1];
                    Itype = ImageCase(ImageExtension).ToString();

                    if (Itype == "1" || Itype == "2")
                    {
                        if (uploadCandidatephoto.PostedFile.ContentLength > 100000)
                        {
                            lblCMessage.Text = "Oops ! Error occured while uploading, Reference File size should be 100KB";
                            return;
                        }
                        else
                        {
                            filepath1 = "";

                            if (!Directory.Exists(lstrFullPath1))
                            {
                                Directory.CreateDirectory(lstrFullPath1);
                                filepath1 = lstrFullPath1 + '/' + objid + "_O" + '.' + ImageExtension;
                                uploadCandidatephoto.SaveAs(filepath1);
                            }
                            else
                            {
                                filepath1 = lstrFullPath1 + '/' + objid + "_O" + '.' + ImageExtension;
                                uploadCandidatephoto.SaveAs(filepath1);
                            }

                            strsql = "exec sp_updateobejction @UploaddocumentPath='" + filepath1 + "',@id='" + objid + "'";
                            ds = MySql.GetDataSetWithQuery(strsql);
                        }
                    }
                }

                #endregion
                fillgrid();
                Reset();
            }



        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }
    void fillgrid()
    {
        trgvData.Visible = false;
        string strsql = "exec sp_getobejction @canid='" + Convert.ToString(RollNo) + "'";
        DataSet ds = MySql.GetDataSetWithQuery(strsql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            trgvData.Visible = true;
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }
    void Reset()
    {

        ddlQno.SelectedIndex = -1;
        ddlquerytype.SelectedValue = "0";
        txtremarks.Text = "";

        ddlQno.Enabled = false;
        txtobjection.Text = "";
        txtobjection.Visible = false;
        ddlquerytype.Enabled = false;
        txtremarks.Enabled = false;
        btnsubmit.Visible = false;
        ddloptionid.Enabled = false;
        btnsaveExit.Visible = true;
        btnExit.Visible = true;
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

    protected void btnExit_Click(object sender, EventArgs e)
    {


        ddlQno.SelectedIndex = -1;
        ddlquerytype.SelectedValue = "0";
        ddloptionid.SelectedIndex = -1;
        txtremarks.Text = "";
        ddloptionid.Enabled = true;
        ddlQno.Enabled = true;
        ddlquerytype.Enabled = true;
        txtremarks.Enabled = true;
        btnsubmit.Visible = true;
        btnExit.Visible = false;
        btnsaveExit.Visible = false;
        ddlGivAns.SelectedIndex = 0;
        divCandAns.Visible = false;
        divGivAns.Visible = false;
        txtCandAnswer.Text = "";
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Home/ListofExam.aspx");
    }

    protected void ddlset_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlquerytype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlquerytype.SelectedIndex != -1)
        {
            divGivAns.Visible = false;
            divCandAns.Visible = false;
            if (ddlquerytype.SelectedValue == "4" || ddlquerytype.SelectedValue == "5")
            {
                divCandAns.Visible = true;
            }
            if (ddlquerytype.SelectedValue == "5")
            {
                divGivAns.Visible = true;
            }

        }
    }
    protected void btnsaveExit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Home/ListofExam.aspx");
    }




    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Home/ListofExam.aspx");
    }


    protected void ddlsubject_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlQno_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            ddloptionid.Items.Insert(0, new ListItem("--SELECT--", "0"));
            for (int i = 1; i < 101; i++)
            {
                ddloptionid.Items.Insert(i, (i).ToString());
            }


        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
}