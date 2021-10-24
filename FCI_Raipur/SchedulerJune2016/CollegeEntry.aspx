<%@ Page Title="" Language="C#" MasterPageFile="~/SchedulerJune2016/Schedule.master" AutoEventWireup="true" CodeFile="CollegeEntry.aspx.cs" Inherits="SchedulerSep2014_CollegeEntry" %>

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
    <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>--%>
            <table align="left" style="width: 100%; background-image:Url(images/02.gif); ">
                <tr>
                    <td style="width: 5%">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td style="width: 2%">
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
                    <td align="right" class="LeftTd" colspan="8" style="width: 20%" valign="middle">
                        Name of College</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtNameofColellge" runat="server" CssClass="TextBox" 
                            Height="20px" OnkeyPress="ValidateAlpha()" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TxtNameofColellge" Display="None" 
                            ErrorMessage="Kindly enter name of college" InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3" rowspan="22" style="width: 30%" valign="top">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            CssClass="comment-error1" ShowMessageBox="True" ShowSummary="False" 
                            ValidationGroup="CheckFields" />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="top">
                        Address
                    </td>
                    <td style="width: 2%" valign="top">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtAddress" runat="server" CssClass="TextBox" Height="61px" 
                            TextMode="MultiLine" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TxtAddress" Display="None" 
                            ErrorMessage="Kindly enter addrress of college" InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TxtAddress" Display="None" 
                            ErrorMessage="Special characters are not allowed in the address fields" 
                            Font-Size="11px" ForeColor="#DC0015" SetFocusOnError="true" 
                            ValidationExpression="^[0-9a-zA-Z .,-/\n/\r/\t/\s]{1,250}$" 
                            ValidationGroup="CheckFields"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        State</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:DropDownList ID="drpdState" runat="server" CssClass="TextBox" 
                            Height="22px" Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="drpdState" Display="None" 
                            ErrorMessage="Kindly select name of State" InitialValue="0" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        City</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:DropDownList ID="drpdCity" runat="server" CssClass="TextBox" Height="22px" 
                            Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="drpdCity" Display="None" 
                            ErrorMessage="Kindly select name of City" InitialValue="0" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        PinCode</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtPinCode" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="6" onkeypress="return isNumberKey(event);" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TxtPinCode" Display="None" 
                            ErrorMessage="Kindly enter six digit Pincode" InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Region</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:DropDownList ID="drpdRegion" runat="server" CssClass="TextBox" 
                            Height="22px" Width="178px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="drpdRegion" Display="None" 
                            ErrorMessage="Kindly select Region" InitialValue="0" SetFocusOnError="true" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Name of Contact Person</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtContactPersonName" runat="server" CssClass="TextBox" 
                            Height="20px" OnkeyPress="ValidateAlpha()" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TxtContactPersonName" Display="None" 
                            ErrorMessage="Kindly enter name of contact person" InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Contact No.</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtContactNoofContactPerson" runat="server" CssClass="TextBox" 
                            Height="20px" MaxLength="18" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="TxtContactNoofContactPerson" Display="None" 
                            ErrorMessage="Kindly enter contact No. of Contact Person" InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Mobile No.</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtMobileNo" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="10" onkeypress="return isNumberKey(event);" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TxtMobileNo" Display="None" 
                            ErrorMessage="Kindly enter 10 digit MobileNo." InitialValue="" 
                            SetFocusOnError="true" ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        Center Code</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtCenterCode" runat="server" CssClass="TextBox" Height="20px" 
                            MaxLength="12" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="TxtCenterCode" Display="None" 
                            ErrorMessage="Kindly enter Center Code" InitialValue="" 
                            ValidationGroup="CheckFields" Width="175px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TxtCenterCode" Display="None" 
                            ErrorMessage="Special characters are not allowed except(_)" Font-Size="11px" 
                            ForeColor="#DC0015" ValidationExpression="^[0-9a-zA-Z_]{1,30}$" 
                            ValidationGroup="CheckFields"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" valign="middle">
                        No. of Machine</td>
                    <td style="width: 2%" valign="middle">
                        :</td>
                    <td colspan="11" valign="middle">
                        <asp:TextBox ID="TxtNoofMachine" runat="server" CssClass="TextBox" 
                            Height="20px" MaxLength="4" onkeypress="return isNumberKey(event);" 
                            Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="TxtNoofMachine" Display="None" 
                            ErrorMessage="Kindly enter total No. of Machines " InitialValue="" 
                            ValidationGroup="CheckFields"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="LeftTd" colspan="8" style="height: 3px" 
                        valign="middle">
                    </td>
                    <td style="width: 2%; height: 3px;" valign="middle">
                    </td>
                    <td colspan="11" style="height: 3px" valign="middle">
                    </td>
                </tr>
                <tr>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
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
                                    <tr>
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
                                    <tr>
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
                <tr>
                    <td align="right" colspan="8" style="height: 5px">
                    </td>
                    <td style="width: 2%; height: 5px;">
                    </td>
                    <td align="left" colspan="11" style="height: 5px">
                        &nbsp;</td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                    <td style="width: 5%; height: 5px;">
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="8">
                        &nbsp;</td>
                    <td style="width: 2%">
                        &nbsp;</td>
                    <td align="left" colspan="11">
                        <asp:Button ID="Submit" runat="server" CssClass="TextBox" Font-Bold="True" 
                            ForeColor="Red" Height="25px" onclick="Submit_Click" Text="Submit" 
                            ValidationGroup="CheckFields" Width="70px" />
                        &nbsp;<asp:Button ID="Reset" runat="server" CssClass="TextBox" Font-Bold="True" 
                            ForeColor="Red" Height="25px" onclick="Reset_Click" Text="Reset" Width="70px" />
                        <asp:Label ID="Label1" runat="server" CssClass="CustomMsg" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 5%">
                        &nbsp;</td>
                    <td style="width: 5%">
                        &nbsp;</td>
                    <td style="width: 5%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" colspan="8" valign="middle">
                        &nbsp;</td>
                    <td style="width: 2%" valign="middle">
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
                <tr>
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
                    <td style="width: 2%" valign="middle">
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
            </table>
       <%-- </ContentTemplate>
    </asp:UpdatePanel>--%>
    <br />

</asp:Content>

