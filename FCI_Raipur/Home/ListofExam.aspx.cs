using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Common.Class;
using System.Resources;
using System.Globalization;
using System.Threading;


public partial class Home_ListofExam : ClsErrorLog
{
    ResourceManager rm;
    CultureInfo ci;
    CommonPerception Mysql = new CommonPerception();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
        rm = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
        ci = Thread.CurrentThread.CurrentCulture;
        LoadString(ci);
    }
    private void LoadString(CultureInfo ci)
    {

        try
        {
            lblImpDate.Text = rm.GetString("IMPDATE", ci).ToString();
       //     lbllang.Text = rm.GetString("Lang", ci).ToString();
            lblCMAT.Text = "Chhattisgarh Region";
            lblCMAT1.Text = "";
            lblhome.Text = rm.GetString("home", ci).ToString();
            lbleligibilty.Text = rm.GetString("eligibility", ci).ToString();
            lblpaymentprocess.Text = rm.GetString("Paymentprocess", ci).ToString();
            lbltestcities.Text = rm.GetString("TestCities", ci).ToString();
            lbltestpatern.Text = rm.GetString("TestPattern", ci).ToString();
            lblnotification.Text = rm.GetString("Notification", ci).ToString();
            lbladvertisement.Text = rm.GetString("advertisement", ci).ToString();
            lblpressrelese.Text = rm.GetString("PressRelease", ci).ToString();
            lblstategovernment.Text = rm.GetString("stategovernment", ci).ToString();
            lbluniversity.Text = rm.GetString("university", ci).ToString();
            lblpassresult.Text = rm.GetString("PassResult", ci).ToString();
            lblfaq.Text = rm.GetString("FAQ", ci).ToString();
            lblregistrationstartdate.Text = rm.GetString("Registrationstartdate", ci).ToString();
            lblregistrationenddate.Text = rm.GetString("Registrationenddate", ci).ToString();
            //lblexamdate.Text = rm.GetString("examdate", ci).ToString();
            //lblresultdeclartion.Text = rm.GetString("Resultdeclarationdate", ci).ToString();
            //lblprintscorecard.Text = rm.GetString("printofscorecard", ci).ToString();

            //lblregistrationstartdate1.Text = rm.GetString("Registrationstartdate1", ci).ToString();
            //lblregistrationenddate1.Text = rm.GetString("Registrationenddate1", ci).ToString();
            //lblexamdate1.Text = rm.GetString("examdate1", ci).ToString();
            //lblresultdeclartion1.Text = rm.GetString("Resultdeclarationdate1", ci).ToString();
            //lblprintscorecard1.Text = rm.GetString("printofscorecard1", ci).ToString();

            lblnewuser.Text = rm.GetString("Newregistraion", ci).ToString();
            lblexistinguser.Text = rm.GetString("Existinguser", ci).ToString();
            lblHowtoapply.Text = rm.GetString("Howtoapply", ci).ToString();
            lblinstructionoffillingform.Text = rm.GetString("Insturctionforfillingform", ci).ToString();

            lblAboutCMAT.Text = rm.GetString("AboutCMAT", ci).ToString();
            lblAboutCMAT1.Text = rm.GetString("AboutCMAT1", ci).ToString();

            lblSampleDocuments.Text = rm.GetString("sampledocumet", ci).ToString();
            lblCategoryCertificate.Text = rm.GetString("CastCertificate", ci).ToString();
            lblpd.Text = rm.GetString("PhysicallyDisabledScribeForm", ci).ToString();
            lblCandidateIdentificationAffidavit.Text = rm.GetString("CandidateIdentificationAffidavit", ci).ToString();
            lblScribeUndertakingCertificate.Text = rm.GetString("ScribeUndertakingCertificatebyCandidate", ci).ToString();
          //  lbltestcities1.Text = rm.GetString("TestCities", ci).ToString();
           // lblcities.Text = rm.GetString("CMATisconductedinvariouscitiesacrossIndia", ci).ToString();
           // lblTrialTest.Text = rm.GetString("TrialTest", ci).ToString();
           // lblCMATTrialTest.Text = rm.GetString("CMATTrialTest", ci).ToString();
           // lblGPAT.Text = rm.GetString("GPAT2016", ci).ToString();
           // lblGPAT1.Text = rm.GetString("GraduatePharmacyAptitudeTest2016", ci).ToString();
            lblHelpline.Text = rm.GetString("Helpline", ci).ToString();
            //lblemail.Text = rm.GetString("helplineEmail", ci).ToString();
            lbltelephone.Text = rm.GetString("helplinetelephone", ci).ToString();
            lblFeedback.Text = rm.GetString("Feedback", ci).ToString();
            lblPressr.Text = rm.GetString("Pressr", ci).ToString();
            lblPressEng.Text = rm.GetString("PressEng", ci).ToString();
            lblPressHindi.Text = rm.GetString("PressHindi", ci).ToString();

        }
        catch (Exception ex)
        {

            LogError(ex);
        }






    }
}