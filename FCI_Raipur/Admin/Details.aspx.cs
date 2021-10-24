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

public partial class Details : ClsErrorLog 
{
    ResourceManager rm;
    CultureInfo ci;

    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str;
        if (Session["AdminId"] == null)
        {
            Session.Abandon();
            Response.Redirect("~/admin/Login.aspx");
        }
        else { }
        Thread.CurrentThread.CurrentCulture = new CultureInfo("hi-IN");
        rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
        ci = Thread.CurrentThread.CurrentCulture;
        LoadString(ci);
        if(!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                string strcanid = Convert.ToString(Request.QueryString["Id"]);
                lblregno.Text = strcanid;
                GetDataPersonal(strcanid);
            }
          
           
       
        }
      
        
    }

 
    private void LoadString(CultureInfo ci)
    {
        #region Homepage
        lblpostAppliedFor.Text = rm.GetString("PAF", ci).ToString();
        lblcandidatename.Text = rm.GetString("ApplicantFullname", ci).ToString();
        lblmobileno.Text = rm.GetString("MobileNo", ci).ToString();
        lblemailid.Text = rm.GetString("EmailId", ci).ToString();
        lbldob.Text = rm.GetString("DOB", ci).ToString();
        lblFathername.Text = rm.GetString("ApplicantFatherName", ci).ToString();
        lblmothername.Text = rm.GetString("ApplicantMotherName", ci).ToString();
        lblmobilen1.Text = rm.GetString("AlternateMobileNo", ci).ToString();

        lblgender.Text = rm.GetString("Gender", ci).ToString();
        lblDomicile.Text = rm.GetString("Domicile", ci).ToString();
        lblcategory.Text = rm.GetString("CATEGORY", ci).ToString();
        lblSubCategory.Text = rm.GetString("SUBCATEGORY", ci).ToString();
        lblPD.Text = rm.GetString("PD", ci).ToString();

        lblexservicefromdate.Text = rm.GetString("EXFROMDATE", ci).ToString();
        lblexservicetodate.Text = rm.GetString("EXTODATE", ci).ToString();
        lblCalAge.Text = rm.GetString("TOTALAGE", ci).ToString();
        lblexserviceexp.Text = rm.GetString("TOTEXP", ci).ToString();

        lblSportPerson.Text = rm.GetString("SPORTPERSON", ci).ToString();

        lblsporttype.Text = rm.GetString("SPORTTYPE", ci).ToString();

        lblBGrade.Text = rm.GetString("BGRADE", ci).ToString();
        lblTerritialArmy.Text = rm.GetString("TERRITORIALARMY", ci).ToString();
        lblnationality.Text = rm.GetString("NATIONALITY", ci).ToString();
        lblMarital.Text = rm.GetString("MARITALSTATUS", ci).ToString();
        lblspouse.Text = rm.GetString("spouse", ci).ToString();


        lblpostalAddress.Text = rm.GetString("COA", ci).ToString();
        lblparmanentaddress.Text = rm.GetString("PADD", ci).ToString();
        // chkifyes.Text = rm.GetString("sameas", ci).ToString();
        lblAdd1.Text = rm.GetString("ADDR1", ci).ToString();
        lblAdd2.Text = rm.GetString("ADDR2", ci).ToString();
        lblAdd3.Text = rm.GetString("ADDR3", ci).ToString();
        lblPAdd1.Text = rm.GetString("ADDR1", ci).ToString();
        lblPAdd2.Text = rm.GetString("ADDR2", ci).ToString();
        lblPAdd3.Text = rm.GetString("ADDR3", ci).ToString();
        lblstate.Text = rm.GetString("STATE", ci).ToString();
        lbldistrict.Text = rm.GetString("DISTRICT", ci).ToString();
        lbldistrict1.Text = rm.GetString("DISTRICT", ci).ToString();
        lblPincode.Text = rm.GetString("PINCODE", ci).ToString();

        lblpstate.Text = rm.GetString("STATE", ci).ToString();
        lblpdistrict.Text = rm.GetString("DISTRICT", ci).ToString();
        lblpdistrict1.Text = rm.GetString("DISTRICT", ci).ToString();
        lblPPincode.Text = rm.GetString("PINCODE", ci).ToString();
        lblexamcenter1.Text = rm.GetString("TCC1", ci).ToString();
        lblexamcenter2.Text = rm.GetString("TCC2", ci).ToString();
        lblexamcenter3.Text = rm.GetString("TCC3", ci).ToString();
        lblexamcenter4.Text = rm.GetString("TCC4", ci).ToString();
        lblexamcenter5.Text = rm.GetString("TCC5", ci).ToString();
        lblExam.Text = rm.GetString("EXAMINATION", ci).ToString();
        lblPassing.Text = rm.GetString("YOP", ci).ToString();
        lblBoard.Text = rm.GetString("NOI", ci).ToString();
        lblRoll.Text = rm.GetString("Roll", ci).ToString();
        lblGrade.Text = rm.GetString("PERCENTAGE", ci).ToString();
        lblgrade1.Text = rm.GetString("PERCENTAGE", ci).ToString();
        lbl10th.Text = rm.GetString("tenth", ci).ToString();
        lbl12th.Text = rm.GetString("TWELTH", ci).ToString();

        lblGrd.Text = rm.GetString("Graduation", ci).ToString();
        lblPG.Text = rm.GetString("PostGraduation", ci).ToString();

        lblcoursename.Text = rm.GetString("NOC", ci).ToString();
        lblinstitute.Text = rm.GetString("NOI", ci).ToString();
        lblpassingYear.Text = rm.GetString("YOP", ci).ToString();
        lblcertificate.Text = rm.GetString("CertificateNo", ci).ToString();
        lblcertificateno.Text = rm.GetString("CertificateNo", ci).ToString();

        lblUpGovEmp.Text = rm.GetString("UpGovEmp", ci).ToString();
        lblNameOfDept.Text = rm.GetString("NameOfDept", ci).ToString();
        lblAreYouRegularEmp.Text = rm.GetString("AreYouRegularEmp", ci).ToString();
        // txtpostaladdressline1.Focus(); 
        #endregion
    }


  
    void GetDataPersonal( string strcanid)
    {
        #region Personal Details

        try
        {
            DataSet ds = new DataSet(); 
            ds = Mysql.GetDataSetWithQuery("Exec  Sp_GetPersonalDetails  '" + strcanid + "' ");
            if (ds.Tables[0].Rows.Count > 0)
            {

                foreach (System.Data.DataRow dr in ds.Tables[0].Rows)
                {

                    if ((dr["SignPath"] != "" || dr["SignPath"] != "0") && (dr["PhotoPath"] != "" || dr["PhotoPath"] != "0"))
                    {

                        //File read for Extensions
                        string FileName = string.Empty;
                        string Photoext = "jpg"; string signext = "jpg";

                        DirectoryInfo d = new DirectoryInfo(@"D:/websites/upjn/Documents/Profile/" + strcanid); //Assuming Test is your Folder
                        string pathfinal = d.ToString();
                        if (!Directory.Exists(pathfinal))
                        {

                        }
                        else
                        {
                            FileInfo[] Files = d.GetFiles(); //Getting Text files

                            FileName = Files[0].ToString();
                            string[] phext = FileName.Split('.');
                            Photoext = phext[1].ToString();

                            FileName = Files[1].ToString();
                            string[] sigext = FileName.Split('.');
                            signext = sigext[1].ToString();

                        }

                        string sPhotopath = ds.Tables[0].Rows[0]["PhotoPath"].ToString();
                        string sSignpath = ds.Tables[0].Rows[0]["SignPath"].ToString();

                        string[] nsPhotopath = sPhotopath.Split('/');
                        sPhotopath = nsPhotopath[nsPhotopath.Length - 1].ToString();

                        string[] nsSignpath = sSignpath.Split('/');
                        sSignpath = nsSignpath[nsPhotopath.Length - 1].ToString();

                        Image1.ImageUrl = "http://103.8.127.105/upjnrgc/Documents/profile/" + sPhotopath;
                        Image2.ImageUrl = "http://103.8.127.105/upjnrgc/Documents/profile/" + sSignpath;
                    }
                    lblpostAppliedFor0.Text = Convert.ToString(dr["POSTNAME"]);
                    lbexamcenter1.Text = Convert.ToString(dr["CenterName1"]);
                    lbexamcenter2.Text = Convert.ToString(dr["CenterName2"]);
                    lbexamcenter3.Text = Convert.ToString(dr["CenterName3"]);
                    lbexamcenter4.Text = Convert.ToString(dr["CenterName4"]);
                    lbexamcenter5.Text = Convert.ToString(dr["CenterName5"]);

                    if (Convert.ToString(dr["domicilestate"]) == "0")
                    {
                        lblDomicile0.Text = "";
                    }
                    else if (Convert.ToString(dr["domicilestate"]) == "1")
                    {

                        lblDomicile0.Text = "UTTAR PRADESH (उत्तर प्रदेश)";
                    }
                    else if (Convert.ToString(dr["domicilestate"]) == "2")
                    {

                        lblDomicile0.Text = "OTHER THAN UTTAR PRADESH (उत्तर प्रदेश के अतिरिक्त)";
                    }

                    if (Convert.ToString(dr["domicilestate"]) == "2")
                    {
                        trsubcategosry.Visible = false;
                        trpd.Visible = false;
                        trisdepartmental.Visible = false;
                        trExSer.Visible = false;

                    }
                    else
                    {
                        trpd.Visible = true;
                        trisdepartmental.Visible = true;
                        trExSer.Visible = true;
                        trsubcategosry.Visible = true;
                        lblSubCategory0.Text = Convert.ToString(dr["SUBCATEGORY"]);
                    }
                    if (Convert.ToString(dr["subcategory1"]) == "1")
                    {
                        trpd.Visible = true;
                        trisdepartmental.Visible = false;
                        trExSer.Visible = false;
                    }
                    else if (Convert.ToString(dr["subcategory1"]) == "3")
                    {
                        trpd.Visible = false;
                        trisdepartmental.Visible = true;
                        trExSer.Visible = true;
                    }
                    else
                    {
                        trpd.Visible = false;
                        trisdepartmental.Visible = false;
                        trExSer.Visible = false;
                    }


                    lblcategory0.Text = Convert.ToString(dr["catName"]);


                    lblcandidatename0.Text = Convert.ToString(dr["CandidateName"]);
                    lblFathername0.Text = Convert.ToString(dr["FatherName"]);
                    lblmothername0.Text = Convert.ToString(dr["MotherName"]);

                    if (Convert.ToString(dr["Sex"]) == "1")
                    {
                        lblgender0.Text = "MALE(पुरुष)";
                    }
                    else if (Convert.ToString(dr["Sex"]) == "2")
                    {
                        lblgender0.Text = "FEMALE(महिला)";
                    }
                    else if (Convert.ToString(dr["Sex"]) == "3")
                    {
                        lblgender0.Text = "TRANSGENDER(ट्रांसजेंडर)";
                    }

                    if (Convert.ToString(dr["MaritalStatus"]) == "1")
                    {
                        lblMarital0.Text = "MARRIED (विवाहित)";
                        ifmarriedSpouse.Visible = true;
                        if (Convert.ToString(dr["spouse"]) == "1")
                        {
                            lblspouse0.Text = "ONE (एक)";
                        }
                        else if (Convert.ToString(dr["spouse"]) == "2")
                        {
                            lblspouse0.Text = "MORE THAN ONE (एक से अधिक)";
                        }

                    }
                    else if (Convert.ToString(dr["MaritalStatus"]) == "2")
                    {
                        lblMarital0.Text = "UNMARRIED (अविवाहित)";
                        ifmarriedSpouse.Visible = false;
                    }

                    lblpostaladd1.Text = Convert.ToString(dr["Address1"]);
                    lblpostaladd2.Text = Convert.ToString(dr["Address2"]);
                    lblpostaladd3.Text = Convert.ToString(dr["Address3"]);

                    //State
                    //District & other
                    if (Convert.ToString(dr["state"]) == "1")
                    {
                        lblstate0.Text = "UTTAR PRADESH";
                        lbldistrict0.Text = Convert.ToString(dr["CityDis"]);
                        trotherdistrict.Visible = false;
                        trdistrict.Visible = true;
                    }
                    else if (Convert.ToString(dr["state"]) == "2")
                    {
                        lblstate0.Text = "OTHER THAN UTTAR PRADESH";
                        lbldistrict2.Text = Convert.ToString(dr["OtherCity"]);
                        trotherdistrict.Visible = true;
                        trdistrict.Visible = false;

                    }

                    lblpincode0.Text = Convert.ToString(dr["Pincode"]);

                    lblPAdd11.Text = Convert.ToString(dr["PerAddress1"]);
                    lblPAdd12.Text = Convert.ToString(dr["PerAddress2"]);
                    lblPAdd13.Text = Convert.ToString(dr["PerAddress3"]);

                    // P State
                    // P District & other

                    if (Convert.ToString(dr["Perstate"]) == "1")
                    {
                        lblpstate0.Text = "UTTAR PRADESH";
                        lblpdistrict0.Text = Convert.ToString(dr["CityDisP"]);
                        trPotherDis.Visible = false;
                        trPDis.Visible = true;

                    }
                    else if (Convert.ToString(dr["Perstate"]) == "2")
                    {
                        lblpstate0.Text = "OTHER THAN UTTAR PRADESH";
                        lblpdistrict2.Text = Convert.ToString(dr["POtherCity"]);
                        trPotherDis.Visible = true;
                        trPDis.Visible = false;


                    }
                    lblPPincode0.Text = Convert.ToString(dr["PerPincode"]);

                    lblmobileno0.Text = Convert.ToString(dr["Mobile"]);
                    lblmobileno2.Text = Convert.ToString(dr["Mobile1"]);
                    lblemailid1.Text = Convert.ToString(dr["Email"]);

                    lbldobenterd.Text = Convert.ToString(dr["dob1"]);
                    lblCalAge0.Text = Convert.ToString(dr["AgeYrs"]) + " Years " + Convert.ToString(dr["Agemon"]) + " Months " + Convert.ToString(dr["Agedays"] + " Days");

                    if (Convert.ToString(dr["Nationality"]) == "1")
                    {
                        lblnationality0.Text = "INDIAN (भारतीय)";
                    }
                    else if (Convert.ToString(dr["Nationality"]) == "2")
                    {
                        lblnationality0.Text = "OTHERS (अन्य)";
                    }

                    if (Convert.ToString(dr["TypeofDisability"]) == "1")
                    {
                        lblPD0.Text = "ONE LEG(OL)";
                    }
                    else if (Convert.ToString(dr["TypeofDisability"]) == "2")
                    {
                        lblPD0.Text = "BOTH LEGS(BL)";
                    }
                    else if (Convert.ToString(dr["TypeofDisability"]) == "3")
                    {
                        lblPD0.Text = "PARTIAL BLIND(PB)";
                    }

                    lblexservicefromdate0.Text = Convert.ToString(dr["ExServiceStartDate1"]);
                    lblexservicetodate0.Text = Convert.ToString(dr["ExServiceToDate1"]);
                    lblexserviceexp0.Text = Convert.ToString(dr["expYrs"]) + " Years " + Convert.ToString(dr["expmon"] + " months " + Convert.ToString(dr["expdays"] + " Days"));

                    if (Convert.ToString(dr["AreyouUPGovEmp"]) == "1")
                    {
                        lblUpEmployee0.Text = "YES (हाँ)";

                        trNameOfDept.Visible = true;
                        lblNameOfDept0.Text = Convert.ToString(dr["NameOfDept"]);
                        if (Convert.ToString(dr["AreYouRegularEmp"]) == "1")
                        {
                            lblRegularEmp0.Text = "YES (हाँ)";
                        }
                        else
                        {
                            lblRegularEmp0.Text = "NO (नहीं)";
                        }
                    }
                    else
                    {
                        lblUpEmployee0.Text = "NO (नहीं)";
                    }

                    if (Convert.ToString(dr["Sportsperson"]) == "1")
                    {
                        lblSportPerson0.Text = "YES (हाँ)";
                    }
                    else if (Convert.ToString(dr["Sportsperson"]) == "2")
                    {
                        lblSportPerson0.Text = "NO (नहीं)";
                    }
                    else
                    {
                        //trsportsperson.Visible = false;
                    }

                    lblsporttype0.Text = Convert.ToString(dr["SPORTTYPE"]) == "" ? "NA" : Convert.ToString(dr["SPORTTYPE"]);


                    if (Convert.ToString(dr["BGrade"]) == "1")
                    {
                        lblBGrade0.Text = "YES (हाँ)";
                    }
                    else if (Convert.ToString(dr["BGrade"]) == "2")
                    {
                        lblBGrade0.Text = "NO (नहीं)";
                    }
                    else
                    {
                        trgrade.Visible = false;
                    }

                    //territorial
                    if (Convert.ToString(dr["TerritialArmy"]) == "1")
                    {
                        lblTerritialArmy0.Text = "YES (हाँ)";
                    }
                    else if (Convert.ToString(dr["TerritialArmy"]) == "2")
                    {
                        lblTerritialArmy0.Text = "NO (नहीं)";
                    }


                    //Edu

                    lbl10passingyr.Text = Convert.ToString(dr["HPassingYear"]);
                    lbl10brd.Text = Convert.ToString(dr["HBoardname"]);
                    lbl10roll.Text = Convert.ToString(dr["HRollNo"]);
                    lbl10grade.Text = Convert.ToString(dr["HGrade"]);
                    lbl12passingyr0.Text = Convert.ToString(dr["IPassingYear"]);
                    lbl12brd0.Text = Convert.ToString(dr["IBoardname"]);
                    lbl12roll0.Text = Convert.ToString(dr["IRollNo"]);
                    lbl12grade0.Text = Convert.ToString(dr["IGrade"]);
                    lbl10thcertificate.Text = Convert.ToString(dr["HCertificate"]);
                    lbl12thcertificate.Text = Convert.ToString(dr["ICertificate"]);

                    if (Convert.ToString(dr["GrdPassingYear"]) != "0")
                    {
                        tr2.Visible = true;
                        lblGrdpassingyr0.Text = Convert.ToString(dr["GrdPassingYear"]);
                        lblGrdbrd0.Text = Convert.ToString(dr["GrdBoardname"]);
                        lblGrdroll0.Text = Convert.ToString(dr["GrdRollNo"]);
                        lblGrdgrade0.Text = Convert.ToString(dr["GrdGrade"]);
                        lblGcertificate.Text = Convert.ToString(dr["GCertificate"]);
                    }
                    if (Convert.ToString(dr["PGPassingYear"]) != "0")
                    {
                        tr3.Visible = true;
                        lblPGpassingyr0.Text = Convert.ToString(dr["PGPassingYear"]);
                        lblPGbrd0.Text = Convert.ToString(dr["PGBoardname"]);
                        lblPGroll0.Text = Convert.ToString(dr["PGRollNo"]);
                        lblPGgrade0.Text = Convert.ToString(dr["PGGrade"]);
                        lblPGcertificate.Text = Convert.ToString(dr["PGCertificate"]);
                    }

                    if (Convert.ToString(dr["OCourseName"]) == "1")
                    {
                        lblothercorse.Text = "CCC CERTIFICATE FROM DOEACC OR EQUIVALENT";
                    }
                    else if (Convert.ToString(dr["OCourseName"]) == "2")
                    {
                        lblothercorse.Text = Convert.ToString(dr["Name"]);
                    }
                    if (Convert.ToString(dr["OCourseName"]) == "1")
                    {
                        lblgrade1.Visible = true;
                        lblcertificate.Visible = true;
                    }
                    else
                    {

                        lblgrade1.Visible = true;
                        lblcertificate.Visible = true;
                    }
                   // lblotherinst.Text = Convert.ToString(dr["UniversityName"]) == "" ? Convert.ToString(dr["OBoard"]) : Convert.ToString(dr["UniversityName"]);
                    lblotherinst.Text = "NA";
                    //if (Convert.ToString(dr["OOtherCoureseName"]) == "6")
                    //{
                    //    lblotherinst.Text = "NA";
                    //}
                    //else
                    //{
                    //    lblotherinst.Text = Convert.ToString(dr["UniversityName"]) == "" ? Convert.ToString(dr["OBoard"]) : Convert.ToString(dr["UniversityName"]);

                    //}
                    //lblpassyear.Text = Convert.ToString(dr["OPassingYear"]) == "0" ? "APPEARING" : Convert.ToString(dr["OPassingYear"]);

                    //Added
                    if (Convert.ToString(dr["OPassingYear"]) == "0")
                    {
                        lblpassyear.Text = "APPEARING";
                    }
                    else if (Convert.ToString(dr["OPassingYear"]) == "1")
                    {
                        lblpassyear.Text = "PASSED";
                    }
                    else
                    {
                        lblpassyear.Text = Convert.ToString(dr["OPassingYear"]);
                    }
                    lblcert.Text = "NA";
                    //if (Convert.ToString(dr["OCertificateNo"]).Trim() != "")
                    //{
                    //    lblcert.Text = Convert.ToString(dr["OCertificateNo"]);
                    //}
                    //else
                    //{
                    //    lblcert.Text = "NA";
                    //}

                    lblOGrade.Text = "NA";
                    //lblOGrade.Text = Convert.ToString(dr["OGrade"]) == "" ? "NA" : Convert.ToString(dr["OGrade"]);

                }
                ds.Clear();
                ds = new DataSet();
                ds = Mysql.GetDataSetWithQuery("exec sp_gettransactiondeatils @canid='" + Convert.ToString(strcanid) + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = null ;
                    GridView1.DataBind();
                }
            }
        }
        catch (Exception ex)
        {
            LogError(ex);

        }

     

        #endregion
    }
   
}