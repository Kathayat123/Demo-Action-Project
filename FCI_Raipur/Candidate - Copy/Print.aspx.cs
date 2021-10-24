using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Common.Class;
using System.Text;

public partial class Candidate_Print : ClsErrorLog
{
    DataSet ds = new DataSet();
    CommonPerception MySql = new CommonPerception();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["canid"] = "300005";
        DataSet dt = new DataSet();

        if (Convert.ToString(Session["canid"]) == null || Convert.ToString(Session["canid"]) == "")
        {
            Session.Abandon();
            Response.Redirect("../Home/ListofExam.aspx");
        }

        GetPersonaldetail();
    }


    void GetPersonaldetail()
    {
        try
        {
            ds = MySql.GetDataSetWithQuery("Sp_CheckPreview @RegistrationId='" + Convert.ToString(Session["canid"]) + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (System.Data.DataRow dr in ds.Tables[0].Rows)
                {
                    Image1.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["ImageShowPath"] + Convert.ToString(Session["canid"]) + "_P.jpg";
                    Image2.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["ImageShowPath"] + Convert.ToString(Session["canid"]) + "_S.jpg";

                    lblApplicationNo0.Text = ds.Tables[0].Rows[0]["ApplicationNO"].ToString().ToUpper();
                    lblCType.Text = ds.Tables[0].Rows[0]["CandidateType"].ToString().ToUpper();
                    lbldob.Text = ds.Tables[0].Rows[0]["DOB"].ToString().ToUpper();
                    lblName.Text = ds.Tables[0].Rows[0]["CandidateName"].ToString().ToUpper();
                    lblFather.Text = ds.Tables[0].Rows[0]["FatherName"].ToString().ToUpper();
                    lblMother.Text = ds.Tables[0].Rows[0]["MotherName"].ToString().ToUpper();
                    lblGender.Text = ds.Tables[0].Rows[0]["Gender"].ToString().ToUpper();
                    lblAdhar.Text = ds.Tables[0].Rows[0]["AdharCardNo"].ToString().ToUpper();
                    lblCategory.Text = ds.Tables[0].Rows[0]["Category"].ToString().ToUpper();
                    lblExservice.Text = ds.Tables[0].Rows[0]["Exserviceman"].ToString().ToUpper();
                    lblreligion.Text = ds.Tables[0].Rows[0]["Religion"].ToString().ToUpper();
                    lblPD.Text = ds.Tables[0].Rows[0]["PD"].ToString().ToUpper();
                    lblFciEmp.Text = ds.Tables[0].Rows[0]["IsFCIEmployee"].ToString().ToUpper();
                    lblServiceYear.Text = ds.Tables[0].Rows[0]["FCIEmpServiceYear"].ToString().ToUpper();
                    lblServiceMonths.Text = ds.Tables[0].Rows[0]["FCIEmpServiceMonth"].ToString().ToUpper();

                    lblNationality.Text = ds.Tables[0].Rows[0]["Nationality"].ToString().ToUpper();
                    lblMinority.Text = ds.Tables[0].Rows[0]["NationName"].ToString().ToUpper();

                    trServiceMan.Visible = false;
                    if (lblExservice.Text.ToUpper() == "YES")
                    {
                        trServiceMan.Visible = true;
                    }
                    if (lblPD.Text == "YES")
                    {
                        trdisabilitytype.Visible = true;
                        trdisabilitytype1.Visible = true;
                        lblDisability.Text = ds.Tables[0].Rows[0]["DisabilityType"].ToString().ToUpper();
                        lblCertificateNo.Text = ds.Tables[0].Rows[0]["PHCertificateNo"].ToString().ToUpper();
                    }
                    else
                    {
                        trdisabilitytype.Visible = false;
                        trdisabilitytype1.Visible = false;
                    }

                    lblmobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString().ToUpper();
                    lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString().ToUpper();
                    lblAdd.Text = ds.Tables[0].Rows[0]["Address1"].ToString().ToUpper();
                    lblState.Text = ds.Tables[0].Rows[0]["StateName"].ToString().ToUpper();
                    lblDistrict.Text = ds.Tables[0].Rows[0]["Dis1"].ToString();
                    if (lblDistrict.Text == "9999")
                    {
                        lblDistrict.Text = ds.Tables[0].Rows[0]["OtherDistrict"].ToString().ToUpper();
                    }
                    else
                    {
                        lblDistrict.Text = ds.Tables[0].Rows[0]["District"].ToString().ToUpper();
                    }

                    lblCity.Text = ds.Tables[0].Rows[0]["city"].ToString().ToUpper();
                    lblpincode0.Text = ds.Tables[0].Rows[0]["Pincode"].ToString().ToUpper();
                    lblCAdd.Text = ds.Tables[0].Rows[0]["PerAddress1"].ToString().ToUpper();
                    lblCstate.Text = ds.Tables[0].Rows[0]["Perstate"].ToString().ToUpper();
                    lblCDist.Text = ds.Tables[0].Rows[0]["Dis2"].ToString();
                    if (lblCDist.Text == "9999")
                    {
                        lblCDist.Text = ds.Tables[0].Rows[0]["PerOtherDistrict"].ToString().ToUpper();
                    }
                    else
                    {
                        lblCDist.Text = ds.Tables[0].Rows[0]["PerDistrict"].ToString().ToUpper();
                    }

                    lblCCity.Text = ds.Tables[0].Rows[0]["PerCity"].ToString().ToUpper();
                    lblCPincode.Text = ds.Tables[0].Rows[0]["PerPincode"].ToString().ToUpper();
                    lblNameofinst.Text = ds.Tables[0].Rows[0]["TInst"].ToString().ToUpper();
                    lbluniversity.Text = ds.Tables[0].Rows[0]["TUniv"].ToString().ToUpper();
                    lbltrade.Text = ds.Tables[0].Rows[0]["TCourse"].ToString().ToUpper();
                    lblCStartdate.Text = ds.Tables[0].Rows[0]["TStartDate"].ToString().ToUpper();
                    lblCEnddate.Text = ds.Tables[0].Rows[0]["TEndDate"].ToString().ToUpper();
                    lblExamCity.Text = ds.Tables[0].Rows[0]["ExamCity"].ToString().ToUpper();
                    lblExamCity2.Text = ds.Tables[0].Rows[0]["ExamCity2"].ToString().ToUpper();
                    lblExamCity3.Text = ds.Tables[0].Rows[0]["ExamCity3"].ToString().ToUpper();

                    HSubject.Text = ds.Tables[0].Rows[0]["HSubject"].ToString().ToUpper();
                    if (HSubject.Text == "")
                    {
                        trHSC.Visible = false;
                    }
                    else
                    {
                        trHSC.Visible = true;
                    }
                    HMMarks.Text = ds.Tables[0].Rows[0]["HMMarks"].ToString().ToUpper();
                    HOMarks.Text = ds.Tables[0].Rows[0]["HOMarks"].ToString().ToUpper();
                    HPerc.Text = ds.Tables[0].Rows[0]["HPerc"].ToString().ToUpper();
                    GradeSSC.Text = ds.Tables[0].Rows[0]["GradeSSC"].ToString().ToUpper();
                    HBoard.Text = ds.Tables[0].Rows[0]["HBoard"].ToString().ToUpper();
                    HPassingYear.Text = ds.Tables[0].Rows[0]["HPassingYear"].ToString().ToUpper();
                    HRollNo.Text = ds.Tables[0].Rows[0]["HRollNo"].ToString().ToUpper();
                    ISubject.Text = ds.Tables[0].Rows[0]["ISubject"].ToString().ToUpper();
                    if (ISubject.Text == "")
                    {
                        trIntermediate.Visible = false;
                    }
                    else
                    {
                        trIntermediate.Visible = true;
                    }
                    IMMarks.Text = ds.Tables[0].Rows[0]["IMMarks"].ToString().ToUpper();
                    IOMarks.Text = ds.Tables[0].Rows[0]["IOMarks"].ToString().ToUpper();
                    IPerc.Text = ds.Tables[0].Rows[0]["IPerc"].ToString().ToUpper();
                    GradeHSC.Text = ds.Tables[0].Rows[0]["GradeHSC"].ToString().ToUpper();
                    IBoard.Text = ds.Tables[0].Rows[0]["IBoard"].ToString().ToUpper();
                    IPassingYear.Text = ds.Tables[0].Rows[0]["IPassingYear"].ToString().ToUpper();
                    IRollNo.Text = ds.Tables[0].Rows[0]["IRollNo"].ToString().ToUpper();
                    ITISubject.Text = ds.Tables[0].Rows[0]["ITISubject"].ToString().ToUpper();
                    ITIMMarks.Text = ds.Tables[0].Rows[0]["ITIMMarks"].ToString().ToUpper();
                    ITIOMarks.Text = ds.Tables[0].Rows[0]["ITIOMarks"].ToString().ToUpper();
                    ITIPerc.Text = ds.Tables[0].Rows[0]["ITIPerc"].ToString().ToUpper();
                    GradeITI.Text = ds.Tables[0].Rows[0]["GradeITI"].ToString().ToUpper();
                    ITIBoard.Text = ds.Tables[0].Rows[0]["ITIBoard"].ToString().ToUpper();
                    ITIPassingYear.Text = ds.Tables[0].Rows[0]["ITIPassingYear"].ToString().ToUpper();
                    ITIRollNo.Text = ds.Tables[0].Rows[0]["ITIRollNo"].ToString().ToUpper();

                    GSubject.Text = ds.Tables[0].Rows[0]["GSubject"].ToString().ToUpper();
                    if (GSubject.Text == "")
                    {
                        trGraduation.Visible = false;
                    }
                    else
                    {
                        trGraduation.Visible = true;
                    }

                    GMMarks.Text = ds.Tables[0].Rows[0]["GMMarks"].ToString().ToUpper();
                    GOMarks.Text = ds.Tables[0].Rows[0]["GOMarks"].ToString().ToUpper();
                    GPerc.Text = ds.Tables[0].Rows[0]["GPerc"].ToString().ToUpper();
                    GradeGraduation.Text = ds.Tables[0].Rows[0]["GradeGraduation"].ToString().ToUpper();
                    GBoard.Text = ds.Tables[0].Rows[0]["GBoard"].ToString().ToUpper();
                    GPassingYear.Text = ds.Tables[0].Rows[0]["GPassingYear"].ToString().ToUpper();
                    GRollNo.Text = ds.Tables[0].Rows[0]["GRollNo"].ToString().ToUpper();

                    HGrading.Text = ds.Tables[0].Rows[0]["HGrading"].ToString().ToUpper();
                    IGrading.Text = ds.Tables[0].Rows[0]["IGrading"].ToString().ToUpper();
                    ITIGrading.Text = ds.Tables[0].Rows[0]["ITIGrading"].ToString().ToUpper();
                    GGrading.Text = ds.Tables[0].Rows[0]["GGrading"].ToString().ToUpper();

                    lblDOBprrof.Text = ds.Tables[0].Rows[0]["DOBProof"].ToString().ToUpper();
                    lblCategoryproof.Text = ds.Tables[0].Rows[0]["CategoryProof"].ToString().ToUpper();
                    lblExserviceman.Text = ds.Tables[0].Rows[0]["ExservicemanProof"].ToString().ToUpper();
                    lblPWDcertificate.Text = ds.Tables[0].Rows[0]["PWDPrrof"].ToString().ToUpper();

                    if (ds.Tables[0].Rows[0]["CateogoryID"].ToString() == "1" || ds.Tables[0].Rows[0]["CateogoryID"].ToString() == "2")
                    {
                        lblFeeDt.Text = ds.Tables[0].Rows[0]["Total_Amount"].ToString().ToUpper();
                        lblTransNo.Text = ds.Tables[0].Rows[0]["Order_no"].ToString().ToUpper();
                        lblTransDt.Text = ds.Tables[0].Rows[0]["TransDt"].ToString().ToUpper();
                        if (lblFeeDt.Text != "")
                            lblStatus.Text = "Successfull.";
                    }
                    else
                    {
                        lblFeeDt.Text = "NA";
                        lblTransNo.Text = "NA";
                        lblTransDt.Text = "NA";
                        lblStatus.Text = "NA";
                    }

                    if (lblPD.Text == "YES")
                    {
                        lblFeeDt.Text = "NA";
                        lblTransNo.Text = "NA";
                        lblTransDt.Text = "NA";
                        lblStatus.Text = "NA";
                    }

                    string PaymentMode = ds.Tables[0].Rows[0]["PaymentMode"].ToString().ToUpper();
                    if(PaymentMode == "SBI")
                    {
                        DataSet DS1 = MySql.GetDataSet("SELECT TOP 1 * FROM ManualPayment WHERE [APPLICATION NUMBER] = '" + Convert.ToString(Session["canid"]) + "'");
                        lblFeeDt.Text = DS1.Tables[0].Rows[0]["Amount"].ToString().ToUpper();
                        lblTransNo.Text = DS1.Tables[0].Rows[0]["Bank Reference No"].ToString().ToUpper();
                        lblTransDt.Text = DS1.Tables[0].Rows[0]["Transaction Date"].ToString().ToUpper();
                        if (lblFeeDt.Text != "")
                            lblStatus.Text = "Successfull.";
                    }

                }
            }
        }
        catch (Exception ex)
        {

            LogError(ex);
        }
    }

}