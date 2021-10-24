vsStrBldr.Append("<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home"  %>

vsStrBldr.Append("<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

vsStrBldr.Append("<html xmlns="http://www.w3.org/1999/xhtml">
vsStrBldr.Append("<head>
    vsStrBldr.Append("<title>Administrator Login ::vsStrBldr.Append("</title>
    
    vsStrBldr.Append("<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    vsStrBldr.Append("<link href="../Portal/Examinations/Css/StyleSheet.css" rel="stylesheet" type="text/css" />
     vsStrBldr.Append("<link href="../Portal/Examinations/Css/VyapamForm.css" rel="stylesheet" type="text/css" />
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/WriteConstants.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/ErrorHandler.js" type="text/javascript">vsStrBldr.Append("</script>
     vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/jquery.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/slide.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/SevicesLogo.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/subheader.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/PortalHeaderforall.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/Kiosk.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/Ticker.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/TimeTick.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<script  src="../Portal/headers/MPOnlineHeader/Zoom.js" type="text/javascript">vsStrBldr.Append("</script>
    vsStrBldr.Append("<link href="../Css/CalendarControl.css" rel="stylesheet" type="text/css" />
    vsStrBldr.Append("<script src="../Css/CalendarControl.js" language="javascript" type="text/javascript">vsStrBldr.Append("</script>
       vsStrBldr.Append("<script type="text/javascript">var MsgDiv = document.createElement("div"); MsgDiv.id = "divclMsg"; document.body.appendChild(MsgDiv);vsStrBldr.Append("</script>
    vsStrBldr.Append("<script type="text/javascript">

        function ShowCurrentTime() {

            var dt = new Date();

            document.getElementById("LblTime").innerHTML = dt.toDateString() + "  " + dt.toLocaleTimeString();

            window.setTimeout("ShowCurrentTime()", 1000); // Here 1000(milliseconds) means one 1 Sec  

        }

    vsStrBldr.Append("</script>

    vsStrBldr.Append("<style>
        .tableStyle {
            border-style: solid;
            border-width: 1px;
            border-color: #fff;
        }

        .tableStyleinner {
            border-style: solid;
            border-width: 1px;
            border-color: #999999;
            border-radius: 11px;
            -moz-border-radius: 10px;
        }

        .Lefttd {
            padding-left: 5px;
            font-family: Verdana;
            font-size: 11px;
            font-weight: bold;
        }

        .Lefttd1 {
            padding-left: 5px;
            font-family: Verdana;
            font-size: 11px;
            font-weight: bold;
            text-align: left;
            vertical-align: middle;
        }

        .RightTd {
            padding-left: 5px;
            width: 50%;
            font-family: Verdana;
            font-size: 11px;
            font-weight: bold;
            text-align: left;
            vertical-align: middle;
        }

        .Textbox {
            font-family: Verdana;
            font-size: 11px;
            color: #000;
        }

        .BlankRow {
            border-bottom-color: Gray;
            border-bottom-style: solid;
            border-bottom-width: 1px;
        }

        .TopHeader {
            font-family: Verdana;
            font-size: 15px;
            vertical-align: middle;
            color: Black;
            font-weight: bold;
            height: 25px;
            background: url(../images/bannerBG.gif) no-repeat;
            text-align: left;
            border-radius: 5px;
            -moz-border-radius: 5px;
            padding-left: 3px;
        }

        .Button {
            background-color: #186ca3;
            font-family: Verdana;
            font-size: 13px;
            font-weight: bold;
            border-width: 1px;
            border-style: solid;
            border-color: #69001d;
            height: 30px;
            color: White;
            border-radius: 5px;
            -moz-border-radius: 5px;
        }

        .style1 {
            height: 20px;
        }

        .style2 {
            width: 5%;
            height: 6px;
        }

        .style4 {
            padding-left: 5px;
            width: 2%;
            font-family: Verdana;
            font-size: 11px;
            font-weight: bold;
            text-align: left;
            vertical-align: middle;
            height: 6px;
        }

        .style5 {
            width: 10%;
            height: 6px;
        }

        .style6 {
            width: 5%;
            height: 9px;
        }

        .style7 {
            height: 9px;
        }

        .style8 {
            padding-left: 5px;
            width: 2%;
            font-family: Verdana;
            font-size: 11px;
            font-weight: bold;
            text-align: left;
            vertical-align: middle;
            height: 9px;
        }

        .style10 {
            width: 1%;
            height: 20px;
        }

        .style11 {
            width: 1%;
        }
    vsStrBldr.Append("</style>

        vsStrBldr.Append("<script language="javascript" type="text/javascript">
            function Validuser() {
                var id = document.getElementById("txtloginid");
                var pwd = document.getElementById("txtpwd");

                if (id.value == "") { alert(" Input your Login Id !! "); id.focus(); return false; }
                if (pwd.value == "") { alert(" Input your Password !! "); pwd.focus(); return false; }
            }
        vsStrBldr.Append("</script>
vsStrBldr.Append("</head>
vsStrBldr.Append("<body onload="ShowCurrentTime();">
    vsStrBldr.Append("<form id="form1" runat="server">

    vsStrBldr.Append("<div id="container">
    
        vsStrBldr.Append("<div id="newssection">
            vsStrBldr.Append("<table style="width: 100%;" >
                vsStrBldr.Append("<tr>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                    vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>

                vsStrBldr.Append("</tr>

                 vsStrBldr.Append("<tr>
                    vsStrBldr.Append("<td style="text-align:center; vertical-align:middle;" colspan="19">

            vsStrBldr.Append("<table style="width: 100%;">
                vsStrBldr.Append("<tr align="center">
                    vsStrBldr.Append("<td  colspan="9" align="center" style="text-align:center;">
vsStrBldr.Append("<table class="MPPEBtable">





vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">Total Registration CountvsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("<asp:Label ID="lblTotal" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
vsStrBldr.Append("<%--    vsStrBldr.Append("<a href="/Portal/Examinations/Vyapam/Forms/HandicappedRegistration/FrmEntryForm.aspx" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblamarvati" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
vsStrBldr.Append("<%--    vsStrBldr.Append("<a href="/Portal/Examinations/Vyapam/Forms/HandicappedRegistration/HandiPaidUnpaid.aspx" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblkalwa" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
vsStrBldr.Append("<%--    vsStrBldr.Append("<a href="/Portal/Examinations/vyapam/Forms/HandicappedRegistration/FrmEntryFormEdit.aspx" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblkard" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
 vsStrBldr.Append("<%--   vsStrBldr.Append("<a href="/Portal/Examinations/Vyapam/Forms/HandicappedRegistration/forgotpassword.aspx" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>

vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblnagpur" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
   vsStrBldr.Append("<%-- vsStrBldr.Append("<a href="/Portal/Examinations/vyapam/notifications.aspx?langid=en-US&amp;id=56" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblnasik" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
   vsStrBldr.Append("<%-- vsStrBldr.Append("<a href="/Portal/Examinations/vyapam/Forms/SEED_2016/FrmEntryFormUnpaidEdit.aspx" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblpune" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
 vsStrBldr.Append("<%--   vsStrBldr.Append("<a href="/Portal/Examinations/vyapam/notifications.aspx?langid=en-US&amp;id=561" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>
 vsStrBldr.Append("<tr>
  vsStrBldr.Append("<td width="350" style="font-size:12px; font-family:Verdana; font-weight:bold;" align="left">vsStrBldr.Append("<asp:Label ID="lblvashi" runat="server" Text="">vsStrBldr.Append("</asp:Label>vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="90" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="99" align="center" valign="middle">vsStrBldr.Append("</td>
  vsStrBldr.Append("<td align="center" width="93">&nbsp;vsStrBldr.Append("</td>
  vsStrBldr.Append("<td width="93" align="center">
 vsStrBldr.Append("<%--   vsStrBldr.Append("<a href="/Portal/Examinations/vyapam/notifications.aspx?langid=en-US&amp;id=561" class="apply">ApplyvsStrBldr.Append("</a>--%>
  vsStrBldr.Append("</td>
vsStrBldr.Append("</tr>

vsStrBldr.Append("</table>
                       vsStrBldr.Append("</td>

                vsStrBldr.Append("</tr>
                 vsStrBldr.Append("<tr>
                    vsStrBldr.Append("<td style="width:5%; ">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:2%; " class="RightTd">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:10%; text-align:left; vertical-align:middle;"">

                        &nbsp;vsStrBldr.Append("</td>
                    vsStrBldr.Append("<td style="width:5%; ">

                        &nbsp;vsStrBldr.Append("</td>

                vsStrBldr.Append("</tr>
            vsStrBldr.Append("</table>
                     vsStrBldr.Append("</td>

                vsStrBldr.Append("</tr>
                 vsStrBldr.Append("</table>
        vsStrBldr.Append("</div>
        vsStrBldr.Append("</div>

  
   
    vsStrBldr.Append("</form>
     vsStrBldr.Append("<script type="text/javascript"  src="../Portal/headers/creditsfootermp.js">vsStrBldr.Append("</script>
vsStrBldr.Append("</body>
vsStrBldr.Append("</html>
