<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Candidate_Print" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">

        <div class="row">
            <%--  <div id="bodyContentPlaceHolder_msgdiv" role="alert" class="" style="padding-top: 10px">
                <strong><span id="bodyContentPlaceHolder_msgLabel"></span></strong>
            </div>--%>
            <asp:HiddenField ID="hfCategory" runat="server" />
            <div class="clearfix">&nbsp;</div>
            <div class="col-xs-12 col-sm-12 col-md-1" style="width: 95%; top: 0px; left: 0px;">
                <div class="form-horizontal">
                    <div>
                        <span style="color: black; font-weight: bold; font-size: 14px">APPLICATION FORM :
                            <asp:Label ID="lblCType1" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                    <br />
                    <h4 style="font-style: italic; font-weight: bold; font-family: Verdana; font-size: 16px; color: blue;">Personal Information</h4>
                    <hr />
                    <div>
                        <table class="table table-striped table-bordered dataTable no-footer" style="color: Black">
                            <tbody>
                                <tr>
                                    <%--<td style="width: 5%;">1.</td>--%>
                                    <td style="width: 25%;">
                                        <asp:Label ID="lblApplicationNo" runat="server" Text="Application No. : "></asp:Label>
                                    </td>
                                    <td style="width: 45%;">
                                        <asp:Label ID="lblApplicationNo0" runat="server" Text="" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td rowspan="6" style="text-align: center;">
                                        <asp:Image ID="Image1" runat="server" Width="150px" Height="150px" />
                                        <br />
                                        <%--<asp:Image ID="Image3" runat="server" Width="330px" Height="50px" />--%>
                                    </td>
                                </tr>
                                <tr>
                                    <%--<td>5.</td>--%>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="Post Applied For/आवेदित पद:"></asp:Label>
                                        <%-- <span class="span" style="color: Green; font-size:x-small;">(As entered in the X/XII Standard Marks Statement)</span>--%>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblCType" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <%--<td>6.</td>--%>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Date of Birth/ जन्मतिथि:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lbldob" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">11.</td>--%>
                                    <td style="width: 25%;">Candidate's Full Name/अभ्यर्थी का पूरा नाम:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>





                                <tr>
                                    <%--<td style="width: 5%;">12.</td>--%>
                                    <td style="width: 25%;">Father's Full Name / पिता का पूरा नाम:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblFather" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">13.</td>--%>
                                    <td style="width: 25%;">Mother's Full Name/ माता का पूरा नाम:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblMother" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">14.</td>--%>
                                    <td style="width: 25%;">Gender/ लिंग:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblGender" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">14.</td>--%>
                                    <td style="width: 25%;">NATIONALITY/ राष्ट्रीयता:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblNationality" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">14.</td>--%>
                                    <td style="width: 25%;">MINORITY / अल्पसंख्यक:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblMinority" runat="server" Text=""></asp:Label></td>
                                </tr>



                                <tr style="display: none;">
                                    <td style="width: 5%;">15.</td>
                                    <td style="width: 25%;">Religion:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblreligion" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">16.</td>--%>
                                    <td style="width: 25%;">Aadhar Number/आधार क्रमांक:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblAdhar" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">16.</td>--%>
                                    <td style="width: 25%;">WHETHER CANDIDATE EMPLOYED IN FOOD CORPORATION OF INDIA/क्या अभ्यर्थी भारतीय खाद्य निगम में कार्यरत है:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblFciEmp" runat="server" Text=""></asp:Label></td>
                                </tr>



                                <tr>
                                    <%--<td style="width: 5%;">17.</td>--%>
                                    <td style="width: 25%;">Category/ वर्ग:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblCategory" runat="server" Text=""></asp:Label></td>
                                </tr>





                                <tr>
                                    <%--<td style="width: 5%;">18.</td>--%>
                                    <td style="width: 25%;">Ex-Serviceman/ भूतपूर्व सैनिक:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblExservice" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr runat="server" id="trServiceMan" visible="false">
                                    <%--<td style="width: 5%;">18.</td>--%>
                                    <td style="width: 25%;">Service Period:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <table width="100%">
                                            <tr>
                                                <td width="25%">Service Year(s)
                                                </td>

                                                <td width="25%">
                                                    <asp:Label ID="lblServiceYear" runat="server"></asp:Label>
                                                </td>
                                                <td width="25%">Service Month(s)
                                                </td>

                                                <td width="25%">
                                                    <asp:Label ID="lblServiceMonths" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>





                                <tr>
                                    <%--<td style="width: 5%;">19.</td>--%>
                                    <td style="width: 25%;">Physical Disability 40% or more/40% या अधिक निःशक्तता:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblPD" runat="server" Text=""></asp:Label></td>
                                </tr>





                                <tr id="trdisabilitytype" runat="server" visible="false">
                                    <%--<td style="width: 5%;">19 (a).</td>--%>
                                    <td style="width: 25%;">Type of Disability:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblDisability" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr id="trdisabilitytype1" runat="server" visible="false">
                                    <%--<td style="width: 5%;">19 (a).</td>--%>
                                    <td style="width: 25%;">Disability Certificate Registraion Number/Serial Number:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblCertificateNo" runat="server" Text=""></asp:Label></td>
                                </tr>




                                <tr>
                                    <%--<td style="width: 5%;">20.</td>--%>
                                    <td style="width: 25%;">Mobile Number/ मोबाइल नंबर:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblmobile" runat="server" Text=""></asp:Label></td>
                                </tr>





                                <tr>
                                    <%--<td style="width: 5%;">21.</td>--%>
                                    <td style="width: 25%;">Email Id/ ई-मेल आईडी:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr style="vertical-align: top;">
                                    <%--<td style="width: 3%">22.</td>--%>
                                    <td style="width: 30%">
                                        <asp:Label ID="lblpostalAddress" runat="server" Text="Permanent Address:"></asp:Label>
                                    </td>
                                    <td colspan="4">
                                        <table border="0" style="width: 100%;">
                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="lblAdd1" runat="server" Text="Address/पता:"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="lblstate1" Text="State/U.T./राज्य/संघ राज्य छेत्र:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblState" Text="" runat="server"></asp:Label>
                                                </td>

                                            </tr>

                                            <tr runat="server">
                                                <td style="width: 32%">
                                                    <asp:Label ID="lbldistrict1" Text="District/जिला:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblDistrict" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>
                                            <tr runat="server">
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label2" Text="Tehsil/City/तहसील/शहर:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblCity" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="lblPincode" runat="server" Text="Pincode/पिन कोड:"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblpincode0" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>

                                        </table>
                                    </td>
                                </tr>

                                <tr style="vertical-align: top;">
                                    <%--<td style="width: 3%">23.</td>--%>
                                    <td style="width: 30%">
                                        <asp:Label ID="Label3" runat="server" Text="Current Address:"></asp:Label>
                                    </td>
                                    <td colspan="4">
                                        <table border="0" style="width: 100%;">
                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label17" runat="server" Text="Address/पता:"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblCAdd" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label21" Text="State/U.T./राज्य/संघ राज्य छेत्र:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblCstate" Text="" runat="server"></asp:Label>
                                                </td>

                                            </tr>

                                            <tr runat="server">
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label24" Text="District/जिला:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblCDist" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>
                                            <tr runat="server">
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label26" Text="City/तहसील/शहर:" runat="server"></asp:Label>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblCCity" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td style="width: 32%">
                                                    <asp:Label ID="Label28" runat="server" Text="Pincode/पिन कोड:"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblCPincode" runat="server" Text=""></asp:Label>
                                                </td>

                                            </tr>

                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">24.</td>--%>
                                    <td style="width: 25%;">Exam City 1/परीक्षा शहर:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblExamCity" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">24.</td>--%>
                                    <td style="width: 25%;">Exam City 2/परीक्षा शहर:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblExamCity2" runat="server" Text=""></asp:Label></td>
                                </tr>

                                <tr>
                                    <%--<td style="width: 5%;">24.</td>--%>
                                    <td style="width: 25%;">Exam City 3/परीक्षा शहर:</td>
                                    <td style="width: 45%;" colspan="2">
                                        <asp:Label ID="lblExamCity3" runat="server" Text=""></asp:Label></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <h4 style="font-style: italic; font-weight: bold; font-family: Verdana; font-size: 16px; color: blue;" class="center">Qualification Details </h4>
                    <div>
                        <table class="table table-striped table-bordered dataTable no-footer" style="color: Black">


                            <tr>
                                <td style="width: 13%">Examination/इंतिहान</td>
                                <td style="width: 14%">Subject/विषय</td>
                                <td style="width: 8%">Maximum Marks/अधिकतम अंक</td>
                                <td style="width: 8%">Obtained Marks/ प्राप्त अंक</td>
                                <td style="width: 8%">Percentage/प्रतिशत</td>
                                <td style="width: 8%">Grades/ग्रेड</td>
                                <td style="width: 8%">Grade/Grade Value/ग्रेड/ग्रेड वैल्यू</td>
                                <td style="width: 14%">Board/Institution/बोर्ड/संस्थान/विश्वविद्यालय का नाम</td>
                                <td style="width: 8%">Passing Year/उत्तीर्ण वर्ष</td>
                                <td style="width: 13%">Roll Numbe/रोल नंबरr</td>
                            </tr>

                            <tr>
                                <td style="width: 13%">8TH STD</td>
                                <td style="width: 14%">
                                    <asp:Label ID="ITISubject" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="ITIMMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="ITIOMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="ITIPerc" runat="server" Text=""></asp:Label></td>
                                 <td style="width: 8%">
                                    <asp:Label ID="ITIGrading" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GradeITI" runat="server" Text=""></asp:Label></td>
                                <td style="width: 14%">
                                    <asp:Label ID="ITIBoard" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="ITIPassingYear" runat="server" Text=""></asp:Label></td>
                                <td style="width: 13%">
                                    <asp:Label ID="ITIRollNo" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr id="trHSC" runat="server" visible="false">
                                <td style="width: 13%">HIGH SCHOOL / EQUIVALENT</td>
                                <td style="width: 14%">
                                    <asp:Label ID="HSubject" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="HMMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="HOMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="HPerc" runat="server" Text=""></asp:Label></td>
                                 <td style="width: 8%">
                                    <asp:Label ID="HGrading" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GradeSSC" runat="server" Text=""></asp:Label></td>
                                <td style="width: 14%">
                                    <asp:Label ID="HBoard" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="HPassingYear" runat="server" Text=""></asp:Label></td>
                                <td style="width: 13%">
                                    <asp:Label ID="HRollNo" runat="server" Text=""></asp:Label></td>
                            </tr>


                            <tr id="trIntermediate" runat="server" visible="false">
                                <td style="width: 13%">INTERMEDIATE / EQUIVALENT</td>
                                <td style="width: 14%">
                                    <asp:Label ID="ISubject" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="IMMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="IOMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="IPerc" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="IGrading" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GradeHSC" runat="server" Text=""></asp:Label></td>
                                <td style="width: 14%">
                                    <asp:Label ID="IBoard" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="IPassingYear" runat="server" Text=""></asp:Label></td>
                                <td style="width: 13%">
                                    <asp:Label ID="IRollNo" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr id="trGraduation" runat="server" visible="false">
                                <td style="width: 13%">GRADUATION</td>
                                <td style="width: 14%">
                                    <asp:Label ID="GSubject" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GMMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GOMarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GPerc" runat="server" Text=""></asp:Label></td>
                                 <td style="width: 8%">
                                    <asp:Label ID="GGrading" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GradeGraduation" runat="server" Text=""></asp:Label></td>
                                <td style="width: 14%">
                                    <asp:Label ID="GBoard" runat="server" Text=""></asp:Label></td>
                                <td style="width: 8%">
                                    <asp:Label ID="GPassingYear" runat="server" Text=""></asp:Label></td>
                                <td style="width: 13%">
                                    <asp:Label ID="GRollNo" runat="server" Text=""></asp:Label></td>
                            </tr>



                        </table>
                        <table style="display: none;" class="table table-striped table-bordered dataTable no-footer">


                            <tr>
                                <td style="width: 5%;">1.</td>
                                <td style="width: 25%;">Name of Institute:</td>
                                <td>
                                    <asp:Label ID="lblNameofinst" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td style="width: 5%;">2.</td>
                                <td style="width: 25%;">Name of Council/University:</td>
                                <td>
                                    <asp:Label ID="lbluniversity" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td style="width: 5%;">3.</td>
                                <td style="width: 25%;">Name of Trade/Course:</td>
                                <td>
                                    <asp:Label ID="lbltrade" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td style="width: 5%;">4.</td>
                                <td style="width: 25%;">Course Start Date:</td>
                                <td>
                                    <asp:Label ID="lblCStartdate" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                                <td style="width: 5%;">5.</td>
                                <td style="width: 25%;">Course End Date:</td>
                                <td>
                                    <asp:Label ID="lblCEnddate" runat="server" Text=""></asp:Label></td>
                            </tr>

                        </table>

                    </div>

                    <h4 style="font-style: italic; font-weight: bold; font-family: Verdana; font-size: 16px; color: blue;" class="center">Documents Upload Details:</h4>
                    <div>
                        <table class="table table-striped table-bordered dataTable no-footer" style="color: Black">
                            <tr id="trdobproof" runat="server" visible="false">
                                <%--<td style="width: 5%;">1.</td>--%>
                                <td style="width: 25%; text-wrap: normal;">
                                    <asp:Label ID="Label9" runat="server" Text="DOB Proof: "></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblDOBprrof" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr id="trcategoryproof" runat="server" visible="true">
                                <%--<td style="width: 5%;">2.</td>--%>
                                <td style="width: 25%; text-wrap: normal;">Category Proof:</td>
                                <td>
                                    <asp:Label ID="lblCategoryproof" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr id="trexservicemanDoc" runat="server" visible="true">
                                <%--<td style="width: 5%;">3.</td>--%>
                                <td style="width: 25%; text-wrap: normal;">Ex Serviceman Certificate:</td>
                                <td>
                                    <asp:Label ID="lblExserviceman" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr id="trpwdDoc" runat="server" visible="true">
                                <%--<td style="width: 5%;">4.</td>--%>
                                <td style="width: 25%; text-wrap: normal;">Pwd Certificate:</td>
                                <td>
                                    <asp:Label ID="lblPWDcertificate" runat="server" Text=""></asp:Label></td>
                            </tr>



                        </table>
                    </div>

                    <h4 style="font-style: italic; font-weight: bold; font-family: Verdana; font-size: 16px; color: blue;" class="center">Payment Status</h4>
                    <div>
                        <table class="table table-striped table-bordered dataTable no-footer">
                            <thead>
                                <tr>
                                    <th width="25%">Fee Details</th>
                                    <th width="25%">Transaction ID</th>
                                    <th width="25%">Transaction Date</th>
                                    <th width="25%">Status</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblFeeDt" runat="server" Text=""></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblTransNo" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblTransDt" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <%--<br />--%>
                    <h5 style="font-style: italic; font-weight: bold; font-family: Verdana; font-size: 16px; color: blue;" class="center">Declaration:</h5>
                    <div>
                        <table class="table table-striped table-bordered dataTable no-footer" style="color: Black">
                            <tbody>
                                <tr>

                                    <td colspan="4">
                                        <asp:Label ID="lblDeclarartion" runat="server" Text="I hereby declare that the information submitted by me is correct and true to the best of my knowledge. I shall be liable for any disciplinary/punitive action in case any of the details are found to be incorrect. "></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>

                                    <td colspan="4">
                                        <div style="float: right">
                                            <asp:Image ID="Image2" runat="server" Width="330px" Height="50px" />
                                            <br />
                                            <br />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" valign="middle" align="center">

                                        <asp:Button ID="btnprint" Visible="true" runat="server" Text="PRINT" BackColor="#3F8B3F" ForeColor="White" Width="100px" OnClientClick="javascript:window.print();" class="btn btn-lg btn-primary btn-block" />

                                    </td>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnexit" runat="server" Text="EXIT" BackColor="#3F8B3F" Width="100px"
                                            ForeColor="White" class="btn btn-lg btn-primary btn-block" PostBackUrl="~/Home/ListofExam.aspx" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="form-group" style="text-align: center">
                        <div class="col-lg-12">
                            <%--  <input type="submit" name="ctl00$bodyContentPlaceHolder$RegisterButton" value="Register" id="bodyContentPlaceHolder_RegisterButton1" class="btn btn-success" />--%>
                            <%-- <asp:Button ID="btnModify" runat="server" CssClass="btn btn-success"  Text="Modify" width="200px" Height="40px" OnClick="btnModify_Click" Visible="false"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-success"  Text="Proceed To Payment" width="200px" Height="40px" OnClick="btnRegister_Click"  />&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnExit" runat="server" CssClass="btn btn-success"  Text="Exit" width="200px" Height="40px" OnClick="btnExit_Click" />--%>
                        </div>
                    </div>
                    <%-- </div>--%>
                </div>
            </div>
        </div>
        <!--/.row-->

    </div>
</asp:Content>

