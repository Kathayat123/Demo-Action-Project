<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmitCard_Phase2.aspx.cs" Inherits="Candidate_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }

        p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}

        </style>
</head>
<body style="margin-bottom:0px;margin-top:0px;">
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
                                <td style="text-align: center; width:10%;display:none;" >
                                    <img src="../Images/fci.png" style="height: 90px; width: 109px" /></td>
                                <td style="text-align: center; vertical-align: top;  ><span style="font-size: 24px; font-weight: bold;">FOOD CORPORATION OF INDIA</span><br />
                                   
                                    <span><strong>REGIONAL OFFICE RAIPUR, CHHATTISGARH</strong></span><br />

                                    Direct Recruitment For The Post Of Watch Man (Advt. No.: Estt.IV/DR-Watchman/01/2017)
                                    <br />
                                    CALL LETTER FOR DOCUMENT VERIFICATION (DV)

                                    </td>
                                <td style="vertical-align:top;padding-top:0.1cm;padding-left:0.7cm;width:10%;display:none; " >
                                    <table style="width: 90%;height:35px;" border="1">
                                        <tr>
                                            <td style="border:1px;">
                                                <asp:Image ID="Barcode" runat="server" Height="44px" 
                                                    Width="150px" />
                                            </td>
                                        </tr>
                                    </table><br />
                                    <span class="auto-style1"><strong>Physical Endurance Test/शारीरिक दक्षता परीक्षा</strong></span><asp:Label ID="lblmod" Font-Size="14px"  runat="server" Text="" style="font-weight: 700; font-size: 12px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 0.5%"></td>
                </tr>
                <tr style="display:none;">
                    <td></td>
                    <td><table style="width:100%">
                            <tr>
                                <td style="width:100%;text-align:center;font-size:15px;font-weight:bold;text-decoration:underline;height:42px; align-content:center;" colspan="4"><asp:Label ID="lbladmit" runat="server" Visible="true" Text="ADMIT CARD- PHYSICAL ENDURANCE TEST"></asp:Label></td>
                            </tr>
                        </table></td>
                    <td></td>
                </tr>
                <tr style="display:none;">
                    <td></td>
                    <td>
                        <table style="width:100%">
                            <tr>
                                <td style="width:5%;vertical-align:top;padding-top:0.2cm;"><span style="font-size:13px;font-weight:bold;text-decoration:underline;">NOTE:</span>
                                    </td>
                                <td style="width:95%;padding-top:0.2cm;">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="THIS ADMIT CARD PROVISIONALLY ALLOWS YOU TO APPEAR IN THE EXAMINATION ON THE BASIS OF PARTICULARS PROVIDED BY YOU IN THE ONLINE APPLICATION. MERELY ISSUANCE OF THIS ADMIT CARD DOES NOT NECESSARILY MEAN ACCEPTANCE OF YOUR ELIGIBILITY. YOUR DOCUMENTS REGARDING ELIGIBILITY WILL BE SCRUITINIZED SUBSEQUENTLY." style="font-size: 12px"></asp:Label></td>
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
                             <td style="width:20%;" bgcolor="Silver"><strong>Date of PET & DV :</strong></td>
                                <td style="width: 30%">
                                      <b>
                                      <asp:Label ID="lblExmdate" runat="server" Text=""></asp:Label></b></td>
                             <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>Reporting Time:</strong></td>
                                <td style="width: 25%">&nbsp;&nbsp;<b style="width: 30%; font-size: x-small;"><br />
                                    <asp:Label ID="lblReptime" runat="server" Font-Size="Small"></asp:Label>
                                    <br />
                                    No entry will be allowed after <asp:Label ID="lblgateclos" runat="server" Font-Size="11px"></asp:Label>

                                                </b>
                             </tr>

                             <tr>
                                 <td style="height: 20px;width:25%;" bgcolor="Silver"><strong>CANDIDATE’S NAME:</strong></td>
                                  <td style="height: 20px;width:25%;">
                                      <asp:Label ID="lblcandname" runat="server" Text=""></asp:Label></td>
                                  <td style="width:25%; padding-left:0.3cm; padding-top:0.3cm; padding-right:0.3cm; padding-bottom:0.3cm;" rowspan="2" colspan="1">
                                      <table style="width:150px;height:150px;border-width: thin; border-color:black ;" border="1" cellpadding="0" cellspacing="0">
                                          <tr>
                                              <td>
                                                  
                                                  <asp:Image ID="Image1" Height="80%" Width="100%" runat="server"  />
                                    
                                              </td>
                                          </tr>
                                      </table>
                                  
                                  </td>
                                   
                                  <td style="width:25%; padding-left:0.3cm; padding-top:0.3cm; padding-right:0.3cm; padding-bottom:0.3cm;" rowspan="2" colspan="1">
                                      <table style="width:150px;height:150px;border-width: thin; border-color:black ;" border="1" cellpadding="0" cellspacing="0">
                                          <tr>
                                              <td>
                                                          <asp:Image ID="Image3" Height="78%" Width="100%" runat="server" ImageUrl="~/Images/PhotoPast.jpg" />
                                              
                                       
                                              </td>
                                          </tr>
                                      </table>
                                 
                                  </td>
                                
                             </tr>
                             <tr>
                                 <td style="height: 30px;" bgcolor="Silver"><strong>PRESENT  ADDRESS:</strong></td>
                                  <td style="height: 30px;">
                                      <asp:Label ID="lblpresentadd" runat="server" Text=""></asp:Label></td>
                             </tr>
                            
                             <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>ROLL NO:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblRoll" runat="server" Text=""></asp:Label></td>

                                  <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver" colspan="2"><strong>Name and address of Document verification:</strong></td>
                                 
                             </tr>
                             
                             <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>AADHAR NUMBER:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblAadhar" runat="server" Text=""></asp:Label></td>

                                  <td style="padding-left:.1cm; vertical-align:top; " rowspan="4" colspan="2"  >
                                      <asp:Label ID="lblCentername" runat="server" Visible="False"></asp:Label>

                                       <BR />
                                     <asp:Label ID="lblnoc" runat="server" Text=""></asp:Label>
                                      <br />
                                      <asp:Label ID="lblCadd1" runat="server" Text=""></asp:Label>
                                      <br />
                                      <asp:Label ID="lblPin" runat="server" Text=""></asp:Label>
                                      <br />
                                  </td>
                                
                                
                             </tr>
                             
                             
                               <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>REGISTRATION NUMBER:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblApplicationNo" runat="server" Text=""></asp:Label></td>

                                  
                             </tr>

                             <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>CATEGORY:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label></td>
                                 
                                  
                             </tr>
                            <%-- <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>MOTHER’S NAME:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblMotherName" runat="server" Text=""></asp:Label></td>
                             </tr>
                             <tr>--%>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>DATE OF BIRTH:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></td>
                             </tr>
                            
                            <%--  <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>Qualification Status</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="Label3" runat="server" Text="Qualified for Physical Endurance Test"></asp:Label></td>
                                 <td style="width:50%; padding-left:.1cm;height:26px;" bgcolor="Silver" colspan="2" ></td>
                             </tr>
                            
                             <tr><td colspan="4" style="text-align:center;font-size:16px;font-weight:bold;height:22px;" bgcolor="Silver">DETAILS OF EXAMINATION CENTER</td>
                                 <%--<td style="width:20%;">&nbsp;</td>
                                  <td style="width:60%;">&nbsp;</td>
                                  <td style="width:20%;">&nbsp;</td>
                             </tr>--%>

                             <%-- <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CITY CODE:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblcitycode" runat="server" Text=""></asp:Label></td>
                             </tr>--%>
                             <%--<tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>CENTER CODE:</strong></td>
                                  <td style="padding-left:.1cm" colspan="2">
                                      <asp:Label ID="lblCenterCode" runat="server" Text=""></asp:Label></td>
                             </tr>--%>

              <%--  <tr>
                                 <td style="height: 50px;" bgcolor="Silver"><strong>FATHER’S NAME:</strong></td>
                                  <td style="height: 50px;">
                                      <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></td>

                                 
                               
                             </tr>--%>
                             <%--<tr>
                                  <td style="padding-left:.1cm;height:26px;" colspan="3">
                                      &nbsp;</td>
                             </tr>
                             
                             <tr>
                                  <td style="padding-left:.1cm;height:26px;" colspan="3">
                                      &nbsp;</td>
                             </tr>
                             <td colspan="4" style="text-align:center;font-size:16px;font-weight:bold;height:22px;" bgcolor="Silver">EXAMINATION SCHEDULE</td>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>DATE OF EXAMINATION:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      &nbsp;</td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>REPORTING TIME:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      &nbsp;</td>
                             </tr>
                             <tr>
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>GATE CLOSURE TIME:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      <b>
                                      <asp:Label ID="lblgateclose" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                             <tr style="display:none">
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>EXAM TIMING:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      <b>
                                      <asp:Label ID="lblExmDuration" runat="server" Text="10:00 AM to 12:00 Noon"></asp:Label></b></td>
                             </tr>
                             <tr style="display:none">
                                 <td colspan="4" style="text-align:center;font-size:16px;font-weight:bold;height:26px;" bgcolor="Silver">DETAILS OF COURSE/SUBJECT APPLIED</td>
                             </tr>
                             <tr style="display:none">
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>COURSE CATEGORY:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      <b>
                                      <asp:Label ID="lblCourseCat" runat="server" Text=""></asp:Label></b></td>
                             </tr>
                            <tr style="display:none">
                                 <td style="width:20%;padding-left:.1cm;height:26px;" bgcolor="Silver"><strong>COURSE APPLIED:</strong></td>
                                  <td style="padding-left:.1cm" colspan="3">
                                      <b>
                                      <asp:Label ID="lblCApplied" runat="server" Text=""></asp:Label></b></td>
                             </tr>
--%>

                 <tr>
                                 <td style="height: 50px;width:25%;"  ><asp:Image ID="Image2" Height="80%" Width="100%" runat="server"  /></td>
                                  <td style="height: 50px;width:25%;">
                                      &nbsp;</td>

                                  <td style="width:20%;padding-left:.1cm;height:26px;" >&nbsp;</td>
                                  <td style="padding-left:.1cm" >
                                      &nbsp;</td>

                             </tr>
                   
                 <tr style="align-content:center ;">
                                 <td style="text-align:center;vertical-align:top" ><span lang="EN-US" style="font-size:10.0pt;line-height:
115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-fareast-theme-font:minor-fareast;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">Candidate Signature</span></td>
                                  <td style="text-align:center">
                                      <p align="center" class="MsoNormal" style="text-align:center">
                                          <span lang="EN-US" style="font-size:10.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Candidate Signature<o:p></o:p></span></p>
                                      <span lang="EN-US" style="font-size:10.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-theme-font:minor-fareast;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">(To be signed in the presence of Observer )</span></td>

                                  <td style="text-align:center">
                                      <p class="MsoNormal">
                                          <span lang="EN-US" style="font-size:10.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Left Hand Thumb Impression<o:p></o:p></span></p>
                                      <span lang="EN-US" style="font-size:10.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-theme-font:minor-fareast;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">(In the presence of Observer )</span></td>
                                  <td style="text-align:center">
                                      <p class="MsoNormal">
                                          <span lang="EN-US" style="font-size:10.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Signature of Observer(s) <o:p></o:p></span>
                                      </p>
                                      <span lang="EN-US" style="font-size:10.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-theme-font:minor-fareast;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">with name and Date</span></td>

                             </tr>
                         </table>
                     </td>
                     <td></td>
                </tr>
                
            </table>
                </td></tr></table>
        <%--   <span style="color:red;text-align:center;font-weight:bold;margin-left:0cm;"> Note: Please read the instructions carefully given in the next pages of this admit card before appearing for the Physical Endurance Test.</span>--%>
        </div><br /><br />
        <div>
            <table ><tr><td>
            <table style="width:100%;font-family:Verdana;font-size:13px;text-justify:auto;  " >
                <tr>
                    <td style="width:0.5%;"></td>
                     <td style="width:99%;text-align:center;text-decoration:underline;font-size:15px;font-weight:bold;">General Rules and Instructions for the Candidates/ अभ्यर्थियों के लिए सामान्य नियम और निर्देश</td>
                     <td style="width:0.5%;"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        Dear Candidate,

                        <ol style="justify-content:space-around ">

                           
                            <li>
                                On the basis of written test conducted on 24.09.17 for the post of Watchman Under Chhattisgarh Region, you have been provisionally shortlisted for Document Verification (DV). May Please note that provisional Short listing does not mean final selection. The final selection would be based on Document Verification and subject to the merit based on written test vis-a-vis vacancies available; Accordingly, you are requested to present yourself for the same at the venue and time as above./  छत्तीसगढ़ क्षेत्र के तहत वॉचमैन पद के लिए 24.09.2017 को आयोजित लिखित परीक्षा के आधार पर, आपको दस्तावेज़ सत्यापन (डीवी) के लिए अस्थायी रूप से सूचीबद्ध किया गया है। कृपया ध्यान दें कि अस्थायी लघु सूची का मतलब अंतिम चयन नहीं है। अंतिम चयन दस्तावेज़ सत्यापन को समाशोधन पर आधारित होगा जो वास्तविकता में अर्हता प्राप्त कर रहा है और उपलब्ध रिक्तियों के साथ लिखित परीक्षा के आधार पर योग्यता के अधीन होगा; तदनुसार, आपसे अनुरोध है कि आप ऊपर के स्थान और समय पर उपस्थिति रहे |

                                <br />
                            </li> 
                            <li>
                               Request for change of Date/ Time for DV Centre/ Venue will not be entertained in any circumstances./ किसी भी परिस्थिति डीवी केंद्र / स्थान और दिनांक / समय के परिवर्तन के लिए अनुरोध स्वीकार्य नहीं किया जाएगा।  <br />
                            </li> 
                             <li>
                                Admission to the DV Centre/ Venue will be on the production of Identity Proof in Original and this call Letter ( Page-1,2, &3) only, Duly Completed./ डीवी केंद्र / स्थान में प्रवेश, मूल पहचान पत्र और कॉल लेटर के आधार पर (पृष्ठ -12, और 3) जो की विधिवत पूर्ण होगा।<br />   
                             </li> 
                             <li>
                                 Download the Call Letter in two copies, paste duly self-attested photograph on both the copies. One copy be handed over to the Observer(s) during the test. Your Photograph and signature must be same/ matched with what has been submitted/uploaded during registration of application/ during written test. Mismatch will lead to cancellation of candidature./ दो प्रतियों में कॉल लेटर डाउनलोड करें, दोनों प्रतियों पर विधिवत स्वप्रमाणित तस्वीर चिपकाये। एक प्रति परीक्षा के दौरान पर्यवेक्षक को सौंप दी जाएगी। आपका फोटोग्राफ और हस्ताक्षर आवेदन के पंजीकरण / लिखित परीक्षा के दौरान जमा / अपलोड किए गए भुगतान के साथ समान / मिलान होना चाहिए। विसंगति उम्मीदवार को रद्द करने का कारण बन जाएगी।<br />
                             </li> 
                               
                             <li>
                                 Ensure that candidate’s signature, Left Thumb Impression and Observer’s signature are put in the space provided for it on the call Letter as well as on the Attendance Sheet./ सुनिश्चित करें कि अभ्यर्थी के हस्ताक्षर, बाएं अंगूठे का निशान और प्रेक्षक के हस्ताक्षर कॉल लेटर के साथ-साथ उपस्थिति पत्र पर प्रदान की गई जगह में रखे गए हैं।
                             </li> 
                             <li>
                                Candidate must carry two spare identical passport size coloured photographs as uploaded during registration of the application from. If  required the same shall be collected by the Observer./ अभ्यर्थी को आवेदन के पंजीकरण के दौरान अपलोड किए गए दो अतिरिक्त समान पासपोर्ट आकार की रंगीन तस्वीरों को ले जाना चाहिए। यदि आवश्यक हो तो पर्यवेक्षक द्वारा एकत्र किया जाएगा।

                            </li> 
                             <li>
                                 Candidate must bring the following documents with them : (a) Admit Card (b) Written test Admit Card (Same Copy that was there on Written Test) (c) Original Aadhar Card (d) Original Documents of Educational Qualification that will prove (i) Date of Birth (ii) 8th Standard Marksheet (e) Original Documents for proof of desired relaxations like : OBC/SC/ST/ ExServiceman (f) Copy of Application Form (g) 2 passport size photographs (h) 2 Self- Attested Xerox copies of all documents (i) physical handicap certificate.
                                 <br />
                                 Note :- All above mentioned documents are mandatory , without these documents you will not be allowed to take part .
                                <br />
                                 अभ्यर्थी को निम्नलिखित दस्तावेज अपने साथ अवश्य लाये 
                                 <br />
                                 (ए) प्रवेश पत्र (बी) लिखित परीक्षा प्रवेश पत्र (लिखित परीक्षा पर वही प्रतिलिपि) (सी) मूल आधार कार्ड (डी) शैक्षणिक योग्यता के मूल दस्तावेज जो साबित होंगे (i ) जन्म तिथि (ii) 8 वीं मानक मार्कशीट (ई) वांछित छूट के सबूत के लिए मूल दस्तावेज जैसे: ओबीसी / एससी / एसटी / एक्स सर्विसेमैन (एफ) आवेदन पत्र की प्रतिलिपि (जी) 2 पासपोर्ट आकार की तस्वीरें (एच) 2 स्व-प्रमाणित सभी दस्तावेजों की जेरोक्स प्रतियां (i) भौतिक विकलांगता प्रमाण पत्र |
                                 <br />
                                 ध्यान दें:- उपरोक्त उल्लिखित दस्तावेज अनिवार्य हैं, इन दस्तावेजों के बिना आपको भाग लेने की अनुमति नहीं दी जाएगी।

                            </li> <br />
                             <li >
                                 NOC: if you are employed with the State Govt/ Central Govt/PSUs, then ensure that during Document Verification./ एनओसी: यदि आप राज्य सरकार / केंद्र सरकार / पीएसयू के साथ नियोजित हैं, तो दस्तावेज़ सत्यापन के दौरान सुनिश्चित करें ।


                            </li><br />
                             <li >
                                May Please note that if you fail to appear at the given Venue & Time along with requisite documents , your candidature will be cancelled. No further opportunity will be given./ कृपया ध्यान दें कि यदि आप आवश्यक दस्तावेजों के साथ दिए गए स्थान और समय पर उपस्थित होने में विफल रहते हैं, तो आपकी उम्मीदवारी रद्द कर दी जाएगी। कोई और मौका नहीं दिया जाएगा।
                                    

                            </li> <br />
                             <li>
                                 Travelling and other expenses incurred for attending for  DV will be borne by the candidate himself/herself./  डीवी में भाग लेने के लिए यात्रा और अन्य व्यय उम्मीदवार द्वारा स्वयं  भुगतान किया जाएगा।

                             </li>     <br />
                            
                            <li>
                                 Your Candidature is provisional. You must, therefore, ensure that you fulfil all the conditions of eligibility laid down in the advertisement/ notice of the Examination. If at any stage it is found that you do not fulfil any of the conditions of eligibility, your candidature will be cancelled and no appeal against such  cancellation will be entertained. The fact that you have been called for DV does not confer any right to be treated as eligible in all aspects for appointment or to be considered for the post. To avoid any disappointment at a later stage, you are advised to recheck whether you meet all the eligibility criteria laid down on the crucial date prescribed for the examination in question./ आपकी उम्मीदवारी अस्थायी है। इसलिए, आपको यह सुनिश्चित करना होगा कि आप परीक्षा के विज्ञापन / नोटिस में निर्धारित योग्यता की सभी शर्तों को पूरा करें। यदि किसी भी स्तर पर यह पाया जाता है कि आप योग्यता की किसी भी शर्त को पूरा नहीं करते हैं, तो आपकी उम्मीदवारी रद्द कर दी जाएगी और इस तरह के रद्दीकरण के खिलाफ कोई अपील नहीं की जाएगी। तथ्य यह है कि आपको DV के लिए बुलाया गया है, नियुक्ति के लिए सभी पहलुओं में पात्र के रूप में या पद के लिए विचार करने के लिए योग्य होने का कोई अधिकार नहीं है। बाद के चरण में किसी भी निराशा से बचने के लिए, आपको सलाह दी जाती है कि आप जांच में परीक्षा के लिए निर्धारित महत्वपूर्ण तारीख पर निर्धारित सभी योग्यता मानदंडों को पूरा करते हैं या नहीं।

                             </li>     <br />
                            
                            <li>
                                 Discrepancies, if any, regarding the candidate’s particulars in this letter should be reported by email to fciraipurquery@gmail.com./ इस पत्र में उम्मीदवार के विवरण के संबंध में विसंगतियां, यदि कोई हों, तो fciraipurquery@gmail.com ईमेल पर रिपोर्ट की जानी चाहिए |


                             </li>     <br /> <br /> 
                            
                           <%-- <li>
                                Events & Standard of Physical Endurance Test (PET)/ शारीरिक दक्षता परीक्षण (पीईटी) की घटनाक्रम और मानक
                                <br /> Description	:- <br />

                                <table >
                                    <tr style="border:solid; border-width:thin; ">
                                        <td style="border:solid; border-width:thin; ">Male/ पुरुष</td>
                                        <td style="border:solid; border-width:thin; ">Female/ महिला</td>
                                        <td style="border:solid; border-width:thin; ">PWD/HH</td>
                                    </tr>
                                    <tr>
                                        <td style="border:solid; border-width:thin; ">Running 1000 Meters in 04 mins 30 secs in one GO   </td>
                                        <td style="border:solid; border-width:thin; ">Running 800 Meters in 04 Mins 30 Secs in one GO  </td>
                                        <td style="border:solid; border-width:thin; ">Not Applicable</td>
                                    </tr>
                                    <tr>
                                        <td style="border:solid; border-width:thin; ">Long Jump 4.00 Meters in 03 attempts</td>
                                        <td style="border:solid; border-width:thin; ">Long Jump 2.50 Meters in 03 attempts</td>
                                        <td style="border:solid; border-width:thin; ">Not Applicable</td>
                                    </tr>
                                    <tr>
                                        <td style="border:solid; border-width:thin; ">High Jump 1.20 Meters in 03 attempts</td>
                                        <td style="border:solid; border-width:thin; ">High Jump 1 Meter in 03 attempts</td>
                                        <td style="border:solid; border-width:thin; ">Not Applicable</td>
                                    </tr>

                                </table>
                            
                            </li><br />


                            <li>
                                 Candidates who fulfil all the conditions of eligibility laid down in the advertisement after undergoing document verification will only be permitted  for PET which may continue for next 02 days also, therefore, candidates are advised to come prepared accordingly./ उम्मीदवार जो दस्तावेज सत्यापन के बाद विज्ञापन में रखी गई योग्यता की सभी शर्तों को पूरा करते हैं उन्हें केवल पीईटी के लिए अनुमति दी जाएगी जो अगले 02 दिनों तक जारी रह सकती है, इसलिए, उम्मीदवारों को सलाह दी जाती है कि वे तदनुसार उपस्थित हों  |
    
                             </li>     <br /> 
                            
                            
                            <li>
                                 Discrepancies, if any, regarding the candidate’s particulars in this letter should be reported by email to fciraipurquery@gmail.com./ इस पत्र में उम्मीदवार के विवरण के संबंध में विसंगतियां, यदि कोई हों, तो fciraipurquery@gmail.com ईमेल पर रिपोर्ट की जानी चाहिए |

                             </li>   --%>                              
                                                    
                        </ol>
                    </td>
                    <td></td>
                </tr>
               
           </table></td></tr>
                </table>
               
        </div>
    </div>
    </form>
</body>
</html>
