<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderID="head">
</asp:Content>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content runat="server" ID="content" ContentPlaceHolderID="ContentPlaceHolder1">
    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>



    <link rel="stylesheet" href="../Scripts/jquery-ui.css" />
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <%-- <div id="pnlMain">--%>
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="Hrftable_full">

                <tr>
                    <th colspan="4">Find Candidate Details !!
                    </th>
                </tr>


                <tr>
                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left" colspan="4">
                        <div id="tabs">

                            <div id="tabs-1">
                            </div>


                        </div>
                    </td>

                </tr>





                <tr runat="server" id="trcan">
                    <td style="font-family: Verdana; font-weight: normal; width: 100%" align="left" colspan="4">
                        <asp:UpdatePanel ID="upddetails" runat="server">
                            <ContentTemplate>
                                <table class="Hrftable" style="width: 100%; font-size: 14px">
                                    <tr>
                                        <th colspan="6" style="width: 100%; font-size: 14px">PERSONAL DETAILS (व्यक्तिगत विवरण)
                                    <asp:Label ID="lblpersonaldetails" runat="server" Text=""></asp:Label>
                                            &nbsp;<br />
                                            <span style="font-size: 14px;">Login ID:</span>&nbsp;
                                    <asp:Label ID="lblregno" runat="server" Font-Size="14px" Text=""></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">1. </td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblpostAppliedFor" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lblpostAppliedFor0" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="2" rowspan="6" style="text-align: center;">
                                            <%-- <br /> <span class="span">(श्री /श्रीमति /कुमारी न लिखे)</span>--%><%-- <br /> <span class="span">(श्री /श्रीमति /कुमारी न लिखे)</span>--%><%-- <br /> <span class="span">(श्री /श्रीमति /कुमारी न लिखे)</span>--%><%-- <br /> <span class="span">(श्री /श्रीमति /कुमारी न लिखे)</span>--%>                               <%-- <table style="text-align: center; width: 100%; height: 100%;">
                                    <tr>
                                        <td style="border:none;"></td>
                                        <td style="text-align: center; width: 175px; height: 200px; border-left:1px solid black; border-top:1px solid black; border-right:1px solid black; border-bottom:1px solid black;">कृपया आपला अलीकडच्या काळातील रंगीत फोटो चिकटवा व त्यावर सही करा </td>
                                        <td style="border:none;"></td>
                                    </tr>
                                </table>--%>
                                            <asp:Image ID="Image1" runat="server" Height="180px" Width="150px" />
                                            <br />
                                            <asp:Image ID="Image2" runat="server" Height="50px" Width="330px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">2. </td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblexamcenter1" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lbexamcenter1" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">3.</td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblexamcenter2" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lbexamcenter2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">4.</td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblexamcenter3" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lbexamcenter3" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">5.</td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblexamcenter4" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lbexamcenter4" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">6. </td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblexamcenter5" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="lbexamcenter5" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">7.</td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblDomicile" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4" style="width: 50%">
                                            <asp:Label ID="lblDomicile0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">8.</td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblcategory" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4" style="width: 50%">
                                            <asp:Label ID="lblcategory0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trsubcategosry" runat="server" visible="false">
                                        <td class="auto-style1" style="width: 3%">9.</td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblSubCategory" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4" style="width: 50%">
                                            <asp:Label ID="lblSubCategory0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="vertical-align: top;">
                                        <td class="auto-style1" style="width: 3%">10. </td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblcandidatename" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4" style="width: 25%">
                                            <asp:Label ID="lblcandidatename0" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>

                                    <%--<tr id="trnamechagne" runat="server" style="display: none;">
                            <td class="auto-style1" style="width: 3%">11(a)</td>
                            <td class="auto-style1" style="width: 30%">
                                <asp:Label ID="lbloldname" runat="server" Text="Old Name<br/>पूर्वीचे नाव"></asp:Label>
                            </td>
                            <td class="auto-style1" style="width: 25%">
                                <asp:Label ID="lblcandidateoldname" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style1" style="width: 3%">11(b)</td>
                            <td class="auto-style1" style="width: 27%">
                                <asp:Label ID="lblnewname" runat="server" Text="New Name<br/>नवीन नाव"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="lblcandidatenewname" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>
                                    <tr>
                                        <td style="width: 3%">11. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblFathername" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 25%">
                                            <asp:Label ID="lblFathername0" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 3%">11. </td>
                                        <td style="width: 27%">
                                            <asp:Label ID="lblmothername" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblmothername0" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 3%">12. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblgender" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 25%">
                                            <asp:Label ID="lblgender0" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 3%">13. </td>
                                        <td style="width: 27%">
                                            <asp:Label ID="lblMarital" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblMarital0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="ifmarriedSpouse" runat="server" visible="false">
                                        <td style="width: 3%">13. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblspouse" runat="server"></asp:Label>
                                        </td>
                                        <td style="width: 25%">
                                            <asp:Label ID="lblspouse0" runat="server"></asp:Label>
                                        </td>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>

                                    <%-- <tr id="othermrrgdata" runat="server" visible="false">
                            <td align="left" valign="middle" style="width: 3%">7(a).
                            </td>
                            <td align="left" valign="middle" style="width: 30%">

                                <asp:Label ID="lblmarriagedate" runat="server" Text="Marriage Date"></asp:Label><br />
                                <span class="span" style="color: Green">(dd/mm/yyyy)</span></td>
                            <td style="width: 25%">

                                <asp:Label ID="lblmarriagedate1" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 3%">7(b).&nbsp;
                              
                            </td>
                            <td style="width: 27%">

                                <asp:Label ID="lblnoofchildren" runat="server" Text="Total No. of Childrens"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblnoofchildren1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>

                                    <tr style="vertical-align: top;">
                                        <td style="width: 3%">14. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblpostalAddress" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <table border="0" style="width: 100%;">
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblAdd1" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpostaladd1" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblAdd2" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpostaladd2" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblAdd3" runat="server" Text=""></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblpostaladd3" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblstate" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblstate0" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr id="trdistrict" runat="server" visible="false">
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lbldistrict" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lbldistrict0" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr id="trotherdistrict" runat="server" visible="false">
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lbldistrict1" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lbldistrict2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblPincode" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpincode0" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="vertical-align: top;">
                                        <td style="width: 3%">15. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblparmanentaddress" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <table border="0" style="width: 100%;">
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblPAdd1" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblPAdd11" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblPAdd2" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblPAdd12" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblPAdd3" runat="server" Text=""></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblPAdd13" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblpstate" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblpstate0" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr id="trPDis" runat="server" visible="false">
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblpdistrict" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblpdistrict0" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr id="trPotherDis" runat="server" visible="false">
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblpdistrict1" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblpdistrict2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 32%">
                                                        <asp:Label ID="lblPPincode" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="lblPPincode0" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">16.</td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblmobileno" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblmobileno0" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1">17.</td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lblmobilen1" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblmobileno2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">18.</td>
                                        <td class="auto-style1" colspan="1">
                                            <asp:Label ID="lblemailid" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4">
                                            <asp:Label ID="lblemailid1" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="width: 3%">19. </td>
                                        <td class="auto-style1" style="width: 30%">
                                            <asp:Label ID="lbldob" runat="server"></asp:Label>
                                            <span class="span" style="color: Green">(dd/mm/yyyy)</span></td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lbldobenterd" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="auto-style1">19(a). </td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblCalAge" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1">

                                            <%--<asp:Label ID="lblconfirmemailid1" runat="server" Text=""></asp:Label>--%>
                                            <asp:Label ID="lblCalAge0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td style="width: 3%">20. </td>
                                        <td>
                                            <asp:Label ID="lblnationality" runat="server"></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <asp:Label ID="lblnationality0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trpd" runat="server" visible="false">
                                        <td class="auto-style1" style="width: 3%">21.</td>
                                        <td class="auto-style1">
                                            <asp:Label ID="lblPD" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style1" colspan="4">
                                            <asp:Label ID="lblPD0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trisdepartmental" runat="server" visible="true">
                                        <td style="width: 3%">21(a) </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblexservicefromdate" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblexservicefromdate0" runat="server"></asp:Label>

                                            <%--<input type="hidden" name="hdnChildDate" id="hdnChildDate" value="25/01/2001" />
                                <input name="txtmarrdate1" type="text" maxlength="10" id="txtmarrdate1" onkeypress="return CreateDateTextBox(this,event,false)" style="width: 200px;" />--%>
                                        </td>
                                        <td>21(b). </td>
                                        <td>
                                            <asp:Label ID="lblexservicetodate" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblexservicetodate0" runat="server"></asp:Label>
                                        </td>
                                    </tr>

                                    <%-- <tr>
                            <td class="auto-style1" style="width: 3%">23.</td>
                            <td class="auto-style1" colspan="4">
                                <asp:Label ID="lblisph" runat="server" Text="Availing reservation for Person with disability ? <br/>उमेदवारास अपंग आरक्षणाचा लाभ हवा आहे काय?"></asp:Label>
                            </td>
                            <td class="auto-style1">

                                <asp:Label ID="lblisph1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>

                                    <%--<tr id="trtypeofphnpercentage" runat="server" visible="false">
                            <td style="width: 3%">23(a)
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="lbltypeofPH" runat="server" Text="Type of Disability<br/>अपंगत्वाचा प्रकार"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lbltypeofPH1" runat="server" Text=""></asp:Label>
                            </td>
                            <td>23(b).
                            </td>
                            <td>
                                <asp:Label ID="lblpercentageofPH" runat="server" Text="Percentage of Disability<br/>अपंगत्वाची टक्केवारी"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpercentageofPH1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>

                                    <%--<tr id="trPHCertificate" runat="server" visible="false">
                            <td style="width: 3%">23(c)
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="lblPHCertificate" runat="server" Text="PWD Certificate Uploaded<br/>अपंगत्वाचे वैध प्रमाणपत्र अपलोड "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPHCertificate1" runat="server" Text=""></asp:Label>

                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>--%>

                                    <%--    <tr>
                            <td class="auto-style1" style="width: 3%">24.</td>
                            <td class="auto-style1" colspan="4">
                                <asp:Label ID="lblwomanreservation" runat="server" Text="Availing reservation for WOMEN<br/>महिला आरक्षणाचा लाभ हवा आहे काय?"></asp:Label>
                            </td>
                            <td class="auto-style1">

                                <asp:Label ID="lblwomanreservation1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>
                                    <%--     <tr>
                            <td class="auto-style1" style="width: 3%">25.</td>
                            <td class="auto-style1" colspan="4">
                                <asp:Label ID="lblsportreservation" runat="server" Text="Whether availing reservation for Meritorious Sport Persons?<br/>अतिउच्च गुणवत्ताधारक खेळाडू आरक्षणाचा लाभ हवा आहे काय?"></asp:Label>
                            </td>
                            <td class="auto-style1">

                                <asp:Label ID="lblsportreservation1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>
                                    <%-- <tr id="trnameofsport" runat="server" style="display: none;">
                            <td class="auto-style1" style="width: 3%">25(a)</td>
                            <td class="auto-style1" style="width: 20%">
                                <asp:Label ID="lblnameofsport" runat="server" Text="Name of the Sport<br/>खेळाचे नाव"></asp:Label>
                            </td>
                            <td class="auto-style1" colspan="4">
                                <asp:Label ID="lblsportname" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>                        <%-- <tr id="trrank" runat="server" style="display: none;">
                            <td style="width: 3%">25(b)
                            </td>
                            <td style="width: 20%">
                                <asp:Label ID="lblrep" runat="server" Text="Represented <br/>प्रतिनिधित्व"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lblrepresentedby" runat="server" Text=""></asp:Label>
                            </td>
                            <td>25(c).
                            </td>
                            <td style="width: 20%">
                                <asp:Label ID="lblrank" runat="server" Text="Rank/Position/Medal <br/>स्थान / पदक"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblranknmedal" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>                        <%--<tr>
                            <td style="width: 3%">26.
                            </td>
                            <td colspan="4">
                                <asp:Label ID="lblprojectreservation" runat="server" Text="Are you PAP of Mahatransco<br/>महानिर्मिती कंपनीचे प्रकल्पग्रस्त आहात काय?"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblProjectaffectedwithMSB1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <tr id="trmsebpap11" runat="server" visible="false">
                            <td style="width: 3%">26(a).</td>
                            <td style="width: 30%">
                                <asp:Label ID="Label5" runat="server" Text="Survey / Bill No.<br/>सर्वेक्षण / बिल क्रमांक"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblserveyno1" runat="server" Text=""></asp:Label>

                            </td>
                            <td>26(b).
                            </td>
                            <td>
                                <asp:Label ID="lblpapcertno" runat="server" Text="PAP Certificate No.<br/>प्रकल्पग्रस्त प्रमाणपत्र क्रमांक"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lblpapcertno1" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>

                        <tr id="trmsebpap2" runat="server" visible="false">
                            <td style="width: 3%">26(c)</td>
                            <td style="width: 30%">
                                <asp:Label ID="Label11" runat="server" Text="PAP Certificate Issuing Date<br/>प्रकल्पग्रस्त प्रमाणपत्र जारी केल्याची तारीख "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpapcertissueDate1" runat="server" Text=""></asp:Label>

                            </td>
                            <td>26(d).
                            </td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="Issuing Authority of PAP Certificate<br/>प्रकल्पग्रस्त प्रमाणपत्र जारी करणाऱ्या प्राधिकाऱ्याचे पदनाम"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lblIssuingAuthority1" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr id="trmsebpap3" runat="server" visible="false">
                            <td style="width: 3%">26(e).</td>
                            <td colspan="4">
                                <asp:Label ID="Label14" runat="server" Text="Name of Project of MAHATRANSCO for which land acquired <br/>अर्जदाराची जमीन महापारेषण कंपनीच्या अथवा पूर्वाश्रमीच्या महाराष्ट्र राज्य विद्युत मंडळाच्या ज्या प्रकल्पासाठी संपादित करण्यात आली आहे त्या प्रकल्पाचे नाव "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblnameofMahaproject1" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>

                        <tr>
                            <td style="width: 3%">27.
                            </td>
                            <td colspan="4">
                                <asp:Label ID="Label4" runat="server" Text="Availing reservation for Project affected Person? <br/>प्रकल्पग्रस्त आरक्षणाचा लाभ हवा आहे काय?"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblprojectreservation1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <tr id="lblpap1strow" runat="server" visible="false">
                            <td style="width: 3%">27(a)</td>
                            <td style="width: 30%">
                                <asp:Label ID="Label3" runat="server" Text="Survey / Bill No.<br/>सर्वेक्षण / बिल क्रमांक:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblserveypap" runat="server" Text=""></asp:Label>

                            </td>
                            <td>27(b).
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="PAP Certificate No.<br/>प्रकल्पग्रस्त प्रमाणपत्र क्रमांक :"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lblpapcert" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>

                        <tr id="lblpap2ndrow" runat="server" visible="false">
                            <td style="width: 3%">27(c)</td>
                            <td style="width: 30%">
                                <asp:Label ID="Label12" runat="server" Text="PAP Certificate Issuing Date <br/>प्रकल्पग्रस्त प्रमाणपत्र जारी केल्याची तारीख "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpapcertissuedate" runat="server" Text=""></asp:Label>

                            </td>
                            <td>27(d).
                            </td>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Issuing Authority of PAP Certificate<br/>प्रकल्पग्रस्त प्रमाणपत्र जारी करणाऱ्या प्राधिकाऱ्याचे पदनाम"></asp:Label>
                            </td>
                            <td>

                                <asp:Label ID="lblpapcertissueauthority" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>--%>



                                    <tr id="trExSer" runat="server" visible="false">
                                        <td style="width: 3%">21(c).</td>
                                        <td>
                                            <asp:Label ID="lblexserviceexp" runat="server"></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <asp:Label ID="lblexserviceexp0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trsportsperson" runat="server" visible="true">
                                        <td style="width: 3%">22. </td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblSportPerson" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSportPerson0" runat="server"></asp:Label>
                                        </td>
                                        <td>22(a) </td>
                                        <td>
                                            <asp:Label ID="lblsporttype" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblsporttype0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trgrade" runat="server" visible="true">
                                        <td style="width: 3%">23</td>
                                        <td style="width: 30%">
                                            <asp:Label ID="lblBGrade" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBGrade0" runat="server"></asp:Label>
                                        </td>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr id="trterritial" runat="server" visible="true">
                                        <td class="auto-style5">24</td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblTerritialArmy" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblTerritialArmy0" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style7" colspan="3">&nbsp;</td>
                                    </tr>

                                    <tr id="trAreyouUPEmployee" runat="server" visible="true">
                                        <td class="auto-style5" style="font-size: 13px">25</td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblUpGovEmp" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblUpEmployee0" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr id="trNameOfDept" runat="server" visible="false">
                                        <td class="auto-style5" style="font-size: 13px">25 (a)</td>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblNameOfDept" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblNameOfDept0" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                        <td style="font-size: 13px">25(b).
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAreYouRegularEmp" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblRegularEmp0" runat="server" Style="font-size: 13px"></asp:Label>
                                        </td>
                                    </tr>
                                    <%--<tr>
                            <td style="width: 3%">30.</td>
                            <td colspan="4">
                                <asp:Label ID="lbltrainingatMSB" runat="server" Text="Are you a candidate who has undergone Apprentice training in Electrician Trade in erstwhile MSEB / MSETCL?<br/>आपण तदर्थ म.रा.वि. मंडळ / म.रा.वि. पारेषण कंपनीमध्ये वीजतंत्री या व्यवसायातील शिकाऊ उमेदवारी पूर्ण केली आहे काय?"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbltrainingatMSB1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>                        <%-- <tr id="trtrainingatMSB1" runat="server" style="vertical-align: top;" visible="false">
                            <td style="width: 3%">30(a).
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="lblMSBOfficeaddress" runat="server" Text="Office Address <br/>म.रा.वि. मंडळाच्या / महापारेषण कंपनीच्या ज्या कार्यालयात उमेदवारी केली त्या कार्यालयाचे नाव व पत्ता"></asp:Label>
                            </td>
                            <td colspan="4">
                                <table border="0" style="width: 100%;">
                                    <tr>
                                        <td style="width: 32%">Apprenticeship complete in
                                            <br />
                                            शिकाऊ उमेदवारी कोठे पूर्ण केली?</td>
                                        <td>

                                            <asp:Label ID="lblCompanyname" runat="server" Text=""></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="width: 32%">Address Line 1 : </td>
                                        <td>
                                            <asp:Label ID="lblCompanyAdd1" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 32%">Address Line 2 : </td>
                                        <td>
                                            <asp:Label ID="lblCompanyAdd2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>

                                </table>
                            </td>
                        </tr>

                        <tr id="trtrainingatMSB2" runat="server" style="display: none;">
                            <td style="width: 3%">30(b)
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="lbltrainingfrom" runat="server" Text="From<br/>पासून"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbltrainingfrom1" runat="server" Text=""></asp:Label>

                            </td>
                            <td>30(c)
                          
                            </td>
                            <td>
                                <asp:Label ID="lbltrainingto" runat="server" Text="To<br/>पर्यंत"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbltrainingto1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr id="trtrainingatMSB3" runat="server" visible="false">
                            <td style="width: 3%">30(d).
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="lbljobtrade" runat="server" Text="Training period (in Months)<br/>प्रशिक्षण कालावधीतील (महिन्यात)"></asp:Label>
                            </td>
                            <td colspan="4">
                                <asp:Label ID="lbljobtrade1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>--%>





                                    <%-- <tr style="vertical-align: top;">
                            <td style="width: 3%">33.
                            </td>
                            <td style="width: 30%">
                                &nbsp;</td>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>--%>




                                    <%--  <tr runat="server" style="display: none;">
                            <td style="width: 3%">8.
                            </td>
                            <td style="width: 30%">क्या आप मध्यप्रदेश के मूल निवासी हैं?
                            </td>
                            <td colspan="4"></td>
                        </tr>--%>
                                    <%--  <tr runat="server" style="display: none;">
                            <td style="width: 3%">9.
                            </td>
                            <td align="left" valign="middle" style="width: 30%">श्रेणी
                            </td>
                            <td colspan="4"></td>
                        </tr>
                        <tr runat="server" style="display: none;">
                            <td align="left" valign="middle" style="width: 3%">10(a).
                            </td>
                            <td style="width: 30%">संवर्ग
                            </td>
                            <td colspan="4"></td>
                        </tr>
                        <tr runat="server" style="display: none;">
                            <td style="width: 3%">10(b).
                            <label id="ManHandicappedType">
                            </label>
                            </td>
                            <td style="width: 30%">यदि आप विकलांग है तो विकलांगता का प्रकार
                            </td>
                            <td colspan="4">
                                <select name="drpHandiT" id="drpHandiT" class="select" style="width: 50%;">
                                    <option selected="selected" value="00">--Select--</option>
                                    <option value="OH">अस्थिबाधित(OH)</option>
                                    <option value="VH">दृष्टिबाधित(VH)</option>
                                    <option value="EH">श्रवणबाधित(EH)</option>

                                </select>
                            </td>
                        </tr>--%>
                                    <%--<tr runat="server" style="display: none;">
                            <td style="width: 3%">11.
                            </td>
                            <td style="width: 30%">उच्च शैक्षणिक योग्यता का स्तर
                            </td>
                            <td>
                                <select name="ddlQual" id="ddlQual" class="select" onfocusout="validationnew(this,&#39;Education Status&#39;,&#39;T&#39;,&#39;Address&#39;);">
                                    <option selected="selected" value="00">--Select--</option>
                                    <option value="ENG">इंजीनियरिंग (ENG)</option>
                                    <option value="ENGD">इंजीनियरिंग डिप्लोमा (ENGDP)</option>
                                    <option value="PHD">डॉक्टरेट(PHD)</option>
                                    <option value="UG">स्नातक(UG)</option>
                                    <option value="PG">स्नातकोत्तर(PG)</option>
                                    <option value="HSSC">हायर सेकेंडरी(HSSC)</option>

                                </select>
                            </td>
                            <td>12.
                            </td>
                            <td>निवास का क्षेत्र
                            </td>
                            <td>
                                <table id="rdoresedencearea" border="0">
                                    <tr>
                                        <td>
                                            <input id="rdoresedencearea_0" type="radio" name="rdoresedencearea" value="R" /><label for="rdoresedencearea_0">ग्रामीण(RURAL)</label></td>
                                        <td>
                                            <input id="rdoresedencearea_1" type="radio" name="rdoresedencearea" value="U" /><label for="rdoresedencearea_1">शहरी (URBAN)</label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>--%>
                                    <tr runat="server" visible="false">
                                        <td colspan="6"></td>
                                    </tr>
                                </table>
                                <table class="Hrftable" style="width: 100%">
                                    <tr runat="server" visible="true">
                                        <th style="width: 100%; font-size: 14px">
                                            <%-- Personal Details / व्यक्तिगत विवरण--%>
                                            <asp:Label ID="Label1" runat="server" Text=" EDUCATIONAL QUALIFICATION (शैक्षिक योग्यता)"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr runat="server">
                                        <td>
                                            <table class="Hrftable" style="width: 100%; font-size: 14px">
                                                <tr runat="server" visible="true">
                                                    <td style="width: 3%">
                                                        <asp:Label ID="lblsrno" runat="server" Text="अनुक्रमांक" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 21%">
                                                        <asp:Label ID="lblExam" runat="server" Font-Size="13px"></asp:Label>
                                                    </td>

                                                    <td style="width: 15%">
                                                        <asp:Label ID="lblPassing" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 19%">
                                                        <asp:Label ID="lblBoard" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblRoll" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblGrade" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblcertificateno" runat="server" Font-Size="13px"></asp:Label></td>
                                                </tr>

                                                <tr runat="server" visible="true">
                                                    <td style="width: 3%">
                                                        <asp:Label ID="Label6" runat="server" Text="1" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 21%">
                                                        <asp:Label ID="lbl10th" runat="server" Font-Size="13px"></asp:Label>
                                                    </td>

                                                    <td style="width: 15%">
                                                        <asp:Label ID="lbl10passingyr" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 19%">
                                                        <asp:Label ID="lbl10brd" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl10roll" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl10grade" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl10thcertificate" runat="server" Font-Size="13px"></asp:Label></td>
                                                </tr>
                                                <tr runat="server" id="tr1">
                                                    <td style="width: 3%">
                                                        <asp:Label ID="Label58" runat="server" Text="2" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 21%">
                                                        <asp:Label ID="lbl12th" runat="server" Font-Size="13px"></asp:Label>
                                                    </td>

                                                    <td style="width: 15%">
                                                        <asp:Label ID="lbl12passingyr0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 19%">
                                                        <asp:Label ID="lbl12brd0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl12roll0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl12grade0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lbl12thcertificate" runat="server" Font-Size="13px"></asp:Label></td>
                                                </tr>

                                                <tr runat="server" id="tr2" visible="false">
                                                    <td style="width: 3%">
                                                        <asp:Label ID="Label4" runat="server" Text="3" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 21%">
                                                        <asp:Label ID="lblGrd" runat="server" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="lblGrdpassingyr0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 19%">
                                                        <asp:Label ID="lblGrdbrd0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblGrdroll0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblGrdgrade0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblGcertificate" runat="server" Font-Size="13px"></asp:Label></td>

                                                </tr>
                                                <tr runat="server" id="tr3" visible="false">
                                                    <td style="width: 3%">
                                                        <asp:Label ID="Label12" runat="server" Text="4" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 21%">
                                                        <asp:Label ID="lblPG" runat="server" Font-Size="13px"></asp:Label>
                                                    </td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="lblPGpassingyr0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 19%">
                                                        <asp:Label ID="lblPGbrd0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblPGroll0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblPGgrade0" runat="server" Font-Size="13px"></asp:Label></td>
                                                    <td style="width: 10%">
                                                        <asp:Label ID="lblPGcertificate" runat="server" Font-Size="13px"></asp:Label></td>
                                                </tr>
                                                <tr id="trexp" runat="server">
                                                    <td colspan="8">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <th colspan="8" style="width: 100%; font-size: 14px">
                                                                    <asp:Label ID="Label2" runat="server" Text="OTHER QUALIFICATION (अन्य योग्यता)"></asp:Label>
                                                                </th>
                                                            </tr>
                                                            <tr runat="server" visible="true">
                                                                <td style="width: 3%">
                                                                    <asp:Label ID="Label3" runat="server" Text="अनुक्रमांक"></asp:Label>
                                                                </td>
                                                                <td style="width: 21%">
                                                                    <asp:Label ID="lblcoursename" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 15%">
                                                                    <asp:Label ID="lblinstitute" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 10%">
                                                                    <asp:Label ID="lblpassingYear" runat="server" Style="font-size: 13px"></asp:Label></td>
                                                                <td style="width: 10%">
                                                                    <asp:Label ID="lblcertificate" runat="server" Style="font-size: 13px"></asp:Label>
                                                                </td>
                                                                <td style="width: 9%">
                                                                    <asp:Label ID="lblgrade1" runat="server" Style="font-size: 13px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr runat="server" visible="true">
                                                                <td style="width: 3%">
                                                                    <asp:Label ID="Label10" runat="server" Text="1"></asp:Label>
                                                                </td>
                                                                <td style="width: 21%">
                                                                    <asp:Label ID="lblothercorse" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 15%">
                                                                    <asp:Label ID="lblotherinst" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 10%">
                                                                    <asp:Label ID="lblpassyear" runat="server" Style="font-size: 13px"></asp:Label></td>
                                                                <td style="width: 10%">
                                                                    <asp:Label ID="lblcert" runat="server" Style="font-size: 13px"></asp:Label></td>
                                                                <td style="width: 9%">
                                                                    <asp:Label ID="lblOGrade" runat="server" Style="font-size: 13px"></asp:Label></td>
                                                            </tr>
                                                            <%--<tr runat="server" id="tr2">
                                       <td style="width: 3%">
                                            <asp:Label ID="Label16" runat="server" Text="2"></asp:Label>
                                        </td>
                                        <td style="width: 21%">
                                            <asp:Label ID="Label17" runat="server" ></asp:Label>
                                        </td>
                                   
                                        <td style="width: 15%">
                                            <asp:Label ID="Label18" runat="server" ></asp:Label></td>
                                        <td style="width: 19%">
                                            <asp:Label ID="Label19" runat="server" ></asp:Label></td>
                                        <td style="width: 10%">
                                            <asp:Label ID="Label20" runat="server" ></asp:Label></td>
                                        <td style="width: 10%">
                                            <asp:Label ID="Label21" runat="server" ></asp:Label></td>
                                    </tr>--%>
                                                        </table>
                                                    </td>
                                                </tr>

                                                <tr id="tr4" runat="server">
                                                    <td colspan="8">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <th colspan="8" style="width: 100%; font-size: 14px">
                                                                    <asp:Label ID="Label5" runat="server" Text="PAYMENT TRANSACTION DETAILS (भुगतान लेनदेन विवरण)"></asp:Label>
                                                                </th>
                                                            </tr>
                                                            <tr runat="server" visible="true">
                                                                <td>
                                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="srno" HeaderText="Sr.No" />
                                                                            <asp:BoundField DataField="Order_no" HeaderText="Payment Order Number" />
                                                                            <asp:BoundField DataField="Total_Amount" HeaderText="Amount" />
                                                                            <asp:BoundField DataField="PaymentMode" HeaderText="Payment Mode" />
                                                                            <asp:BoundField DataField="status" HeaderText="Transaction Status" />
                                                                            <asp:BoundField DataField="Created_date" HeaderText="Transaction Date" />

                                                                        </Columns>
                                                                        <HeaderStyle Font-Names="verdana" Font-Size="10px" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>

                                                            <%--<tr runat="server" id="tr2">
                                       <td style="width: 3%">
                                            <asp:Label ID="Label16" runat="server" Text="2"></asp:Label>
                                        </td>
                                        <td style="width: 21%">
                                            <asp:Label ID="Label17" runat="server" ></asp:Label>
                                        </td>
                                   
                                        <td style="width: 15%">
                                            <asp:Label ID="Label18" runat="server" ></asp:Label></td>
                                        <td style="width: 19%">
                                            <asp:Label ID="Label19" runat="server" ></asp:Label></td>
                                        <td style="width: 10%">
                                            <asp:Label ID="Label20" runat="server" ></asp:Label></td>
                                        <td style="width: 10%">
                                            <asp:Label ID="Label21" runat="server" ></asp:Label></td>
                                    </tr>--%>
                                                        </table>
                                                    </td>
                                                </tr>


                                                <%--<tr runat="server" visible="TRUE">
                                        <td style="width: 3%">2</td>
                                        <td colspan="6">
                                            &nbsp;</td>
                                        <td style="width: 10%">

                                            <asp:Label ID="lblapperntice" runat="server" Text=""></asp:Label>

                                        </td>
                                    </tr>--%>
                                                <%--<tr id="trappfromtoyear" runat="server" visible="false">
                                        <td style="width: 3%">2(a)</td>
                                        <td style="width: 21%">
                                            &nbsp;</td>
                                        <td style="width: 18%">
                                            <asp:Label ID="lbltrainingfrom3" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 18%">
                                            <asp:Label ID="lbltrainingto2" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <asp:Label ID="lbltrainingto3" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>
                                                <%-- <tr runat="server" visible="TRUE">
                                        <td style="width: 3%">3</td>
                                        <td colspan="6">
                                            &nbsp;</td>
                                        <td style="width: 10%">

                                            <asp:Label ID="lblITITrade" runat="server" Text=""></asp:Label>

                                        </td>
                                    </tr>--%>
                                                <%--<tr id="trtradeline1" runat="server" style="display: none;">
                                        <td style="width: 3%">3(a)</td>
                                        <td style="width: 21%">
                                            &nbsp;</td>
                                        <td style="width: 18%">
                                            <asp:Label ID="ITI" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 18%">
                                            <asp:Label ID="lblyear" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <asp:Label ID="yearofpassing" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>

                                                <%--<tr id="trtradeline2" runat="server" style="display: none;">
                                        <td style="width: 3%">3(b)</td>
                                        <td style="width: 21%">
                                            &nbsp;</td>
                                        <td style="width: 18%">
                                            <asp:Label ID="totalmark" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="width: 18%">
                                            <asp:Label ID="lblpmark" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td colspan="4">
                                            <asp:Label ID="pmark" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>


                                                <%--                                    <tr>
                                        <td style="width: 3%">2</td>
                                        <td colspan="6">
                                            <asp:Label ID="lblsscleaving" runat="server" Text="School Leaving Certificate<br/>शाळा सोडल्याचा प्रमाणपत्र"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblyn1" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td style="width: 3%">3</td>
                                        <td colspan="6">
                                            <asp:Label ID="lblssccertificate" runat="server" Text="SSC Passing Certificate<br/>दहावीचे उत्तीर्ण केल्याचे प्रमाणपत्र"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblyn2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>

                                                <%--<tr>
                                        <td style="width: 3%">4</td>
                                        <td colspan="6">
                                            National Trade Certificate in Electrician Trade awarded by NCTVT, New Delhi<br />
                                            राष्ट्रीय व्यवसाय प्रशिक्षण परिषद (NCTVT), नवी दिल्ली यांनी प्रदान केलेले “वीजतंत्री” या व्यवसायातील राष्ट्रीय व्यवसाय प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn3" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>

                                                <%--    <tr>
                                        <td style="width: 3%">5</td>
                                        <td colspan="6">
                                            National Apprenticeship Certificate in Electrician Trade awarded by NCTVT, New Delhi<br /> 
                                            राष्ट्रीय व्यवसाय प्रशिक्षण परिषद (NCTVT), नवी दिल्ली यांनी प्रदान केलेले “वीजतंत्री” या व्यवसायातील शिकाऊ उमेदवारी प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn4" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                                --%>
                                                <%--  <tr>
                                        <td style="width: 3%">6</td>
                                        <td colspan="6">
                                            Apprentice training Certificate in Electrician Trade in erstwhile MSEB / MSETCL<br /> 
                                            तदर्थ म.रा.वि. मंडळ / महापारेषण पारेषण कंपनीमध्ये वीजतंत्री या व्यवसायातील शिकाऊ उमेदवारी प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn5" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>

                                                <%-- <tr>
                                        <td style="width: 3%">7</td>
                                        <td colspan="6">
                                            Physical Disability Certificate<br />
                                            अपंगत्वाचे सक्षम प्राधिकारी यांनी दिलेले वैद्यकीय प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn6" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>





                                                <%-- <tr>
                                        <td style="width: 3%">12</td>
                                        <td colspan="6">
                                            MSEB/MSETCL Project Affected Person Certificate<br />
                                            म.रा.वि. मंडळ /महापारेषण कंपनीचे प्रकल्पग्रस्त असल्याबाबतचे प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn11" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>




                                                <%--                                    <tr>
                                        <td style="width: 3%">14</td>
                                        <td colspan="6">
                                            Sport Reservation Certificate<br />
                                            खेळाडूंच्या आरक्षणांतर्गत लाभ घ्यावयाचा असल्यास त्याबाबतचे विहित प्रमाणपत्रे</td>
                                        <td>
                                            <asp:Label ID="lblyn13" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>





                                                <%-- <tr>
                                        <td style="width: 3%">17</td>
                                        <td colspan="6">
                                           Change of Name Certificate<br/>नाव बदलेले असल्याचे प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn16" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>

                                                <%-- <tr>
                                        <td style="width: 3%">18</td>
                                        <td colspan="6">
                                           Marathi Knowledge Certificate<br/>मराठी भाषेचे ज्ञान असल्याचे प्रमाणपत्र</td>
                                        <td>
                                            <asp:Label ID="lblyn17" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>--%>


                                                <tr runat="server" visible="false">
                                                    <td style="width: 3%">&nbsp;</td>
                                                    <td colspan="6">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr runat="server" visible="false">
                                                    <td style="width: 3%">&nbsp;</td>
                                                    <td colspan="2">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td colspan="3">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </td>

                </tr>

                <tr runat="server" visible="false">
                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                </tr>

                <%-- <tr>
            <td  colspan="3" width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">
               Total :</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">
                &nbsp;</td>
          

        </tr>--%>

                <%-- <tr>
            <td  colspan="3" width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">
               Total :</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">
                &nbsp;</td>
          

        </tr>--%>

                <%--  <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Physical Handicap Count ::
            </th>

        </tr>--%>

                <%-- <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Online Successful Count ::
            </th>

        </tr>--%>
                <%--  <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Submitted Count ::
            </th>

        </tr>--%>

                <tr>
                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                </tr>

            </table>
            <%--</div>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript" language="javascript" src="../Portal/headers/creditsfootermp.js"></script>
</asp:Content>

