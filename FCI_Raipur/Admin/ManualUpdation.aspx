<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManualUpdation.aspx.cs" Inherits="Admin_ManualUpdation" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderID="head">
</asp:Content>


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
    <table class="Hrftable_full">

        <tr>
            <th colspan="4">Manual Updation !!
            </th>
        </tr>


        <tr>
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left" colspan="4">
                <div id="tabs">
                    <ul>
                        <li><a href="#tabs-1">Registration</a></li>
                        <li><a href="#tabs-2">Education</a></li>
                        <li><a href="#tabs-3">Certificate Uploading</a></li>
                        <li><a href="#tabs-4">Payment Updation</a></li>


                    </ul>

                    <div id="tabs-1">
                        <div style="background-color: #CADCFF; font-weight: bold; width: 100%; text-align: left; padding-left: 3px;">
                            <table class="Hrftable_full">


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">Search By&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="updserachby" runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="drpdsearchBy" runat="server" AutoPostBack="true" CssClass="select"></asp:DropDownList>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:Label ID="lblSearchBy" runat="server" Text=""></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 30%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>

                                                <input name="txtpostaladdressline1" runat="server" type="text" maxlength="200" id="txtpostaladdressline1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Address Line 1&#39;,&#39;T&#39;,&#39;Address&#39;);}" onkeypress="return CreateStringTextBoxForOthers(this,event)" style="width: 200px;" />
                                                <asp:Button ID="btnsearch" Text="Find" CssClass="btn" runat="server" Width="65px" OnClick="btnsearch_Click" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>

                            </table>

                        </div>

                    </div>

                    <div id="tabs-2">
                        <div style="background-color: #CADCFF; font-weight: bold; width: 100%; text-align: left; padding-left: 3px;">
                            <table class="Hrftable_full">


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">Enter Reg.No (or)
                                        <br />
                                        User Id&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                <input name="txtRegnoorUserid" runat="server" type="text" maxlength="20" id="txtRegnoorUserid" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Address Line 1&#39;,&#39;T&#39;,&#39;Address&#39;);}" onkeypress="return CreateStringTextBoxForOthers(this,event)" style="width: 200px;" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="Button2" Text="Find" CssClass="btn" runat="server" Width="65px" OnClick="Button2_Click" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 30%;" align="left"></td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>

                            </table>

                        </div>

                    </div>

                    <div id="tabs-3">
                        <div style="background-color: #CADCFF; font-weight: bold; width: 100%; text-align: left; padding-left: 3px;">
                           <%-- <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                            <ContentTemplate>--%>
                            <table class="Hrftable_full">

                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">Enter Reg.No (or)
                                        <br />
                                        User Id&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                                            <ContentTemplate>
                                                <input name="txtRegnoorUseridfordoc" runat="server" type="text" maxlength="20" id="txtRegnoorUseridfordoc" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Address Line 1&#39;,&#39;T&#39;,&#39;Address&#39;);}" onkeypress="return CreateStringTextBoxForOthers(this,event)" style="width: 200px;" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btncheckuser" runat="server" CssClass="btn" Text="Is Valid User" Width="125px" OnClick="btncheckuser_Click" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 30%;" align="left"></td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Certificate Type</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="drpddoctype" runat="server" CssClass="select" Enabled="False">
                                                </asp:DropDownList>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Upload Certificate</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                            <ContentTemplate>
                                                <asp:FileUpload ID="docuploader" runat="server" Enabled="False" />
                                            </ContentTemplate>
                                           <Triggers>
                                                    <asp:PostBackTrigger ControlID="btnuploaddoc" />
                                                </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnuploaddoc" Text="Upload.." CssClass="btn" runat="server" Width="65px" Enabled="false" OnClick="btnuploaddoc_Click" />
                                            </ContentTemplate>
                                             
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>



                            </table>

<%--                                              </ContentTemplate>
                                </asp:UpdatePanel>--%>
                        </div>

                    </div>

                    <div id="tabs-4">
                        <div style="background-color: #CADCFF; font-weight: bold; width: 100%; text-align: left; padding-left: 3px;">
                         
                            <table class="Hrftable_full">

                                <tr>
                                    <td style="font-size: 11px; font-family: Verdana; font-weight: bold; " align="left" colspan="4">
                <asp:Label ID="lblpaymentstaus" runat="server" ForeColor="Red"></asp:Label>
                                      </td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">Enter Order No.
                                      </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                            <ContentTemplate>
                                                <input name="txtorderno" runat="server" type="text" maxlength="20" id="txtorderno" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Address Line 1&#39;,&#39;T&#39;,&#39;Address&#39;);}" onkeypress="return CreateStringTextBoxForOthers(this,event)" style="width: 200px;" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btncheckorderno" runat="server" CssClass="btn" Text="Submit" Width="125px" OnClick="btncheckorderno_Click"  />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 30%;" align="left"></td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Candidate Name</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                         <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                                            <ContentTemplate>
                                        <asp:Label ID="lblcandidatename" runat="server" Text=""></asp:Label>
                                                </ContentTemplate>
                                              <Triggers>
                                                    <asp:PostBackTrigger ControlID="btnmakepaymentsuccess" />
                                                </Triggers>
                                             </asp:UpdatePanel>

                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Current Payment Status</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                         <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                                            <ContentTemplate>
                                        <asp:Label ID="lblpaymentstatus" runat="server" Text=""></asp:Label>
                                                
                                                 </ContentTemplate>
                                              <Triggers>
                                                    <asp:PostBackTrigger ControlID="btnmakepaymentsuccess" />
                                                </Triggers>
                                             </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">
                                        <asp:UpdatePanel ID="UpdatePanel15" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnmakepaymentsuccess" Text="Update Order to Success.." CssClass="btn" runat="server" Width="150px" Enabled="false" OnClick="btnmakepaymentsuccess_Click"  />
                                            </ContentTemplate>
                                             
                                        </asp:UpdatePanel>
                                    </td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>


                                <tr>
                                    <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
                                    <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

                                </tr>



                            </table>


                        </div>

                    </div>


                </div>
            </td>

        </tr>


        <tr runat="server" visible="true">
            <td style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left" colspan="4">
                <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>

        </tr>
        <tr>
            <td colspan="4">
                <asp:UpdatePanel ID="updpanel1" runat="server">
                    <ContentTemplate>
                        <table class="Hrftable_full" id="tablepersonaldetails" runat="server" visible="false">

                            <tr id="trfname" runat="server" visible="false">
                                <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Candidate Name</td>
                                <td style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 160px;" align="left" colspan="3">
                                    <input name="txtapplicantfname" runat="server" type="text" maxlength="30" id="txtapplicantfname" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;First Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width: 200px;" /></td>

                            </tr>

                            

                            <tr id="trmobile" runat="server" visible="false">
                                <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Mobile No.</td>
                                <td style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 160px;" align="left" colspan="3">
                                    <input name="txtmobileno" runat="server" type="text" maxlength="10" id="txtmobileno" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 200px;" /></td>

                            </tr>
                            <tr id="trgender" runat="server" visible="false">
                                <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">Gender</td>
                                <td style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 160px;" align="left" colspan="3">
                                    <table id="rdosex" border="0" style="font-size: Small;">
                                        <tr>
                                            <td>
                                                <input id="rdosex_0" runat="server" type="radio" name="rdosex" value="M" /><label for="rdosex_0">Male(पुरूष)</label></td>
                                            <td>
                                                <input id="rdosex_1" runat="server" type="radio" name="rdosex" value="F" /><label for="rdosex_1">Female(स्त्री)</label></td>
                                        </tr>
                                    </table>

                                </td>

                            </tr>

                            <tr id="trbtn" runat="server" visible="false">
                                <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left"></td>
                                <td style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 160px;" align="left" colspan="3">
                                    <asp:CheckBox ID="chkagree" runat="server" AutoPostBack="false" OnCheckedChanged="chkagree_CheckedChanged" />
                                    <asp:Button ID="btnupdate" Text="Update" CssClass="btn" runat="server" Width="85px" OnClick="btnupdate_Click" />
                                </td>

                            </tr>

                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>


        </tr>

        <tr>
            <td colspan="4">
                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                        <table class="Hrftable_full" id="tableeducation" runat="server" visible="false">
                            <tr>
                                <td colspan="8">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>

                            <tr runat="server" visible="TRUE">
                                <td style="width: 3%">
                                    <asp:Label ID="lblsrno" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 21%">
                                    <asp:Label ID="lblqualification" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 18%">
                                    <asp:Label ID="lblboardnuniversity" runat="server" Text=""></asp:Label></td>
                                <td style="width: 18%">
                                    <asp:Label ID="lblsubjects" runat="server" Text=""></asp:Label></td>
                                <td style="width: 10%">
                                    <asp:Label ID="lblyearofpassing" runat="server" Text=""></asp:Label></td>
                                <td style="width: 10%">
                                    <asp:Label ID="lblTmarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 10%">
                                    <asp:Label ID="lblPmarks" runat="server" Text=""></asp:Label></td>
                                <td style="width: 10%">
                                    <asp:Label ID="lblcngrade" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr runat="server" visible="TRUE">
                                <td style="width: 3%">1 </td>
                                <td style="width: 21%">
                                    <asp:Label ID="lblqualification1" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 18%">
                                    <input name="txtboardnuniversity1" type="text" runat="server" maxlength="100" id="txtboardnuniversity1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Board / Universtiy Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width: 140px;" /></td>
                                <td style="width: 18%">
                                    <input name="txtsubject1" type="text" runat="server" maxlength="50" id="txtsubject1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Subject / Stream&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width: 130px;" /></td>
                                <td style="width: 10%">
                                    <input name="txtyearofpassing1" type="text" runat="server" maxlength="4" id="txtyearofpassing1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Year of Passing&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 80px;" /></td>
                                <td style="width: 10%">
                                    <input name="txttotalmark1" type="text" runat="server" maxlength="4" id="txttotalmark1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Total Marks&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 80px;" /></td>
                                <td style="width: 10%">
                                    <input name="txtpmark1" type="text" runat="server" maxlength="4" id="txtpmark1" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Percentage of Marks&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 60px;" /></td>
                                <td style="width: 10%">
                                    <asp:DropDownList ID="drpdClassngrade1" runat="server" CssClass="select">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr runat="server" visible="TRUE">
                                <td style="width: 3%">2</td>
                                <td style="width: 21%">
                                    <asp:Label ID="lblqualification2" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 18%">
                                    <input name="txtboardnuniversity2" type="text" runat="server" maxlength="100" id="txtboardnuniversity2" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Board / Universtiy Name&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width: 140px;" /></td>
                                <td style="width: 18%">
                                    <input name="txtsubject2" type="text" runat="server" maxlength="50" id="txtsubject2" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Subject / Stream&#39;,&#39;T&#39;,&#39;Name&#39;);}" onkeypress="return CreateCAPSStringTextBox(this,event)" style="width: 130px;" /></td>
                                <td style="width: 10%">
                                    <input name="txtyearofpassing2" type="text" runat="server" maxlength="4" id="txtyearofpassing2" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Year of Passing&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 80px;" /></td>
                                <td style="width: 10%">
                                    <input name="txttotalmark2" type="text" runat="server" maxlength="4" id="txttotalmark2" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Total Marks&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 80px;" /></td>
                                <td style="width: 10%">
                                    <input name="txtpmark2" type="text" runat="server" maxlength="4" id="txtpmark2" onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();validationnew(this,&#39;Percentage of Marks&#39;,&#39;T&#39;,&#39;Numeric&#39;);}" onkeypress="return CreateNumericTextBox(this,event,false)" style="width: 60px;" /></td>
                                <td style="width: 10%">
                                    <asp:DropDownList ID="drpdClassngrade2" runat="server" CssClass="select">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>


        </tr>



        <tr>
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

        </tr>

    </table>
    <%--</div>--%>

    <script type="text/javascript" language="javascript" src="../Portal/headers/creditsfootermp.js"></script>
</asp:Content>

