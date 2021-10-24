using Common.Class;
using EvoPdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_WelcomePage : System.Web.UI.Page
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Stop = MySql.SingleCellResultInString("Select Stop from tbabmCandidateInfo Where Canid = '" + Convert.ToString(Session["CanId"]) + "'");

            btnDownloadAdmitCard.Visible = false;
            if (Stop == "0")
            {
                btnDownloadAdmitCard.Visible = true;
            }
        }
    }


    protected void btnAdmitCard_Click(object sender, EventArgs e)
    {
        string GetRollno = MySql.SingleCellResultInString("Select top(1) RollNumber from dbo.tbabmCandidateInfo where Canid='" + Session["CanId"].ToString() + "' ");
        string AdmitCardUrl = ConfigurationManager.AppSettings["AdmitCardUrl"].ToString();
        string AdmitCardSavePath = ConfigurationManager.AppSettings["AdmitCardSavePath"].ToString();

        if (GetRollno != "")
        {
            PdfConverter pdfConverter = new PdfConverter();
            // set the license key - required
            pdfConverter.LicenseKey = "aOb15/T05/D15/Pp9+f09un29en+/v7+";
            try
            {
                string url = "";
                url = AdmitCardUrl + GetRollno + "";

                // PdfConverter pdfConverter = new PdfConverter();

                // inform the converter about the HTML elements for which we want     the location in PDF
                // in this sample we want the location of IMG, H1 and H2 elements  and the elements having ID 'id1' or 'id2'
                pdfConverter.HtmlElementsMappingOptions.HtmlElementSelectors = new string[] { "IMG", "H1", "H2", "#id1", "#id2" };

                // call the converter and get a Document object from URL
                Document pdfDocument = pdfConverter.GetPdfDocumentObjectFromUrl(url);

                // iterate over the HTML elements locations and hightlight each element with a green rectangle
                foreach (HtmlElementMapping elementMapping in pdfConverter.HtmlElementsMappingOptions.HtmlElementsMappingResult)
                {
                    // because a HTML element can span over many PDF pages the mapping

                    // of the HTML element in PDF document consists in a list of rectangles,
                    // one rectangle for each PDF page where this element was rendered
                    foreach (HtmlElementPdfRectangle elementLocationInPdf in elementMapping.PdfRectangles)
                    {
                        // get the PDF page
                        PdfPage pdfPage = pdfDocument.Pages[elementLocationInPdf.PageIndex];
                        RectangleF pdfRectangleInPage = elementLocationInPdf.Rectangle;

                        // create a RectangleElement to highlight the HTML element
                        RectangleElement highlightRectangle = new RectangleElement(pdfRectangleInPage.X, pdfRectangleInPage.Y,
                            pdfRectangleInPage.Width, pdfRectangleInPage.Height);
                        // highlightRectangle.ForeColor = Color.Black;
                    }
                }

                // save the PDF bytes in a file on disk
                string outFilePath = System.IO.Path.Combine(AdmitCardSavePath, GetRollno + ".pdf ");
                try
                {
                    pdfDocument.Save(outFilePath);
                    string UpdateStatus = "Update dbo.tbabmCandidateInfo set DownloadAdmitCard='1', DownloadAdmitCardDate =Getdate() Where RollNumber='" + GetRollno + "'";
                    MySql.ExecuteNonQuery(UpdateStatus);
                }
                finally
                {

                }
            }
            catch (Exception ex)
            {
                return;
            }
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + GetRollno + ".pdf");
            Response.TransmitFile(AdmitCardSavePath + "/" + GetRollno + ".pdf");
            Response.End();
        }

    }
}