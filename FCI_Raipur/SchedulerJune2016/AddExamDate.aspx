<%@ Page Title="" Language="C#" MasterPageFile="~/SchedulerJune2016/Schedule.master" AutoEventWireup="true" CodeFile="AddExamDate.aspx.cs" Inherits="SchedulerSep2014_AddExamDate" %>
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

function CheckSelected(){
    var ck1 = document.getElementById('<%=chkall0.ClientID %>');
    var ck2 = document.getElementById('<%=chkall1.ClientID %>');
    var ck3 = document.getElementById('<%=chkall2.ClientID %>');
    var ck4 = document.getElementById('<%=chkall3.ClientID %>');

    if (ck1.checked == false && ck2.checked == false && ck3.checked == false && ck4.checked == false)
{
    alert("Select any date for Exam Schedule !");
    return false;
}

}

</script>



    <table align="left" style="width: 100%; background-image:Url(images/02.gif);">
    <tr runat="server" visible="false">
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
        <td style="width: 28px">
            &nbsp;</td>
        <td style="width: 2%" class="fieldtext">
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
        <td style="width: 5%">
            &nbsp;</td>
    </tr>
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
        <td style="width: 28px">
            &nbsp;</td>
        <td style="width: 2%" class="fieldtext">
            &nbsp;</td>
        <td colspan="7">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
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
    </tr>
    <tr>
        <td class="LeftTd" colspan="8" align="right" style="width: 20%">
            Enter College Code</td>
        <td style="width: 2%" class="fieldtext">
            :</td>
        <td colspan="10">
            <asp:DropDownList ID="drpdCenterCode" runat="server" Width="378px" 
                Height="22px" AutoPostBack="True" 
                onselectedindexchanged="drpdCenterCode_SelectedIndexChanged" >
            </asp:DropDownList>
            </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 5%">
            &nbsp;</td>
    </tr>
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
        <td style="width: 28px">
            &nbsp;</td>
        <td style="width: 2%" class="fieldtext">
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
        <td style="width: 5%">
            &nbsp;</td>
    </tr>
    <tr id="trrow111" runat="server" visible="false">
        <td colspan="8" valign="middle" class="fieldtext">
            &nbsp;</td>
        <td style="width: 2%" valign="middle" class="fieldtext">
            &nbsp;</td>
        <td colspan="15" valign="middle">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BorderColor="Red" BorderWidth="1px" Font-Size="X-Small" Height="128px" 
                        Width="346px" 
                        onrowdatabound="GridView1_RowDataBound">
                        <PagerSettings Mode="NumericFirstLast" />
                        <Columns>
                         <asp:TemplateField HeaderText="Sr.No">
                                <ItemTemplate>
                                                <%#Container.DisplayIndex+1 %>
                                                <itemstyle width="30px" />
                                </ItemTemplate>
                                <ItemStyle BorderColor="#86ffff" BorderWidth="1px" Font-Bold="False" 
                                    Font-Size="XX-Small" ForeColor="#400000" HorizontalAlign="Center" 
                                    Width="30px" />
                                <HeaderStyle BorderWidth="1px" />
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <FooterTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server">All</asp:LinkButton>
                                </FooterTemplate>
                                <HeaderTemplate>
                                    All<input id="Checkbox3" onclick="SelectAllCheckboxes(this);" type="checkbox" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" onclick="CheckChanged(this);" runat="server" 
                                        AutoPostBack="True" />
                                </ItemTemplate>
                                <HeaderStyle BorderWidth="1px" />
                                <ItemStyle BorderWidth="1px" Font-Size="X-Small" HorizontalAlign="Center" />
                            </asp:TemplateField>
                           
                             <asp:BoundField  HeaderText="Center Code">
                            <ItemStyle BorderColor="#86ffff" BorderWidth="1px" Font-Size="XX-Small" 
                                HorizontalAlign="center" />
                            <HeaderStyle BorderWidth="1px" Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ATEXD_Dated" HeaderText="Exam Date">
                            <ItemStyle BorderColor="#86ffff" BorderWidth="1px" Font-Size="XX-Small" 
                                HorizontalAlign="center" />
                            <HeaderStyle BorderWidth="1px" Wrap="False" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <FooterTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server">All</asp:LinkButton>
                                </FooterTemplate>
                                <HeaderTemplate>
                                    &nbsp;Slot1
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox7" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle BorderWidth="1px" />
                                <ItemStyle BorderWidth="1px" Font-Size="X-Small" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <FooterTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server">All</asp:LinkButton>
                                </FooterTemplate>
                                <HeaderTemplate>
<%--<input id="Checkbox3" onclick="SelectAllCheckboxes(this);" type="checkbox" />--%>&nbsp;Slot2
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox8" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle BorderWidth="1px" />
                                <ItemStyle BorderWidth="1px" Font-Size="X-Small" HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle BackColor="White" BorderColor="#efca4b" BorderStyle="None" 
                            BorderWidth="1px" Font-Size="XX-Small" Height="20PX" />
                        <SelectedRowStyle BackColor="White" BorderColor="#efca4b" BorderWidth="1px" 
                            Font-Bold="False" Font-Size="X-Small" ForeColor="Black" Height="20PX" />
                        <HeaderStyle BackColor="#b74b31" BorderStyle="Ridge" BorderWidth="1px" 
                            Font-Bold="True" Font-Size="X-Small" ForeColor="#efca4b" Height="25PX" 
                            Wrap="True" />
                        <AlternatingRowStyle BackColor="White" BorderColor="#efca4b" BorderWidth="1px" 
                            Height="20PX" />
                        <PagerStyle Font-Size="XX-Small" />
                    </asp:GridView>
        </td>
    </tr> 
    <tr id="trrow2" runat="server" visible="true">
        <td colspan="8" valign="middle" align="right" class="fieldtext" 
            style="height: 7px">
            </td>
        <td style="width: 2%; height: 7px;" valign="middle" class="fieldtext">
            </td>
        <td colspan="15" valign="middle" style="height: 7px">
            </td>
    </tr>
    <tr id="trrow1" runat="server" visible="false">
        <td colspan="8" valign="middle" align="right" style="height: 7px">
            </td>
        <td style="width: 2%; height: 7px;" valign="middle" class="fieldtext">
            </td>
        <td colspan="15" valign="middle" style="height: 7px" align="left">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table align="left" border="1" cellpadding="0" cellspacing="0" width="80%">
                        <tr>
                            <td align="center" class="TextBox_ExamHead" style="width: 6%; height: 42px;">
                                Sr. No</td>
                            <td align="center" class="TextBox_ExamHead" style="width: 5%; height: 42px;" 
                                width="7%">
                                All<br />
                                <asp:CheckBox ID="chkall" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox_ExamHead" style="width: 25%; height: 42px;">
                                Center Code</td>
                            <td align="center" class="TextBox_ExamHead" style="width: 20%; height: 42px;">
                                Exam Date</td>
                            <td align="center" class="TextBox_ExamHead" style="width: 15%; height: 42px;">
                                Slot1</td>
                            <td align="center" class="TextBox_ExamHead" style="width: 15%; height: 42px;">
                                Slot2</td>
                            <td align="center" class="TextBox_ExamHead" style="width: 15%; height: 42px; display:none ;">
                                Slot3</td>
                        </tr>
                        <tr>
                            <td align="center" class="TextBox" style="width: 6%; height: 25px;">
                                1</td>
                            <td align="center" class="TextBox" style="width: 5%; height: 25px;" width="7%">
                                <asp:CheckBox ID="chkall0" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall0_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 25%; height: 25px;">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 20%; height: 25px;">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#000099" 
                                    Text="11 Nov 2016"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk9" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk9_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk14" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk14_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%;  display:none ; height: 25px;">
                                <asp:CheckBox ID="chk18" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk18_CheckedChanged" />
                            </td>
                        </tr>
                        <tr class="odd">
                            <td align="center" class="TextBox" style="width: 6%; height: 25px;">
                                2</td>
                            <td align="center" class="TextBox" style="width: 5%; height: 25px;" width="7%">
                                <asp:CheckBox ID="chkall1" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall1_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 25%; height: 25px;">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 20%; height: 25px;">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#000099" 
                                    Text="12 Nov 2016"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk10" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk10_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <%--<input id="Checkbox3" onclick="SelectAllCheckboxes(this);" type="checkbox" />--%>
                                <asp:CheckBox ID="chk15" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk15_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; display:none ; height: 25px;">
                                <asp:CheckBox ID="chk19" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk19_CheckedChanged" />
                            </td>
                        </tr>
                        <tr >
                            <td align="center" class="TextBox" style="width: 6%; height: 25px;">
                                3</td>
                            <td align="center" class="TextBox" style="width: 5%; height: 25px;" width="7%">
                                <asp:CheckBox ID="chkall2" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall2_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" 
                                style="width: 25%; height: 25px; font-weight: 700;">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 20%; height: 25px;">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#000099" 
                                    Text="13 Nov 2016"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk11" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk11_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <%--<a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a>--%>
                                <asp:CheckBox ID="chk16" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk16_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; display:none ;  height: 25px;">
                                <asp:CheckBox ID="chk20" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk20_CheckedChanged" />
                            </td>
                        </tr>
                        <tr class="odd"  >
                            <td align="center" class="TextBox" style="width: 6%; height: 25px;">
                                4</td>
                            <td align="center" class="TextBox" style="width: 5%; height: 25px;" width="7%">
                                <asp:CheckBox ID="chkall3" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall3_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 25%; height: 25px;">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 20%; height: 25px;">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#000099" 
                                    Text="14 Nov 2016"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk12" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk12_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <%--<a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a>--%>
                                <asp:CheckBox ID="chk17" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk17_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px; display:none ;">
                                &nbsp;</td>
                        </tr>
                      <%--  <tr style="display:none">
                            <td align="center" class="TextBox" style="width: 6%; height: 25px;">
                                5</td>
                            <td align="center" class="TextBox" style="width: 5%; height: 25px;" width="7%">
                                <asp:CheckBox ID="chkall4" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall4_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 25%; height: 25px;">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 20%; height: 25px;">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#000099" 
                                    Text="29 Sep 2014"></asp:Label>
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                                <asp:CheckBox ID="chk13" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk13_CheckedChanged" />
                            </td>
                            <td align="center" class="TextBox" style="width: 15%; height: 25px;">
                              
                                <asp:CheckBox ID="chk18" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chk18_CheckedChanged" />
                            </td>
                        </tr>--%>
                        <tr runat="server" visible="false">
                            <td align="center" style="width: 6%">
                                &nbsp;</td>
                            <td align="center" style="width: 5%" width="5%" class="TextBox">
                                &nbsp;</td>
                            <td align="center" style="width: 25%" class="TextBox">
                                &nbsp;</td>
                            <td align="center" style="width: 20%" class="TextBox">
                                &nbsp;</td>
                            <td align="center" style="width: 15%" class="TextBox">
                                &nbsp;</td>
                            <td align="center" style="width: 15%" class="TextBox">
                                &nbsp;</td>
                            <td align="center" class="TextBox" style="width: 15% ; display:none ;">
                                &nbsp;</td>
                        </tr>
                        <tr runat="server" visible="false">
                            <td align="center" style="width: 6%">
                                &nbsp;</td>
                            <td align="center" style="width: 5%" width="50%">
                                &nbsp;</td>
                            <td align="center" style="width: 25%">
                                &nbsp;</td>
                            <td align="center" style="width: 20%">
                                &nbsp;</td>
                            <td align="center" style="width: 15%">
                                &nbsp;</td>
                            <td align="center" style="width: 15%">
                                &nbsp;</td>
                            <td align="center" style="width: 15%; display:none ">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="6">
                               <asp:Button ID="BtnSubmit" runat="server"  OnClientClick="return  CheckSelected();"
                                    onclick="BtnSubmit_Click" Text="Submit" Visible="False" Width="70px" 
                                    CssClass="TextBox" Height="25px" Font-Bold="True" ForeColor="Red" />
                                <asp:Label ID="Label11" runat="server" CssClass="CustomMsg" Visible="False"></asp:Label>
                            </td>
                            <td align="left" style =" display:none ;">
                                &nbsp;</td>
                        </tr>
                        <tr  id="Noneedtoshow" runat="server" visible="false" class="odd">
                            <td align="left" colspan="6">
                                <asp:Button ID="Reset" runat="server" Height="24px" onclick="Reset_Click" 
                                    Text="Reset" Visible="False" Width="70px" CssClass="TextBox" />
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reset" 
                                    Visible="False" CssClass="TextBox" />
                            </td>
                            <td align="left" style =" display:none ;">
                                &nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            </td>
    </tr>
    <tr id="trrow20" runat="server" visible="true">
        <td colspan="8" align="right">
            &nbsp;</td>
        <td style="width: 2%" class="fieldtext">
            &nbsp;</td>
        <td align="left" colspan="15">
        &nbsp;</td>
    </tr>
    <tr id="trrow21" runat="server" visible="true">
        <td colspan="8" valign="middle" align="right">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td style="width: 2%" valign="middle" class="fieldtext">
            &nbsp;</td>
        <td colspan="15" valign="middle">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr id="trrow23" runat="server" visible="true">
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
        <td valign="middle" style="width: 28px">
            &nbsp;</td>
        <td style="width: 2%" valign="middle" class="fieldtext">
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
        <td style="width: 5%" valign="middle">
            &nbsp;</td>
    </tr>
</table>

        </asp:Content>

