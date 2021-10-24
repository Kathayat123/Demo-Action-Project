<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CashPayment.aspx.cs" Inherits="CashPayment" %>

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
    <form id="form1" runat="server">

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
                        <h1><strong>
                            <asp:Label ID="lblCMAT" runat="server" Text="Chhattisgarh Region"></asp:Label>
                            <br>
                            <asp:Label ID="lblCMAT1" runat="server"></asp:Label></strong></h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="highlights">
            <div class="container">
                <div class="col-md-2 col-sm-3 col-xs-3">
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
    
    </div>
  </div>
</nav>
        <center>

            <div class="container white_bg">
                <div style="height: 15px;"></div>
                <div class="col-md-3  col-sm-4 col-xs-12">
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="container white_bg">
                        <div class="inner_content ">
                            <div class="heading">
                            </div>
                            <%-- <div class="heading" style="text-align: left;">
                                <span style="font-size: 14px;">Login Id:</span>&nbsp;
                    <asp:Label ID="lblregno" runat="server" Font-Size="14px"></asp:Label>
                            </div>--%>

                            <div align="right">
                                <font style="color: Red">*</font>
                                <asp:Label ID="lblstarmarks" runat="server" Text="" ForeColor="Red"></asp:Label>

                            </div>
                            <div id="pnlMain">

                                <table class="Hrftable">
                                    <tr>
                                        <td>

                                            <table class="Hrftable">
                                                <tr runat="server">
                                                    <td colspan="3">
                                                        <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <%--<td style="width: 3%">1.</td>--%>
                                                    <td style="width: 45%">
                                                        <asp:Label ID="lblkloginId" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="txtloginid" runat="server" Text=""></asp:Label>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td style="height: 10px"></td>
                                                </tr>
                                                <tr style="vertical-align: top;">
                                                    <%--<td class="auto-style1" style="width: 3%">2. </td>--%>
                                                    <td class="auto-style1" style="width: 35%">
                                                        <asp:Label ID="lblcandidatename" runat="server" Text=""></asp:Label>
                                                        <br />
                                                    </td>
                                                    <td>

                                                        <asp:Label ID="txtcandidatename" runat="server" Text=""></asp:Label>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 10px"></td>
                                                </tr>
                                                <tr>
                                                    <%-- <td style="width: 3%">3.
                                                    </td>--%>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblcategory" runat="server"></asp:Label></td>
                                                    <td>
                                                        <asp:Label ID="txtcategory" runat="server" Text=""></asp:Label>
                                                        <br />
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td style="height: 10px"></td>
                                                </tr>
                                                <tr>
                                                    <%-- <td class="auto-style1">4.
                                                    </td>--%>
                                                    <td class="auto-style1">
                                                        <asp:Label ID="lblmobileno" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td class="auto-style1">
                                                        <asp:Label ID="txtmobileno" runat="server"></asp:Label>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 10px"></td>
                                                </tr>
                                                <tr>
                                                    <%--<td class="auto-style1">5.</td>--%>
                                                    <td class="auto-style1">
                                                        <asp:Label ID="lblRegistrationFee" runat="server" Text="REGISTRATION FEE(पंजीकरण शुल्क)"></asp:Label>
                                                    </td>
                                                    <td class="auto-style1">
                                                        <asp:Label ID="txtRegistrationFee" runat="server"></asp:Label>
                                                        + Bank Charges</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <%--<tr>
                                        <td>
                                            <strong>
                                                <span>Notice – Candidates are advised to fill up the Registration No. correctly, in case of any mis-match it will not be updated at UP Jal Nigam Website.<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fee once deposited is not refundable.&nbsp; Registration Fee is Rs. 600/- for GEN / OBC and Rs. 300/- for SC / ST.<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Fee will be updated at UP Jal Nigam Website&nbsp; after next working day of depositing Fee.<o:p></o:p></span></p>
                              
                                    <span>In case of any query please contact at UP Jal Nigam Help Line No. – 1800-180-8737/ +91-9544874491 and email id-  <a href="mailto:helpdesk.upjn305@gmail.com">helpdesk.upjn305@gmail.com</a> .<br />
                                        For any transaction related issue, please email to <a href="mailto:sbi.00125@sbi.co.in">sbi.00125@sbi.co.in</a>.<o:p></o:p></span></p>
                                            </strong>
                                        </td>
                                    </tr>--%>
                                    <tr>
                                        <td>
                                            <br />
                                            Go to the <a href="../Home/ListofExam.aspx" class="blue_link">Login Page</a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td align="center">
                                            <asp:Button ID="btnsubmit" runat="server" Text="Proceed.." BackColor="#3F8B3F" Width="150px"
                                                ForeColor="White" class="btn btn-lg btn-primary btn-block" OnClick="btnsubmit_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <br />
                            <div style="text-align: center">
                                &nbsp;<input type="hidden" name="hdHash" id="hdHash" value="fb329e63-22f8-414e-b8c1-f0a532f7b99c" /><input type="hidden" name="hdKIOSKID" id="hdKIOSKID" value="LoginID" /><input type="hidden" name="HdnEligibleUR" id="HdnEligibleUR" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <br />
            <br />
        </center>
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
