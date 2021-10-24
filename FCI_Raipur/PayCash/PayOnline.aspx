<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="PayOnline.aspx.cs" Inherits="PayCash_PayOnline" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../Css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="../js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <title>FCI:Response::</title>


    <script type="text/javascript" src="../Script_Library/jscript.js"></script>

    <script type="text/javascript" src="../Script_Library/expandcollapse.js"></script>

    <script type="text/javascript" src="../Script_Library/planner-accordian.js"></script>

    <script src="../Script_Library/JavaFuncs.js" type="text/javascript"></script>

    <style type="text/css">
        .style1 {
            height: 36px;
        }

        .style2 {
            height: 20px;
        }

        .style3 {
            height: 30px;
        }

        .style4 {
            height: 6px;
        }

        .style5 {
            height: 7px;
        }
    </style>

</head>
<body style="margin: 0 0 0 0;">
    <form id="nonseamless" method="post" action="ccavRequestHandler.aspx">

        <div class="topdiv">
            <div class="container text-right">
                <div class="dateTime">
                    <img src="../img/icon-date.jpg" alt="" />
                    <span id="dateTime"></span>| <span id="timer"></span>IST   
       
                </div>
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
                        <h1><strong><asp:Label ID="lblCMAT" runat ="server" Text="Chhattisgarh Region"  ></asp:Label> <br><asp:Label ID="lblCMAT1" runat ="server"  ></asp:Label></strong></h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="highlights">
            <div class="container">
                <div class="col-md-2 col-sm-3 col-xs-3">
                </div>
                <div class="col-md-10 col-sm-9 col-xs-9" style="color: black; font-weight: bold; font-size: 20px">
                    <%--<marquee direction="left">CMAT 2016 Exam Result Declared</marquee>  --%>
                    <%--  <marquee direction="left" style="font-size:14px;">Admit card of valid candidates  will be sent to their registered email ID on or before  14th Jan'16. Please contact helpdesk if you do not receive your Admit Card by then.</marquee>--%>
                    <%--<marquee direction="left" style="font-size:14px;" runat="server" visible="false">Use Online Payment facility to Access CMAT 2017 Merit List</marquee>--%>
                    <%--<p class="quotes">Online registration starts from 3rd Nov 2015</p>
	<p class="quotes">Online registration starts from 3rd Nov 2015</p>--%>
                    <%--    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration for Trade Apprentices </p>--%>
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
    <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul id="ctl00_TopLinks_BLinks" class="nav navbar-nav navbar-left">
       
        <li class="active"><a href="../College/Index_New.aspx"><asp:Label ID="lblhome" runat ="server"  ></asp:Label></a></li>
        <li><a href="../college/eligibility.aspx"><asp:Label ID="lbleligibilty" runat ="server"  ></asp:Label></a></li>
        <li><a href="../college/payment-process.aspx"><asp:Label ID="lblpaymentprocess" runat ="server"  ></asp:Label></a></li>
        <li><a href="../college/test-cities.aspx"><asp:Label ID="lbltestcities" runat ="server"  ></asp:Label></a></li>
        <li><a href="../college/test-pattern.aspx"><asp:Label ID="lbltestpatern" runat ="server"  ></asp:Label></a></li>
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle = "dropdown"><asp:Label ID="lblnotification" runat ="server"  ></asp:Label><b class="caret"></b></a>
          <ul class="dropdown-menu">
              <li><a target="_blank" href="../Documents/CMAT_GPAT_2017.pdf"><asp:Label ID="lbladvertisement" runat ="server"  ></asp:Label></a></li>
            <li><a href="#"><asp:Label ID="lblpressrelese" runat ="server"  ></asp:Label></a></li>
            <li><a href="#"><asp:Label ID="lblstategovernment" runat ="server"  ></asp:Label></a></li>
            <li><a href="#"><asp:Label ID="lbluniversity" runat ="server"  ></asp:Label></a></li>
            
          </ul>
        </li>
         <li><a href="../college/CMAT-Feb2015.aspx"><asp:Label ID="lblpassresult" runat ="server"  ></asp:Label></a></li>
        <li><a href="../college/faq.aspx"><asp:Label ID="lblfaq" runat ="server"  ></asp:Label></a></li>
      </ul>
    </div>--%>
    </div>
  </div>
</nav>


        <div class="container white_bg">
            <div style="height: 15px;"></div>
            <div class="col-md-3  col-sm-4 col-xs-12">
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
                <form id="form1" runat="server">
                    <asp:HiddenField ID="hfCId" runat="server" />
                    <div class="row">

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">PAYMENT DETAILS</span></div>
                        </div>
                    </div>

                    <br />
                    <%--    <div class="clearfix"></div>--%>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="formLabelTxt">
                                ORDER NO.
                <br />
                                &nbsp;&nbsp;
                            </div>
                            <br />
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <asp:Label ID="lblordernoTextvalue" runat="server" ForeColor="#336699" Style="font-weight: 700"></asp:Label>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="formLabelTxt">
                                ACTUAL FEE
                <br />
                            </div>
                            <br />
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <asp:Label ID="lblActualFeeValue" runat="server" ForeColor="#336699" Style="font-weight: 700"></asp:Label>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="formLabelTxt">
                                BANK CHARGES
                <br />
                            </div>
                            <br />
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <asp:Label ID="lblBankChargesValue" runat="server" ForeColor="#336699" Style="font-weight: 700"></asp:Label>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="formLabelTxt">
                                TOTAL
                <br />
                                &nbsp;&nbsp;
                            </div>
                            <br />
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <asp:Label ID="lblamountvalue" runat="server" ForeColor="#336699" Style="font-weight: 700"></asp:Label>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>

                        <%--   <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt">
            </div>
            <img src="../Img/lstudtArrow_wh.jpg" style="height: 15px;" />
            Debit/Credit Card [Visa/Master Card]<br />
            <img src="../Img/lstudtArrow_wh.jpg" style="height: 15px;" />
            Net Banking<br />
            <br />
        </div>--%>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <input type="submit" name="btnContinue" value="Pay Online" id="btnContinue" class="btn" />

                            <input type="hidden" name="merchant_id" id="merchant_id" runat="server" value="" />
                            <input type="hidden" name="order_id" id="order_id" runat="server" value="" />
                            <input type="hidden" name="amount" id="amount" runat="server" value="" />
                            <input type="hidden" name="currency" id="currency" runat="server" value="" />
                            <input type="hidden" name="redirect_url" id="redirect_url" runat="server" value="" />
                            <input type="hidden" name="cancel_url" id="cancel_url" runat="server" value="" />
                            <input type="hidden" name="hfCId" id="Hidden1" runat="server" value="" />


                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-1">
                            <div class="formLabelTxt"></div>
                            <br />
                        </div>
                    </div>


                </form>
                <br />
            </div>

            <br />
            <div>
            </div>
        </div>
        <br />
        <br />
        <div class="navbar navbar-default navbar-default">
            <div class="container">
                <div class="col-md-8 col-sm-6 col-xs-12">
                    <p class="navbar-text pull-left">
                        <strong>All rights reserved (C) 2017. Attest Testing Services</strong><br />
                    </p>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="text-right">
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

