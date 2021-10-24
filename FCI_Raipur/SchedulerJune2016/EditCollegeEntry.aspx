<%@ Page Title="" Language="C#" MasterPageFile="~/SchedulerJune2016/Schedule.master" AutoEventWireup="true" CodeFile="EditCollegeEntry.aspx.cs" Inherits="SchedulerSep2014_EditCollegeEntry" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</script>


    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
   <%-- <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>--%>
            <table align="left" style="width: 100%;  background-image:Url(images/02.gif);">
                <tr runat="server" visible="true">
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td style="height: 7px">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                    <td style="width: 5%; height: 7px;">
                    </td>
                </tr>
                <tr runat="server" visible="false">
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td style="height: 9px">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                    <td style="width: 5%; height: 9px;">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" style="width: 20%">
                        Enter College Code</td>
                    <td class="fieldtext" style="width: 2%">
                        :</td>
                    <td colspan="10">
                        <asp:DropDownList ID="drpdCenterCode" runat="server" AutoPostBack="True" 
                            CssClass="TextBox" Height="22px" 
                            onselectedindexchanged="drpdCenterCode_SelectedIndexChanged" Width="378px">
                        </asp:DropDownList>
                    </td>
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
                    <td class="fieldtext" colspan="8" style="width: 20%;">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 5px;">
                    </td>
                    <td colspan="6" style="height: 5px">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td style="height: 5px">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                </tr>
                <tr ID="trrow1" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Name of College</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtNameofColellge" runat="server" CssClass="TextBox" 
                            Height="20px" OnkeyPress="ValidateAlpha()" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TxtNameofColellge" Display="None" 
                            ErrorMessage="Kindly enter name of college" InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3" rowspan="21" valign="top">
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                            CssClass="comment-error1" EnableClientScript="true" ShowMessageBox="True" 
                            ShowSummary="False" ValidationGroup="CheckFields" />
                    </td>
                </tr>
                <tr ID="trrow2" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow3" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="top">
                        Address
                    </td>
                    <td class="fieldtext" style="width: 2%" valign="top">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtAddress" runat="server" CssClass="TextBox" Height="61px" 
                            TextMode="MultiLine" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="TxtAddress" Display="None" 
                            ErrorMessage="Kindly enter addrress of college" InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
            <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TxtAddress" Display="None" 
                            ErrorMessage="Special characters are not allowed in the address fields" 
                            Font-Size="11px" ForeColor="#DC0015" 
                            ValidationExpression="^[0-9a-zA-Z .,-/\n/\r/\t/\s]{1,250}$" 
                            ValidationGroup="CheckFields"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr ID="trrow4" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow5" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        State</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:DropDownList ID="drpdState" runat="server" CssClass="TextBox" 
                            Height="22px" Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="drpdState" Display="None" 
                            ErrorMessage="Kindly select name of State" InitialValue="0" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow6" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow24" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        City</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:DropDownList ID="drpdCity" runat="server" CssClass="TextBox" Height="22px" 
                            Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="drpdCity" Display="None" 
                            ErrorMessage="Kindly select name of City" InitialValue="0" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow7" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow8" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        PinCode</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtPinCode" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="6" onkeypress="return isNumberKey(event);" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="TxtPinCode" Display="None" 
                            ErrorMessage="Kindly enter six digit Pincode" InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow9" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow10" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Region</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:DropDownList ID="drpdRegion" runat="server" CssClass="TextBox" 
                            Height="22px" Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="drpdRegion" Display="None" 
                            ErrorMessage="Kindly select Region" InitialValue="0" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow11" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow12" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Name of Contact Person</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtContactPersonName" runat="server" CssClass="TextBox" 
                            Height="20px" OnkeyPress="ValidateAlpha()" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="TxtContactPersonName" Display="None" 
                            ErrorMessage="Kindly enter name of contact person" InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow13" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow14" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Contact No.</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtContactNoofContactPerson" runat="server" CssClass="TextBox" 
                            Height="20px" MaxLength="18" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="TxtContactNoofContactPerson" Display="None" 
                            ErrorMessage="Kindly enter contact No. of Contact Person" InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow140" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow141" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Mobile No.</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtMobileNo" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="10" onkeypress="return isNumberKey(event);" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="TxtMobileNo" Display="None" 
                            ErrorMessage="Kindly enter 10 digit MobileNo." InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow15" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow16" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        Center Code</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtCenterCode" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="12" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="TxtCenterCode" Display="None" 
                            ErrorMessage="Kindly enter Center Code" InitialValue="" 
                            ValidationGroup="CheckFields" Width="175px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow17" runat="server" visible="false">
                    <td align="right" class="fieldtext" colspan="8" style="width: 25%;" 
                        valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow18" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" style="width: 25%" valign="middle">
                        No. of Machine</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" style="width: 45%" valign="middle">
                        <asp:TextBox ID="TxtNoofMachine" runat="server" CssClass="TextBox" 
                            Height="20px" MaxLength="4" onkeypress="return isNumberKey(event);" 
                            Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="TxtNoofMachine" Display="None" 
                            ErrorMessage="Kindly enter total No. of Machines " InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr ID="trrow19" runat="server" visible="false">
                    <td align="right" colspan="8" style="width: 25%;" valign="middle">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 1px;" valign="middle">
                    </td>
                    <td colspan="11" style="width: 45%;" valign="middle">
                    </td>
                    <td style="width: 5%; height: 1px;" valign="middle">
                    </td>
                    <td style="width: 5%; height: 1px;" valign="middle">
                    </td>
                    <td style="width: 5%; height: 1px;" valign="middle">
                    </td>
                </tr>
                <tr ID="trrow91" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Any Additional Machine&nbsp;
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                        :</td>
                    <td colspan="11" style="height: 3px" valign="middle">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                            CssClass="TextBox" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="2">No</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="RadioButtonList1" Display="None" 
                            ErrorMessage="Kindly enter if any additional Machines do you have !!! " 
                            InitialValue="" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                    </td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                    </td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                    </td>
                </tr>
                <tr ID="tradditional" runat="server" visible="false">
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        &nbsp;</td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                        &nbsp;</td>
                    <td colspan="11" style="height: 3px" valign="middle">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table border="1" cellpadding="0" style="width: 50%">
                                    <tr>
                                        <td align="center" class="topHeader" colspan="2" 
                                            style="background-color: #6a7123; color: #FFFFFF;">
                                            Add Date</td>
                                        <td class="topHeader" 
                                            style="width: 25%; background-color: #6a7123; color: #FFFFFF;">
                                            Add Machine</td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="width: 5%">
                                            <asp:CheckBox ID="Chk6" runat="server" AutoPostBack="True" 
                                                oncheckedchanged="Chk6_CheckedChanged" />
                                        </td>
                                        <td align="center" style="width: 20%">
                                            <asp:Label ID="Label2" runat="server" CssClass="TextBox_ExamHead"></asp:Label>
                                        </td>
                                        <td style="width: 25%">
                                            &nbsp;
                                            <asp:TextBox ID="txtadd1" MaxLength="3" runat="server" CssClass="TextBox" Enabled="False" 
                                                Height="18px" onkeypress="return isNumberKey(event);" Width="59px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="width: 5%">
                                            <asp:CheckBox ID="Chk2" runat="server" AutoPostBack="True" 
                                                oncheckedchanged="Chk2_CheckedChanged" />
                                        </td>
                                        <td align="center" style="width: 20%">
                                            <asp:Label ID="Label3" runat="server" CssClass="TextBox_ExamHead"></asp:Label>
                                            &nbsp;</td>
                                        <td style="width: 25%">
                                            &nbsp;
                                            <asp:TextBox ID="txtadd2" MaxLength="3" runat="server" CssClass="TextBox" Enabled="False" 
                                                Height="18px" onkeypress="return isNumberKey(event);" Width="59px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td align="center" style="width: 5%">
                                            <asp:CheckBox ID="Chk3" runat="server" AutoPostBack="True" 
                                                oncheckedchanged="Chk3_CheckedChanged" />
                                        </td>
                                        <td align="center" style="width: 20%">
                                            <asp:Label ID="Label4" runat="server" CssClass="TextBox_ExamHead"></asp:Label>
                                            &nbsp;</td>
                                        <td style="width: 25%">
                                            &nbsp;
                                            <asp:TextBox ID="txtadd3" MaxLength="3" runat="server" CssClass="TextBox" Enabled="False" 
                                                Height="18px" onkeypress="return isNumberKey(event);" Width="59px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td align="center" style="width: 5%">
                                            <asp:CheckBox ID="Chk4" runat="server" AutoPostBack="True" 
                                                oncheckedchanged="Chk4_CheckedChanged" />
                                        </td>
                                        <td align="center" style="width: 20%">
                                            <asp:Label ID="Label5" runat="server" CssClass="TextBox_ExamHead"></asp:Label>
                                            &nbsp;</td>
                                        <td style="width: 25%">
                                            &nbsp;
                                            <asp:TextBox ID="txtadd4" MaxLength="3" runat="server" CssClass="TextBox" Enabled="False" 
                                                Height="18px" onkeypress="return isNumberKey(event);" Width="59px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="display:none">
                                        <td align="center" style="width: 5%">
                                            <asp:CheckBox ID="Chk5" runat="server" AutoPostBack="True" 
                                                oncheckedchanged="Chk5_CheckedChanged" />
                                        </td>
                                        <td align="center" style="width: 20%">
                                            <asp:Label ID="Label6" runat="server" CssClass="TextBox_ExamHead"></asp:Label>
                                            &nbsp;</td>
                                        <td style="width: 25%">
                                            &nbsp;
                                            <asp:TextBox ID="txtadd5" MaxLength="3" runat="server" CssClass="TextBox" Enabled="False" 
                                                Height="18px" onkeypress="return isNumberKey(event);" Width="59px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%; height: 3px;" valign="middle">
                        &nbsp;</td>
                </tr>
                <tr ID="trrow211" runat="server" visible="false">
                    <td align="right" colspan="8" style="width: 25%; height: 4px;">
                    </td>
                    <td class="fieldtext" style="width: 2%; height: 4px;">
                    </td>
                    <td align="left" colspan="11" style="width: 45%; height: 4px;">
                    </td>
                    <td style="width: 5%; height: 4px;">
                    </td>
                    <td style="width: 5%; height: 4px;">
                    </td>
                    <td style="width: 5%; height: 4px;">
                    </td>
                </tr>
                <tr ID="trrow20" runat="server" visible="false">
                    <td align="right" colspan="8" style="width: 25%">
                        &nbsp;</td>
                    <td class="fieldtext" style="width: 2%">
                        &nbsp;</td>
                    <td align="left" colspan="11" style="width: 45%">
                        <asp:Button ID="Submit0" runat="server" CssClass="TextBox" Font-Bold="True" 
                            ForeColor="Red" Height="24px" onclick="Submit_Click" Text="Update" 
                            ValidationGroup="CheckFields" Width="70px" />
                        &nbsp;<asp:Button ID="Reset0" runat="server" CssClass="TextBox" Font-Bold="True" 
                            ForeColor="Red" Height="24px" onclick="Reset_Click" Text="Reset" Width="70px" />
                        <asp:Label ID="Label1" runat="server" CssClass="CustomMsg" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 5%">
                        &nbsp;</td>
                    <td style="width: 5%">
                        &nbsp;</td>
                    <td style="width: 5%">
                        &nbsp;</td>
                </tr>
                <tr ID="trrow21" runat="server" visible="false">
                    <td align="right" colspan="8" valign="middle">
                        &nbsp;</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        &nbsp;</td>
                    <td colspan="11" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                </tr>
                <tr ID="trrow23" runat="server" visible="false">
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td valign="middle">
                        &nbsp;</td>
                    <td class="fieldtext" style="width: 2%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                    <td style="width: 5%" valign="middle">
                        &nbsp;</td>
                </tr>
                <tr ID="falseRow" runat="server" visible="true">
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                    <td style="height: 340px;">
                        &nbsp;</td>
                </tr>
            </table>
        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>


</asp:Content>

