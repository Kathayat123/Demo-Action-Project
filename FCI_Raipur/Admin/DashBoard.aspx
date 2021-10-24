<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="Admin_DashBoard" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="content" ContentPlaceHolderID="ContentPlaceHolder1">
    <%--  <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Physical Handicap Count ::
            </th>

        </tr>--%>
    <table class="Hrftable">

        <tr>
            <th colspan="4" style="font-weight:bold;font-size:16px;">DashBoard
            </th>
        </tr>
        <tr style="background-color:#fdfdd6;">
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Title</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Current Count</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Previous Count</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Total Count</td>

        </tr>
        <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="lblRegHeader" runat="server" Text="Total Registration"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblTotalCurrentRegcount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblTotalPreviousRegcount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblTotalRegcount" runat="server" Text=""></asp:Label></td>

        </tr>
        <tr runat="server" visible="false">

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Postwise Count ::
            </th>

        </tr>
        <tr runat="server" visible="false">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label5" runat="server" Text="Driver"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpsot1Currentcount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpsot1Previouscount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpsot1Totalcount" runat="server" Text=""></asp:Label></td>

        </tr>

         <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Gender Count ::
            </th>

        </tr>

        <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label9" runat="server" Text="Male"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcmale" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpmale" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalmale" runat="server" Text=""></asp:Label></td>

        </tr>

        <tr >
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label1" runat="server" Text="Female"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcfemale" runat="server"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpfemale" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalfemale" runat="server" Text=""></asp:Label></td>

        </tr>

       <%-- <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Online Successful Count ::
            </th>

        </tr>--%>

        <tr  >
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                Transgender</td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblctrasgender" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblptrasgender" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotaltrasgender" runat="server" Text=""></asp:Label></td>

        </tr>

         <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Category Count ::
            </th>

        </tr>

        <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label6" runat="server" Text="SC"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcCs" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpCs" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalsc" runat="server" Text=""></asp:Label></td>

        </tr>

        <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label14" runat="server" Text="ST"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcST" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPST" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalST" runat="server" Text=""></asp:Label></td>

        </tr>
         <tr style ="display:none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label18" runat="server" Text="VJ-A"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>

        </tr>
        <tr style ="display:none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label22" runat="server" Text="NT-B"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                0</td>

        </tr>

        <tr style ="display:none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label26" runat="server" Text="NT-C"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcNTC" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPNTC" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalNTC" runat="server" Text="0"></asp:Label></td>

        </tr>
          <tr style ="display:none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label30" runat="server" Text="NT-D"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcNTD" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPNTD" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalNTD" runat="server" Text="0"></asp:Label></td>

        </tr>
         <tr style ="display:none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label34" runat="server" Text="SBC"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcSBC" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPSBC" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalSBC" runat="server" Text="0"></asp:Label></td>

        </tr>
         <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label38" runat="server" Text="OBC"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcOBC" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPOBC" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalOBC" runat="server" Text=""></asp:Label></td>

        </tr>

         <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label42" runat="server" Text="UNRESERVED"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcOPEN" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblPOPEN" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalOPEN" runat="server" Text=""></asp:Label></td>

        </tr>

        <%--  <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Submitted Count ::
            </th>

        </tr>--%>        <%--</div>--%>

         <tr runat="server">

             <td width="100" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold; background-color:orange ;color:#000;" align="left">
                <asp:Label ID="Label12" runat="server" Text="Form completed but not paid"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold; background-color:orange;color:#000;" align="right">
                <asp:Label ID="Label13" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold; background-color:orange;color:#000;" align="right">
                <asp:Label ID="Label15" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold; background-color:orange;color:#000;" align="right">
                <asp:Label ID="Label16" runat="server" Text=""></asp:Label></td>

        </tr>
         <tr runat="server">

            <th colspan="4" style="background-color:#15c23c;color:#000; height:12px; font-weight:bold;">Eligible Exam Count ::
            </th>

        </tr>

         <tr style ="display :none">
            <td width="100" style="font-size: 9px; height:8px;font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label2" runat="server" Text="PWD Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; height:8px;font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcphcount" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpphcount" runat="server" Text="0"></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalphcount" runat="server" Text="0"></asp:Label></td>

        </tr>

         <tr>
            <td width="100" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label7" runat="server" Text="ST/SC/PWD/EX-SERVICEMEN/WOMEN Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px;height:8px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>

        </tr>

       <%-- <tr>

            <th colspan="4" style="background-color:#fdfdd6;color:#000; font-weight:bold;">Online Successful Count ::
            </th>

        </tr>--%>
        
       
         <tr style ="display :none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label17" runat="server" Text="ST Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblocountST" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblopountST" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblototalcountST" runat="server" Text=""></asp:Label></td>

        </tr>

          <tr style ="display :none">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label19" runat="server" Text="SC Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblocountSC" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblopountSC" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblototalcountSC" runat="server" Text=""></asp:Label></td>

        </tr>
         <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label3" runat="server" Text="Online Payment Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblocount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblopount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblototalcount" runat="server" Text=""></asp:Label></td>

        </tr>

         <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label20" runat="server" Text="SBI Payment Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblCurrSBI" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblAllSBI" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblTotalSBI" runat="server" Text=""></asp:Label></td>

        </tr>

        <tr>
            <td style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 180px;" align="right" colspan="3">
                Total</td>
            <td width="80" style="font-size: 11px; background-color:#ff0000; color:white; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltotalcountpaid" runat="server" Text=""></asp:Label></td>

        </tr>

         <tr>
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label4" runat="server" Text="Submitted Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblcsubcount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpsubcount" runat="server" Text=""></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lbltsubcount" runat="server" Text=""></asp:Label></td>

        </tr>

          <tr style="display:none;">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label44" runat="server" Text="Staff Nurse Grade-I (Nursing Sisters) Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost1Count" runat="server"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost1PCount" runat="server"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost1TCount" runat="server"></asp:Label></td>

        </tr>

         <tr style="display:none;">
            <td width="100" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="left">
                <asp:Label ID="Label45" runat="server" Text="Staff Nurse Grade-II (Sister Grade-II) Count"></asp:Label>
            </td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost2Count" runat="server"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost2PCount" runat="server"></asp:Label></td>
            <td width="80" style="font-size: 9px; font-family: Verdana; font-weight: bold;" align="right">
                <asp:Label ID="lblpost2TCount" runat="server"></asp:Label></td>

        </tr>
        <tr>
        <td style="height:25px;" colspan="4"></td>
        </tr>

    </table>
    <%--</div>--%>

    <script type="text/javascript" language="javascript" src="../Portal/headers/creditsfootermp.js"></script>
</asp:Content>

