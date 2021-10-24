<%@ Page Title="" Language="C#" MasterPageFile="~/SchedulerJune2016/Schedule.master" AutoEventWireup="true" CodeFile="GenerateRoaster.aspx.cs" Inherits="SchedulerSep2014_GenerateRoaster" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css" media="print,screen" >
th 
{     
font-family:Arial; color:black; background-color:lightgrey;
} 
thead 
{    
display:table-header-group; 
} 
tbody 
{     
display:table-row-group;
}
    .style1
    {
    	padding-left:8px;
    }
    .style4
    {
            width: 5%;
            height: 1px;
        }
        .style6
        {
            height: 1px;
        }
        .style7
        {
            font-size: 14px;
            color: #9d6272;
            font-family: Arial;
            font-weight: bold;
            text-align: left;
            padding-left: 27px;
            height: 1px;
        }
        .style8
        {
            height: 10px;
        }
        .auto-style1 {
            height: 7px;
        }
    </style>

    <script language="Javascript" type="text/javascript">
/* ================= ONLY Alphabets=========================================================================== */
function ValidateAlpha()
{
var keyCode = window.event.keyCode;
if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
{
window.event.returnValue = false;
alert("Enter only Aplhabets");
}
}
/* =========================================================================================== */
/* Numeric Checking */

function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("Enter a valid number");
        return false;
    }

    return true;
}
/*======================================================================================== */
/*----------------------------------------------------------------------------- */

function SelectAllCheckboxes(spanChk) {

    // Added as ASPX uses SPAN for checkbox

    var oItem = spanChk.children;
    var theBox = (spanChk.type == "checkbox") ?
        spanChk : spanChk.children.item[0];
    xState = theBox.checked;
    elm = theBox.form.elements;

    for (i = 0; i < elm.length; i++)
        if (elm[i].type == "checkbox" &&
              elm[i].id != theBox.id) {

            //elm[i].click();
            if (elm[i].checked != xState)
                elm[i].click();
            //elm[i].checked=xState;

        }

}

//sINGLE check


// Let's use a lowercase function name to keep with JavaScript conventions

    </script>
     <script type="text/javascript" language="javascript">
         function back() {
             history.back(-1);
         }



         function printStatement() {
             var owin = window.open("", "PrintWindow", "height=100, width=100, top=0, left=0")
             owin.document.body.innerHTML = gendiv.innerHTML;
             owin.print();
             owin.close();
         }

    
    </script>

   
     
    <table align="left" style="width: 100%">
    <tr id="trcenterlist" runat="server" visible="false">
        <td class="LeftTd" colspan="12" valign="top">
           Select One Centre:<br />
            <asp:DropDownList ID="RadioButtonList1" runat="server" Width="556px">

            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6">
            </td>
        <td class="style7">
        </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
    </tr>
    <tr>
        <td class="LeftTd" colspan="12" >
            Select Exam Date</td>
    </tr>
    <tr>
        <td class="style1" colspan="12">
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="false" 
                CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px" 
                ClientIDMode="Static" 
                Width="206px">
                  <asp:ListItem Value="24" Selected="True">24 SEP 2017</asp:ListItem>
                   <%-- <asp:ListItem Value="06">06 AUG 2016</asp:ListItem>
                <asp:ListItem Value="07">07 AUG 2016</asp:ListItem>--%>
                <%--<asp:ListItem Value="20">20 Feb 2016</asp:ListItem>
                <asp:ListItem Value="21">21 Feb 2015</asp:ListItem>
                <asp:ListItem Value="22">22 Feb 2015</asp:ListItem>--%>
                <%--<asp:ListItem Value="23">23 Feb 2015</asp:ListItem>--%>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td colspan="12" class="style8">
            </td>
    </tr>
    <tr>
        <td class="LeftTd" colspan="12">
            Select Slot No.</td>
    </tr>
    <tr>
        <td class="style1" colspan="12">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="false" 
                CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px" 
                Height="56px" ClientIDMode="Static" 
                Width="240px">
                 <asp:ListItem Value="1" Selected="True">Slot 1</asp:ListItem>
       <%--         <asp:ListItem Value="2">Slot 2</asp:ListItem>
                <asp:ListItem Value="3">Slot 3</asp:ListItem>--%>
            </asp:RadioButtonList>
        </td>
    </tr>
        <tr runat="server" visible="false">
        <td class="LeftTd" colspan="12">
            Select Roster</td>
    </tr>
        <tr runat="server" visible="false">
        <td class="style1" colspan="12">
            <asp:RadioButtonList ID="rdroster" runat="server" AutoPostBack="false" 
                CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px" 
                ClientIDMode="Static" 
                Width="240px">
                 <asp:ListItem Value="1">Roster 1</asp:ListItem>
             <%--   <asp:ListItem Value="2">Roster 2</asp:ListItem>--%>
               
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td align="left" colspan="2">
            <asp:Button ID="btnCreate" runat="server" Text="Generate Roster" Width="134px" 
                onclick="btnCreate_Click" />
                                <asp:Label ID="Label12" runat="server" CssClass="box-head" 
                Visible="False"></asp:Label>
        </td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="12">
           
            </td>
    </tr>
    <tr id="trrow1" runat="server" visible="true">
        <td colspan="12" valign="middle" align="left" class="auto-style1">
         <%--   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
         <%--       </ContentTemplate>
            </asp:UpdatePanel>--%>
              <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            </td>
    </tr>
    <tr id="trrow11" runat="server" visible="true">
        <td colspan="12" valign="middle" align="left" style="height: 7px">
            &nbsp;</td>
    </tr>
    </table>

        </asp:Content>

