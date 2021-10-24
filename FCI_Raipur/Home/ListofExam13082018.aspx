<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListofExam.aspx.cs" Inherits="Home_ListofExam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="../Css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <title>FCI</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="../js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function myFunction() {
            alert("Online registration video will be available shortly.");
        }

    </script>
</head>

<body>
    <form id="Form1" runat="server">
        <div class="topdiv">
            <div class="container text-right">

                <%--<div class="dateTime">
        <asp:LinkButton ID="lnklang"  runat="server" 
               onclick="lnklang_Click" Font-Bold="True" ForeColor="White"><asp:Label ID="lbllang" runat ="server"  ></asp:Label> </asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../img/icon-date.jpg" alt="" /> <span id="dateTime"></span> | <span id="timer"></span> IST  
       <%-- <a href="http://www.aicte-india.org/" target="_blank" style="color: #FFFFFF">Contact us</a></div>--%>
            </div>
        </div>
        <div class="top_banner">
            <div class="container">
                <div class="col-md-2">
                    <div class="logo">
                        <img src="../Images/FCI%20logo.png" alt="" />
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="banner_text">
                        <h1><strong>
                            <asp:Label ID="lblCMAT" runat="server"></asp:Label>
                            <br>
                            <asp:Label ID="lblCMAT1" runat="server"></asp:Label></strong></h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="highlights">
            <div class="container">
                <div class="col-md-2 col-sm-3 col-xs-3"><%--<img alt="" />--%></div>
                <div class="col-md-10 col-sm-9 col-xs-9" style="color: black; font-weight: bold; font-size: 20px">
                    <%--<marquee direction="left">CMAT 2016 Exam Result Declared</marquee>  --%>
                    <%--<marquee direction="left" style="font-size:14px;">Candidates who have made payment successfully can fill and submit rest of the form by 28th Dec’16. Candidates who generated Challan on 25th Dec’16 can make payment in the bank till 26th Dec’16 and can submit the form till 28th Dec’16</marquee>--%>
                    <%--     <marquee direction="left" style="font-size:14px;">Online Registration</marquee>--%>
                    <%-- <p class="quotes">Online registration starts from 3rd Nov 2015</p>--%>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Recruitment of Watchman</p>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <nav class="navbar navbar-inverse" role="navigation">
  <div class="container">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div class="navMargin">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul id="ctl00_TopLinks_BLinks" class="nav navbar-nav navbar-left">
       
        <li class="active"><a href="../Home/ListofExam.aspx"><asp:Label ID="lblhome" runat ="server"  ></asp:Label></a></li>
        <li runat="server" visible="false"><a href="#"><asp:Label ID="lbleligibilty" runat ="server"  ></asp:Label></a></li>
        <li runat="server" visible="false"><a href="#"><asp:Label ID="lblpaymentprocess" runat ="server"  ></asp:Label></a></li>
        <li><a href="#" runat="server" visible="false"><asp:Label ID="lbltestcities" runat ="server"  ></asp:Label></a></li>
        <li><a href="#" runat="server" visible="false"><asp:Label ID="lbltestpatern" runat ="server"  ></asp:Label></a></li>

        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle = "dropdown"><asp:Label ID="lblPressr" runat ="server"  ></asp:Label><b class="caret"></b></a>
          <ul class="dropdown-menu">
              <li><a target="_blank" href="../PDFDocs/PNEnglish.pdf"><asp:Label ID="lbladvertisement" runat ="server"  ></asp:Label></a></li>
            <li><a target="_blank" href="../PDFDocs/PNHindi.pdf"><asp:Label ID="lblpressrelese" runat ="server"  ></asp:Label></a></li>
            
              
              <li  runat="server" visible="false"><a href="#"><asp:Label ID="lblstategovernment" runat ="server"  ></asp:Label></a></li>
            <li  runat="server" visible="false"><a href="#"><asp:Label ID="lbluniversity" runat ="server"  ></asp:Label></a></li>
            
          </ul>
        </li>

         <li class="active"><a href="#" class="dropdown-toggle" data-toggle = "dropdown"><asp:Label ID="lblnotification" runat ="server"></asp:Label></a>

              <ul class="dropdown-menu">
              <li><a target="_blank" href="../PDFDocs/engadvertisement.pdf"><asp:Label ID="Label3" Text="English" runat ="server"  ></asp:Label></a></li>
            <li><a target="_blank" href="../PDFDocs/AdvHindi.pdf"><asp:Label ID="Label4" runat ="server" Text="Hindi"  ></asp:Label></a></li>
            <li  runat="server" visible="false"><a href="#"><asp:Label ID="Label5" runat ="server"  ></asp:Label></a></li>
            <li  runat="server" visible="false"><a href="#"><asp:Label ID="Label6" runat ="server"  ></asp:Label></a></li>
            
          </ul>
         </li>

           <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle = "dropdown">
               <image src="../Images/new.gif"></image>
               <asp:Label ID="Label9" Text="Corrigendum" runat ="server"  ></asp:Label><b class="caret"></b></a>
          <ul class="dropdown-menu">
              <li><a target="_blank" href="../PDFDocs/CorrigendumAdvertisementEnglish.pdf"><asp:Label ID="Label10" Text="English" runat ="server"  ></asp:Label></a></li>
            <li><a target="_blank" href="../PDFDocs/corrigendumregardingEXScandidate.pdf"><asp:Label ID="Label15" Text="Corrigendum (regarding Ex-Serviceman Candidates)" runat ="server"  ></asp:Label></a></li>
            
           
          </ul>
        </li>
          <li runat="server" visible="true"><a href="../PDFDocs/AnswerKey.pdf" target="_blank"><image src="../Images/new.gif"><asp:Label ID="Label13" runat ="server"  Text=" Answer Key" ></asp:Label></a></li>
                <li runat="server" visible="true"><a href="../PDFDocs/Written Test category cut off.pdf" target="_blank"><image src="../Images/new.gif"><asp:Label ID="Label21" runat ="server"  Text="Cut off marks" ></asp:Label></a></li>
                <li class="dropdown" style="display:none"> <a href="#" class="dropdown-toggle" data-toggle = "dropdown"><b class="caret"></b></a>
          <ul class="dropdown-menu">
              <li><a target="_blank" href="#"><asp:Label ID="lblPressEng" runat ="server"  Visible="false"></asp:Label></a></li>
            <li><a href="#" Visible="false" runat="server"><asp:Label ID="lblPressHindi" runat ="server"  ></asp:Label></a></li>
         
          </ul>
        </li>

         <li runat="server" visible="false"><a href="#"><asp:Label ID="lblpassresult" runat ="server"  ></asp:Label></a></li>
        <li runat="server" visible="false"><a href="#"><asp:Label ID="lblfaq" runat ="server"  ></asp:Label></a></li>
      </ul>
    </div>
    </div>
  </div>
</nav>
        <div class="container white_bg">
            <div style="height: 15px;"></div>
            <div class="col-md-3  col-sm-4 col-xs-12">
                <div class="list-group">
                    <a href="#" class="list-group-item active"><strong>
                        <asp:Label ID="lblImpDate" runat="server" Text=""></asp:Label></strong> </a>
                    <table>
                        <tr>
                            <td>
                                <img src="../img/icon-date1.png" alt="" />
                                &nbsp;
                            </td>
                            <td valign="middle">
                                <h4>
                                    <asp:Label ID="lblregistrationstartdate" Font-Size="Small" runat="server"></asp:Label></h4>
                                <asp:Label ID="lblregistrationstartdate1" Font-Bold="true" Text="14 Aug 2017" runat="server"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div style="height: 10px"></div>
                            </td>
                        </tr>

                        <tr>
                            <td>

                                <img src="../img/icon-date1.png" alt="" />
                                &nbsp;

                            </td>
                            <td>
                                <h4>
                                    <asp:Label ID="lblregistrationenddate" Font-Size="Small" runat="server"></asp:Label></h4>
                                <asp:Label ID="lblregistrationenddate1" Font-Bold="true" Text="07 Sep 2017" runat="server"></asp:Label>
                                <br />
                                <br />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <img src="../img/icon-date1.png" alt="" />
                                &nbsp;
                            </td>
                            <td>
                                <h4>
                                    <asp:Label ID="lblresultdeclartion" Text="Exam Date" Font-Size="Small" runat="server"></asp:Label></h4>
                                <asp:Label ID="lblresultdeclartion1" Font-Bold="true" Text="24 Sep 2017" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../img/icon-date1.png" alt="" />
                                &nbsp;
                            </td>
                            <td>
                                <h4>
                                    <asp:Label ID="Label12" Text="Objection Form Live Date" Font-Size="Small" runat="server"></asp:Label></h4>
                                <asp:Label ID="Label17" Font-Bold="true" Text="26 Sep 2017" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../img/icon-date1.png" alt="" />
                                &nbsp;
                            </td>
                            <td>
                                <h4>
                                    <asp:Label ID="Label18" Text="Objection Form End Date" Font-Size="Small" runat="server"></asp:Label></h4>
                                <asp:Label ID="Label19" Font-Bold="true" Text="03 Oct 2017" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

                </div>

            </div>
            <div class="col-md-9 col-sm-8 col-xs-12">
                <div class="col-md-8 col-sm-12 col-xs-12" style="padding-left: 0">
                    <h3>
                        <asp:Label ID="lblAboutCMAT" runat="server"></asp:Label>
                    </h3>
                    <p>
                        <asp:Label ID="lblAboutCMAT1" runat="server" Visible="false"></asp:Label>
                        <a href="http://fci.gov.in/" target="_blank"><strong>http://fci.gov.in</strong></a>
                    </p>



                    <p style="border-width: 1px; border-color: #0098be; border-style: solid; font-family: Verdana; color: black;">
                        <span runat="server" id="pMessage" visible="true">Dear Candidate,
                            <br />
                            <br />
							Please download and print your admit card for the Physical Endurance Test by clicking on the Existing User tab and then enter your Application Number and Password. 
							<br>(Only For candidates shortlisted for Physical Endurance Test).

							<br />
                            <br />
                       

							प्रिय अभ्यर्थी,
							<br />
                            <br />
                      
							कृपया शारीरिक दक्षता परीक्षा का प्रवेश पत्र डाउनलोड कर प्रिंट करें ,   कृपया  “Existing User tab” पर क्लिक करें फिर अपने Apllication number एवं password की मदद से लॉगिन कर प्रवेश पत्र डाउनलोड करें | 
							<br/> (सिर्फ शारीरिक दक्षता परीक्षा के लिए चुने गए उम्मीदवारों के लिए) 


            <br />
                            <br />
                        </span>
                    </p>
                    <br />
                    <br />



                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <ul class="nav nav-pills nav-stacked arrow_link">
                        <li visible="false" runat="server" id="LiNewUser"><a href="../Candidate/EntryForm.aspx" class="arrow_col1">
                            <img src="../img/icon-newuser.png" alt="" />
                            <asp:Label ID="lblnewuser" runat="server" Style="font-size: 13px; font-weight: bold"></asp:Label></a></li>
                        <li runat="server" id="Li1" visible="false"><a href="../Candidate/ObjectionLogin.aspx" class="arrow_col1">
                            <img src="../img/icon-newuser.png" alt="" />
                            <asp:Label ID="Label16" Text="Objection Form Link" runat="server" Style="font-size: 13px; font-weight: bold"></asp:Label></a></li>
                        <li visible="true" runat="server"><a href="../Candidate/ExistingUser.aspx" class="arrow_col2">
                            <img src="../img/icon-existUser.png" alt="" />
                            <asp:Label ID="lblexistinguser" runat="server" Style="font-size: 13px; font-weight: bold"></asp:Label></a></li>
                        <div style="height: 10px;"></div>
                        <li><a href="../Candidate/ForgetCredential.aspx" class="arrow_col2">
                            <img src="../img/icon-existUser.png" alt="" />
                            <asp:Label ID="Label1" runat="server" Style="font-size: 13px; font-weight: bold" Text="Forgot Password"></asp:Label></a></li>
                        <div style="height: 10px;"></div>
                    </ul>
                     <div class="list-group">
                        <a href="../Candidate/Qualified.aspx" target="_blank" class="list-group-item active"><strong>
                            <asp:Label ID="Label20" runat="server" Font-Size="Small">List of Shortlisted Candidates for Physical Endurance Test</asp:Label></strong> </a>
                   
                    </div>
                    <div class="list-group" style="display:none">
                        <a href="../PDFDocs/Process1.pdf" target="_blank" class="list-group-item active"><strong>
                            <asp:Label ID="lblHowtoapply" runat="server"></asp:Label></strong> </a>
                        <a href="CMAT Registration Video/CMAT Registration Video_demo/CMAT Registration Video_demo.htm" target="_blank" runat="server" visible="false"><%--<img src="../img/video.jpg" alt="" />--%></a>
                    </div>
                    <div style="height: 10px;"></div>
                    <ul class="nav nav-pills nav-stacked arrow_link">
                        <li style="display: none"><a href="#" class="arrow_col3">
                            <asp:Label ID="lblinstructionoffillingform" runat="server"></asp:Label></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>

        <div class="blue_bg">
            <div class="container">

                <div class="col-md-6 txtBorder" style="display: none;">
                    <img src="../img/icon-sampleDocu.png" alt="" /><h5><strong>
                        <asp:Label ID="lblSampleDocuments" runat="server"></asp:Label></strong></h5>
                    <p runat="server" visible="true">
                        <a target="_blank" id="A2" href="#">
                            <asp:Label ID="lblCategoryCertificate" runat="server"></asp:Label></a>
                    </p>
                    <p runat="server" visible="false">
                        <a target="_blank" id="A10" href="../Documents/Scribe_Form - CMAT.pdf">
                            <asp:Label ID="lblpd" runat="server"></asp:Label></a>
                    </p>
                    <p runat="server" visible="false">
                        <a target="_blank" id="A11" href="../Documents/CandidateIdentificationAffidavit.pdf">
                            <asp:Label ID="lblCandidateIdentificationAffidavit" runat="server"></asp:Label></a>
                    </p>
                    <p runat="server" visible="false">
                        <a target="_blank" id="A17" href="../Documents/Scribe_Undertaking_Certificate_by_Candidate.pdf">
                            <asp:Label ID="lblScribeUndertakingCertificate" runat="server"></asp:Label></a>
                    </p>
                </div>

                <div class="col-md-6">
                    <img src="../img/icon-contact.png" alt="" /><h5><strong>
                        <asp:Label ID="lblHelpline" runat="server"></asp:Label></strong></h5>
                    <p>
                        <asp:Label ID="lblemail" Font-Bold="true" Text="Email Id : fciraipurquery@gmail.com" runat="server"></asp:Label>
                    </p>

                    <h5><strong>
                        <asp:Label ID="Label2" Text="Contact No.: 0755-4031428" runat="server"></asp:Label></strong></h5>
                    <p>

                        <asp:Label ID="Label7" Text="Helpdesk support will be provided during the working office hours only" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" Text="(Timings: 10:00am to 06:00pm, Monday to Saturday)" runat="server"></asp:Label>
                    </p>

                    <p>

                        <asp:Label ID="Label11" Text="Note :- In case of any clarification/doubt please refer to English version of the published advertisement. English Version will be considered as final for any reference" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label14" Text="" runat="server"></asp:Label>
                    </p>


                    <h4>
                        <asp:Label ID="lbltelephone" runat="server" Style="display: none;"></asp:Label></h4>
                    <p style="display: none">
                        <a href="#">
                            <asp:Label ID="lblFeedback" runat="server" Style="display: none;"></asp:Label></a>
                    </p>
                </div>
            </div>
        </div>

        <div class="navbar navbar-default navbar-default">
            <div class="container">
                <div class="col-md-8 col-sm-6 col-xs-12">
                    <%-- <p class="navbar-text pull-left">
                        <strong>All rights reserved (C) 2017. Attest Testing Services</strong><br />
                    </p>--%>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="text-right">
                        <div class="f-callus" style="display: none">
                            Visitor Counts: <span class="visCount">
                                <asp:Label ID="LabelCount" runat="server"></asp:Label></span>
                        </div>
                        <div class="knowmore">Know more about <a href="http://fci.gov.in/" target="_blank"><strong>FCI</strong></a></div>
                    </div>
                </div>
            </div>
        </div>
        <script type='text/javascript'>

            var dat = Date();
            var res = dat.split(" ");
            var fullDate = res[0] + ' ' + res[1] + ' ' + res[2] + ' ' + res[3];
            document.getElementById("dateTime").innerHTML = fullDate;

            var myVar = setInterval(myTimer, 1000);
            function myTimer() {
                var d = new Date();
                document.getElementById("timer").innerHTML = d.toLocaleTimeString();
            }

            //<![CDATA[
            (function () {
                var quotes = $(".quotes");
                var quoteIndex = -1;

                function showNextQuote() {
                    ++quoteIndex;
                    quotes.eq(quoteIndex % quotes.length)
                    .fadeIn(200)
                    .delay(4000)
                    .fadeOut(200, showNextQuote);
                }
                showNextQuote();
            })();
            //]]> 

        </script>

        <script type="text/javascript">
            window.onload = function () {
                setInterval('changestate()', 300);
            };
            var currentState = 'show';
            function changestate() {
                //debugger;
                if (currentState == 'show') {
                    document.getElementById('<%= Label7.ClientID %>').style.backgroundColor = "#ff8000"
                    document.getElementById('<%= Label8.ClientID %>').style.backgroundColor = "#ff8000"
                    document.getElementById('<%= Label11.ClientID %>').style.backgroundColor = "#ff8000"
                    document.getElementById('<%= pMessage.ClientID %>').style.backgroundColor = "#ff8000"
                    currentState = 'hide';
                }
                else {
                    document.getElementById('<%= Label7.ClientID %>').style.backgroundColor = "green"
                    document.getElementById('<%= Label8.ClientID %>').style.backgroundColor = "green"
                    document.getElementById('<%= Label11.ClientID %>').style.backgroundColor = "green"
                    document.getElementById('<%= pMessage.ClientID %>').style.backgroundColor = "green"
                    currentState = 'show';
                }
            }
        </script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </form>
    <!-- CMAT Google Tag Manager -->
    <script>    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-TG7WMKC');</script>
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TG7WMKC"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End CMAT Google Tag Manager -->
</body>
</html>
