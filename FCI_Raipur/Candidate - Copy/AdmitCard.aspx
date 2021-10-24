<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="Candidate_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }

        .auto-style2 {
            width: 293px;
        }

        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <div>
            <table style="width:100%;border-style:solid; background-attachment: scroll; background-repeat: repeat; background-image:Url(../Images/AUWM.jpg)"><tr><td>
            <table style="width: 100%; font-size: 14px; font-family: Verdana;">
                <tr>
                    <td style="width: 0.5%"></td>
                    <td style="width: 99%">
                        
                        <table style="width:100%;font-size:14px;border-width: thin; border-color:black; height: 25px;" border="1" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="text-align: center;" >
                                    <img src="../Images/fci.png" style="height: 90px; width: 129px" /></td>
                                <td style="text-align: center; vertical-align: top;" ><span style="font-size: 24px; font-weight: bold;">FOOD CORPORATION OF INDIA</span><br />
                                    <br />
                                    <br />
                                    <span><strong>CHHATTISGARH REGION , RECRUITMENT OF WATCHMAN EXAM - 2017</strong></span><br />
                                    </td>
                                <td style="vertical-align:top;padding-top:0.1cm;padding-left:0.7cm;" >
                                    <table style="width: 90%;height:35px;" border="1">
                                        <tr>
                                            <td style="border:1px;">
                                                <asp:Image ID="Barcode" runat="server" Height="44px" 
                                                    Width="295px" />
                                            </td>
                                        </tr>
                                    </table><br />
                                    <span class="auto-style1"><strong>MODE OF EXAMINATION:</strong></span><asp:Label ID="lblmod" Font-Size="14px"  runat="server" Text="" style="font-weight: 700; font-size: 12px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 0.5%"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><table style="width:100%">
                            <tr>
                                <td style="width:40%;font-weight:bold;height:42px;"><asp:Label ID="lblcourseheader" runat="server" Visible="false" Text="COURSE APPLIED:">

                                </asp:Label><asp:Label Font-Size="13px" Visible="false" ID="lblcourse" runat="server" Text="" style="font-size: 13pt"></asp:Label></td>
                                <td style="width:60%;text-align:left;font-size:18px;font-weight:bold;text-decoration:underline;height:42px;"><asp:Label ID="lbladmit" runat="server" Visible="true" Text="ADMIT CARD"></asp:Label></td>
                            </tr>
                        </table></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <table style="width:100%">
                            <tr>
                                <td style="width:5%;vertical-align:top;padding-top:0.2cm;"><span style="font-size:14px;font-weight:bold;text-decoration:underline;">NOTE:</span>
                                    </td>
                                <td style="width:95%;padding-top:0.2cm;">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="THIS ADMIT CARD PROVISIONALLY ALLOWS YOU TO APPEAR IN  THE EXAMINATION ON THE BASIS OF PARTICULARS PROVIDED BY YOU IN THE ONLINE APPLICATION. MERELY ISSUANCE OF THIS ADMIT CARD DOES NOT NECESSARILY MEAN ACCEPTANCE OF YOUR ELIGIBILITY. YOUR DOCUMENTS  REGARDING ELIGIBILITY WILL BE SCRUITINIZED SUBSEQUENTLY." style="font-size: 12px"></asp:Label></td>
                            </tr>

                        </table>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                     <td>
                         <table style="width:100%;font-size:12px;border-width: thin; border-color:black ;" border="1" cellpadding="0" cellspacing="0"  >
                             <tr>
                                 <td colspan="3" style="height:10px"></td>
                             </tr>
                             <tr>
                                 <td colspan="3" bgcolor="Silver" style="text-align:center;height:22px;"><span style="text-align:center;font-size:16px;font-weight:bold;">CANDIDATE DETAILS</span></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CANDIDATE’S NAME:</strong></td>
                                  <td style="width:60%;padding-left:.1cm;height:26px;">
                                      <asp:Label ID="lblcandname" runat="server" Text=""></asp:Label></td>
                                  <td style="width:20%; padding-left:0.3cm;" rowspan="9">
                                      <table style="width:95%;height:180px;border-width: thin; border-color:black ;" border="1" cellpadding="0" cellspacing="0">
                                          <tr>
                                              <td>
                                                  
                                                  <asp:Image ID="Image1" Height="180px" Width="98%" runat="server" />
                                                  <br />
                                                  <asp:Image ID="Image2" Height="50px" Width="98%" runat="server" />
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:35px;" bgcolor="Silver"><strong>PRESENT  ADDRESS:</strong></td>
                                  <td style="width:60%;;height:17px;padding-left:.1cm">
                                      <asp:Label ID="lblpresentadd" runat="server" Text=""></asp:Label></td>
                             </tr>
                              <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>APPLICATION NUMBER:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblApplicationNo" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>ROLL NO:</strong></td>
                                  <td style="width:60%;padding-left:.1cm;height:17px;">
                                      <asp:Label ID="lblRoll" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>FATHER’S NAME:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>MOTHER’S NAME:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblMotherName" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>DATE OF BIRTH:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>AADHAR NUMBER:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblAadhar" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CATEGORY:</strong></td>
                                  <td style="width:60%;padding-left:.1cm">
                                      <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label></td>
                             </tr>
                            
                             <tr><td colspan="3" style="text-align:center;font-size:16px;font-weight:bold;height:22px;" bgcolor="Silver">DETAILS OF EXAMINATION CENTER</td>
                                 <%--<td style="width:20%;">&nbsp;</td>
                                  <td style="width:60%;">&nbsp;</td>
                                  <td style="width:20%;">&nbsp;</td>--%>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>EXAMINATION CITY:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblExmcity" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CITY CODE:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblcitycode" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CENTER NAME:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblCentername" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CENTER CODE:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblCenterCode" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" rowspan="3" bgcolor="Silver"><strong>ADDRESS OF CENTER</strong></td>
                                  <td style="padding-left:.1cm;height:22px;" colspan="2">
                                      <asp:Label ID="lblnoc" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>
                                  <td style="padding-left:.1cm;height:26px;" colspan="2">
                                      <asp:Label ID="lblCadd1" runat="server" Text=""></asp:Label></td>
                             </tr>
                             
                             <tr>
                                  <td style="padding-left:.1cm;height:26px;" colspan="2">
                                      <asp:Label ID="lblPin" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <td colspan="3" style="text-align:center;font-size:16px;font-weight:bold;height:22px;" bgcolor="Silver">EXAMINATION SCHEDULE (DATE/SHIFT-TIMING)</td>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>DATE OF EXAMINATION:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblExmdate" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>REPORTING TIME:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblReptime" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>GATE CLOSURE TIME:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblgateclose" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>EXAM TIMING:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblExmDuration" runat="server" Text="10:00 AM to 12:00 Noon"></asp:Label></b></td>
                             </tr>
                             <tr style="display:none">
                                 <td colspan="3" style="text-align:center;font-size:16px;font-weight:bold;height:26px;" bgcolor="Silver">DETAILS OF COURSE/SUBJECT APPLIED</td>
                             </tr>
                             <tr style="display:none">
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>COURSE CATEGORY:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblCourseCat" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                            <tr style="display:none">
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>COURSE APPLIED:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <b>
                                      <asp:Label ID="lblCApplied" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                         </table>
                     </td>
                     <td></td>
                </tr>
                
                
                  <tr>
                                 <td colspan="3" style="height:10px"></td>
                             </tr>
                <tr>
                    <td></td>
                     <td style="text-align:center;font-size:16px;font-weight:bold;text-decoration:underline;">DECLARATION</td>
                     <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="I,…………………………………………………Son/Daughter of…………………………………………………….hereby declare and solemnly affirm that  I have fully understood all the details provided in the Advertisement  and accordingly all the particulars stated in the application form submitted  by me through Online ,are true to the best of my knowledge and belief. If at any stage it is found that the information furnished in the online application form is false/fake/misinterpreted/incorrect  or myself does not satisfy the eligibility criteria for the post applied, my candidature may be cancelled, even after appearing in the Examination in addition to any other action as may be deemed fit. I will not claim any refund of fees or compensation or any sort of damages."></asp:Label></td>
                    <td></td>
                </tr>
                
               <tr>
                    <td></td>
                    <td>
                        <table style="width:100%">
                              <tr style="width:100%">
                                <td style="text-align:center;width:40%">
                                   <div style="border-left:1px solid black;border-right:1px solid black;border-bottom:1px solid black;border-top:1px solid black;">

                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                      
                                    </div>
                                    
                                     <strong>LEFT HAND THUMB IMPRESSION 
                                </strong> 
                                    
                                </td>
                               <td style="text-align:center;width:30%">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    ...................................................................
                                    <br /><strong>SIGNATURE OF THE CANDIDATE</strong><br />
                                    <strong>Should be taken in presence of Invigilator at the time of examination
                                </strong></td>
                                    <td style="text-align:center;width:30%">
                                    <br /><br /><br /><br />...................................................................
                                    <br />
                                       <strong>INVIGILATOR SIGNATURE </strong><br />
                                        <span style="color:white;">Should be taken in presence of Invigilator at the time of examination</span>
                                   </td>
                            </tr>
                            </table>
                    </td>
                    <td></td>
                    
                </tr>
                
            </table>
                </td></tr></table><br />
           <span style="color:red;text-align:center;padding-left:2cm;font-weight:bold;"> Note: Please read the instructions carefully given in the page no. 2 of this admit card before appearing for the examination.</span>
        </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <div>
            <table style="width:100%;border-style:solid; background-attachment: scroll; background-repeat: repeat; background-image:Url(../Images/AUWM.jpg)"><tr><td>
            <table style="width:100%;font-family:Verdana;font-size:18px;" >
                <tr>
                    <td style="width:0.5%;"></td>
                     <td style="width:99%;text-align:center;text-decoration:underline;font-size:20px;font-weight:bold;">महत्वपूर्ण निर्देश</td>
                     <td style="width:0.5%;"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <%--<ol>
                             <li>Please bring this Admit  card  in original with any one Photo Identity Proof such as PAN Card/ Passport/ Driving License/ Voter’s Card/ Bank Passbook with photograph/    
                            Aadhar card or E-Aadhar in original.<br /><br />
                            </li>
                             <li><strong>Candidate without valid Photo ID proof will not be permitted to appear for the examination.</strong> If identity of the candidate is in doubt the candidate will not be allowed to 
                                 appear for the Examination.<br /><br />
                            </li>
                             <li>Candidate must report at the mentioned  Reporting Time. Candidate  will not be allowed to enter at the Examination  Centre after gate closure under any circumstances.<br /><br /></li>
                             <li>Please check the admit  card carefully  for your Name,  Date of Birth  and Category. In case of any discrepancy  in particulars on the admit card vis-a-vis stated on the confirmation  page, candidate may communicate to the Center Superintendent  for necessary action.<br /><br /></li>
                             <li>Candidate without Admit card shall not be allowed in the Examination  under any circumstances  by the center superintendent.<br /><br /></li>
                             <li>Candidate  shall not be allowed to leave the Examination  Hall before the conclusion  of the examination  and without handing over the OMR Answer Sheet and to the Invigilator concerned.<br /><br /></li>
                             <li>Candidate should check and ensure that the Test Booklet contains as many number of pages as written on the top of the cover page.<br /><br /></li>
                             <li>Candidate  shall not remove any page (s) form the Test Booklet  and if any page (s) is/are found  missing  from his/her  Test Booklet, he/she may be liable for suitable action.<br /><br /></li>
                             <li>Candidate should bring good quality <strong>black ball point pens</strong> for the examination.  <strong>Use of Pencil, Ink/Sketch Pen or Gel Pen IS STRICTLY PROHIBITED.</strong><br /><br /></li>
                             <li>Candidate  should  use <strong>black ball point pen </strong>only to write particulars  on the cover page of Test Booklet,  OMR    and for darkening the circles of responses.  Darken ONLY ONE CIRCLE for each answer as shown in the example below.  If you darken  more than one circle, that answer will not be evaluated.<br /><br /></li>
                             <li><br />
                                 <img  src="hallticketimg.png" /></li>
                             <li>PENCIL, Calculators,  Log  tables,  calculating  devices  or any other electronic  devices.  Communication Devices like Cellular Phone/Pager  etc. and Textual  materials  is strictly prohibited  in the examination  hall. No whitener/eraser/blade is allowed for changing answers.  Edible items and water bottles are not allowed.<br /><br /></li>
                             <li>If a candidate is in possession of cellular Phone/Pager/or any other electronic device during  the exam,  the same will be forfeited and his/her candidature
                                may be cancelled.  NO arrangements will be made in the Test Center to keep personal belongings. <strong>Pencil box, bags, purses etc are not allowed inside examination   hall.</strong><br /><br />
                                </li>
                             
                             
                            <li>The candidate should ensure that he/she has darkened the circle providing information on the Roll Number, Test booklet number,
                                Center code & Question paper series in the OMR Sheet.<br /><br />
                            </li>
                        </ol>--%>
                        <ol>
                            <li>
                                कृपया ध्यान रखें परीक्षा रोजगार समाचार पत्र में प्रकाशित सम्बंधित विज्ञापन क्रमांक  Estt.IV/DR-Watchman/01-2017 की कंडिकाओं के अंतर्गत सम्पादित की जाएगी |
                            </li>
                            <li>
                                अभ्यर्थी प्रवेश-पत्र की जांच कर लें तथा कोई भी विसंगति पाए जाने पर इ-मेल द्वारा fciraipurquery@gmail.com पर सूचित कर सकते है | सूचित करने की अंतिम तारीख 19 सितम्बर 2017 निर्धारित की गयी है|  
                            </li>
                             <li>
                                 प्रवेश-पत्र पर दिए गए परीक्षा केंद्र के पते के सम्बन्ध में अभ्यर्थी परीक्षा तिथि के कम से कम  एक दिन पूर्व आश्वस्त हो ले जिससे अभ्यर्थी को परीक्षा के दिन परीक्षा केंद्र खोजने में कोई परेशानी न हो | परीक्षा केंद्र न मिल पाने के सम्बन्ध में किसी भी प्रकार का अभ्यावेदन स्वीकार नहीं किया जाएगा |
                            </li>
                             <li>
                                 परीक्षा केंद्र परिवर्तन के सम्बन्ध में किसी भी प्रकार का आवेदन स्वीकार नहीं किया जाएगा |
                            </li>
                             <li>
                                 प्रवेश-पत्र तथा फोटो पहचान पत्र की मूल प्रति के बिना किसी भी अभ्यर्थी को परीक्षा हॉल में प्रवेश नहीं दिया जाएगा | इनमे से निम्न फोटो पहचान पत्र की मूल प्रति प्रस्तुत कर सकते है -  मतदाता पहचान पत्र/पासपोर्ट/ ड्राइविंग लाइसेंस/पैन कार्ड /आधार कार्ड /बैंक पासबुक फोटो सहित |
                            </li>
                             <li>
                                अभ्यर्थी परीक्षा प्रारम्भ होने के 30 मिनट पूर्व परीक्षा केंद्र में उपस्थित हो  |यदि अभ्यर्थी परीक्षा केंद्र में निर्धारित समय के पश्चात् उपस्थित होते हैं तो उन्हें परीक्षा में बैठने से वंचित किया जा सकेगा
                            </li>
                             <li>
                                 परीक्षा में आपकी उम्मीदवारी सर्वथा प्रावधिक है | चयन की किसी भी स्तर पर यदि यह पाया जाता है की आपने आवेदन फॉर्म में कोई भी जानकारी गलत/असत्य दी है अथवा आप अन्य किसी भी वजह से अनर्ह पाए जाते है, तो आपकी उम्मीदवारी चयन के किसी भी स्तर पर समाप्त की जावेगी|
                            </li>
                             <li>
                                 परीक्षा कक्ष में निर्धारित अनुक्रमांक पर ही बैठे एवं उपस्थिति पत्रक पर निर्धारित स्थान पर हस्ताक्षर कर निर्धारित  स्थान पर अपने बाएं हाथ के अंगूठे का निशान अवश्य लगावें |
                            </li>
                             <li>
                                 परीक्षा प्रारम्भ होने से पूर्व , प्रश्न पुस्तिका पर दिए गए निर्देशों को अच्छे से पढ़ लें अथवा प्रश्न पुस्तिका पर पूछी गयी जानकरी को भर लेवें |
                            </li>
                             <li>
                                 अभ्यर्थी अपने साथ उच्चतम गुणवत्ता वाला <strong>काले बॉल पॉइंट पेन (Black Ball Point Pen) </strong>अपने साथ लावे | पेंसिल ,इंक /स्केच पेन या अन्य कोई पेन पूर्णतः प्रतिबंधित है|</li>
                             <li>
                                 अभ्यर्थी  प्रश्न पुस्तिका  में प्रविष्टि  करने , OMR शीट अथवा वृत्त को काला करने के लिए <strong>काले बॉल पॉइंट पेन (Black Ball Point Pen)</strong>  का ही इस्तेमाल करें | हर प्रश्न के उत्तर के लिए  केवल एक ही वृत्त को काला करें, जैसा की नीचे दिए गए उदाहरण में बताया गया है | एक से अधिक वृत्त को काला करने पर उस प्रश्न के उत्तर का मूल्यांकन नहीं किया जाएगा|
                                 <br />
                                 <img  src="hallticketimg.png" />
                            </li>
                             <li>
                                 परीक्षा समाप्त होने के बाद, अभ्यर्थी OMR उत्तर पुस्तिका को परीक्षा कक्ष में मौजूद वीक्षक को सौंप कर ही परीक्षा कक्ष को छोड़े | परीक्षा समाप्त होने के बाद अभ्यर्थी प्रश्न पुस्तिका को अपने साथ ले जा सकते हैं|
                            </li>
                             <li>
                                 अभ्यर्थी अपने लिखित परीक्षा के प्रवेश-पत्र को संभाल कर रखें , यदि चयन प्रक्रिया के अगले चरण में आपको बुलाया जाता है तो कृपया इस प्रवेश-पत्र को प्रस्तुत करें|
                            </li>
                             <li>
                                 परीक्षा के दौरान अनुशासनहीनता तथा अनुचित साधनो का प्रयोग करने पर तत्काल आपके विरुद्ध कार्यवाही करते हुए आपको परीक्षा हॉल से निष्काषित किया जाएगा | प्रवेश-पत्र में किसी भी प्रकार की काँट छाँट करना , अपने स्थान पर किसी भी अन्य व्यक्ति से परीक्षा दिलवाना , परीक्षा कक्ष में किसी भी अन्य परीक्षार्थी से बात करना , इशारे करना , अन्य परीक्षार्थी की उत्तर पुस्तिका में झाक करना , परीक्षा में चिल्लाना , वीक्षक /केंद्राध्यक्ष / सेण्टर इंचार्ज/ परीक्षा कार्य में लगे अन्य कर्मचारियों से किसी भी प्रकार का अभद्र व्यवहार करना /धमकाना/शरीरीक चोट पहुंचना उक्त सभी अनुशासनहीनता की श्रेणी में माने जाएंगे |
                            </li>
                             <li>
                                 अभ्यर्थियों के लिए परीक्षा के दौरान पुस्तक , कॉपी ,किसी भी प्रकार के कागज/दस्तावेज , कैलक्युलेटर ,  लोग टेबल, मोबाइल फ़ोन , पेजर , किसी भी प्रकार के संचार साधन तथा अन्य कोई इलेक्ट्रॉनिक उपकरण पूर्णतः प्रतिबंधित है | यदि किसी अभ्यर्थी के पास उक्त में से कुछ भी पाया जाता है तो उसके विरुद्ध अनुचित साधन  का प्रकरण दर्ज  कर कार्यवाही की जाएगी |
                            </li>
                        </ol>
                    </td>
                    <td></td>
                </tr>
                 
            </table>
                </td></tr></table>
        </div>
    </div>
    </form>
</body>
</html>
