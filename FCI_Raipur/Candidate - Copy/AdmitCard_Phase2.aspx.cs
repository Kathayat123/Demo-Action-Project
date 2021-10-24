using Common.Class;
using KeepAutomation.Barcode.Bean;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_AdmitCard : ClsErrorLog
{
    CommonPerception mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        string CID = Convert.ToString(Request.QueryString["CID"]);
        //string CID = "11105104396";
        if (!IsPostBack)
        {
            try
            {
                DataSet ds = new DataSet();
                ds = mysql.GetDataSetWithQuery("exec Sp_GetAdmitCardDetails_Phase2 @RollNo='" + CID + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    BarCode barcode = new BarCode();
                    barcode.Symbology = KeepAutomation.Barcode.Symbology.Code128Auto;
                    barcode.Orientation = KeepAutomation.Barcode.Orientation.Degree0;
                    barcode.BarcodeUnit = KeepAutomation.Barcode.BarcodeUnit.Pixel;
                    barcode.X = 1;
                    barcode.Y = 40;
                    barcode.BarCodeWidth = 100;
                    barcode.BarCodeHeight = 40;
                    barcode.DPI = 72;
                    barcode.CodeToEncode = ds.Tables[0].Rows[0]["RollNumber"].ToString();
                    barcode.DisplayText = false;
                    Bitmap bmp = barcode.generateBarcodeToBitmap();
                    MemoryStream ms = new MemoryStream();
                    bmp.Save(ms, ImageFormat.Jpeg);
                    byte[] bmpBytes = ms.ToArray();
                    string base64String = Convert.ToBase64String(bmpBytes, 0, bmpBytes.Length);
                    Barcode.ImageUrl = "data:image/Jpeg;base64," + base64String;
                    //if (Convert.ToString(ds.Tables[0].Rows[0]["paymentdone"]) == "N")
                    //{
                    //    lbladmit.Text = "PROVISIONAL ADMIT CARD";
                    //}
                    //else
                    //{
                    //    lbladmit.Text = "ADMIT CARD";
                    //}
                    //lblcourse.Text = Convert.ToString(ds.Tables[0].Rows[0]["POSTNAME"]).ToUpper();
                    // lblmod.Text = Convert.ToString(ds.Tables[0].Rows[0]["mode"]).ToUpper();
                    //lblmod.Text = "OFFLINE";
                    lblApplicationNo.Text = Convert.ToString(ds.Tables[0].Rows[0]["Canid"]).ToUpper();
                    lblcandname.Text = Convert.ToString(ds.Tables[0].Rows[0]["CandName"]).ToUpper();
                    lblpresentadd.Text = Convert.ToString(ds.Tables[0].Rows[0]["CanAddress"]).ToUpper();
                    lblRoll.Text = Convert.ToString(ds.Tables[0].Rows[0]["RollNumber"]).ToUpper();
                    lblFatherName.Text = Convert.ToString(ds.Tables[0].Rows[0]["FatherName"]).ToUpper();
                    lblMotherName.Text = Convert.ToString(ds.Tables[0].Rows[0]["MotherName"]).ToUpper();
                    lblDOB.Text = Convert.ToString(ds.Tables[0].Rows[0]["DOB"]).ToUpper();
                    lblAadhar.Text = Convert.ToString(ds.Tables[0].Rows[0]["adharcardno"]).ToUpper();
                    lblcategory.Text = Convert.ToString(ds.Tables[0].Rows[0]["Category"]).ToUpper();

                    lblExmcity.Text = Convert.ToString(ds.Tables[0].Rows[0]["CityName1"]).ToUpper();
                    //lblcitycode.Text = Convert.ToString(ds.Tables[0].Rows[0]["CityCode"]).ToUpper();
                    lblCentername.Text = Convert.ToString(ds.Tables[0].Rows[0]["CollegeName"]).ToUpper();
                    //lblCenterCode.Text = Convert.ToString(ds.Tables[0].Rows[0]["CenterID"]).ToUpper();
                    lblnoc.Text = Convert.ToString(ds.Tables[0].Rows[0]["CollegeName"]).ToUpper();
                    lblCadd1.Text = Convert.ToString(ds.Tables[0].Rows[0]["Address"]).ToUpper();
                    lblPin.Text = Convert.ToString(ds.Tables[0].Rows[0]["Pincode1"]).ToUpper();
                    lblExmdate.Text = Convert.ToString(ds.Tables[0].Rows[0]["ExamDate"]).ToUpper();
                    lblReptime.Text = Convert.ToString(ds.Tables[0].Rows[0]["ReportingTime"]).ToUpper();
                    lblgateclose.Text = Convert.ToString(ds.Tables[0].Rows[0]["GateClosedTime"]).ToUpper();
                    //lblExmDuration.Text = Convert.ToString(ds.Tables[0].Rows[0]["ExamDuration"]).ToUpper();
                    Image1.ImageUrl = Convert.ToString(ds.Tables[0].Rows[0]["PhotoPath"]);//
                    Image2.ImageUrl = Convert.ToString(ds.Tables[0].Rows[0]["SignPath"]);//

                }
            }
            catch (Exception ex)
            {

                LogError(ex);
            }
        }

    }
}