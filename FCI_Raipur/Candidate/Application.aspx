<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Candidate_Application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        function ValidateControls() {
            var txtFathersname = document.getElementById("ContentPlaceHolder1_txtFathersname");
            var txtmothername = document.getElementById("ContentPlaceHolder1_txtmothername");
            var ddlgender = document.getElementById("ContentPlaceHolder1_ddlgender");
            var ddlDivorcee = document.getElementById("ContentPlaceHolder1_ddlDivorcee");
            var ddlFCIEmp = document.getElementById("ContentPlaceHolder1_ddlFCIEmp");
            var ddlcategory = document.getElementById("ContentPlaceHolder1_ddlcategory");
            var ddlexserviceman = document.getElementById("ContentPlaceHolder1_ddlexserviceman");
            var txtServiceYear = document.getElementById("ContentPlaceHolder1_txtServiceYear");
            var ddlServiceMonths = document.getElementById("ContentPlaceHolder1_ddlServiceMonths");
            var ddlisph = document.getElementById("ContentPlaceHolder1_ddlisph");
            var ddltypeofDisability = document.getElementById("ContentPlaceHolder1_ddltypeofDisability");
            var txtCertificateNo = document.getElementById("ContentPlaceHolder1_txtCertificateNo");

            var txtNationality = document.getElementById("ContentPlaceHolder1_txtNationality");
            var ddlMinority = document.getElementById("ContentPlaceHolder1_ddlMinority");
            var CHKAGR = document.getElementById("ContentPlaceHolder1_CHKAGR");

            if (txtFathersname.value == '') {
                txtFathersname.focus();
                alert('Please Enter Father\'s Name');
                return false;
            }

            if (txtmothername.value == '') {
                txtmothername.focus();
                alert('Please Enter Mother\'s Name');
                return false;
            }

            if (ddlgender.value == '' || ddlgender.value == '0') {
                ddlgender.focus();
                alert('Please Select Gender');
                return false;
            }

            if (ddlDivorcee != null && (ddlDivorcee.value == '' || ddlDivorcee.value == '0')) {
                ddlDivorcee.focus();
                alert('Please Select Whether candidate Separated/Widow/Divorcee');
                return false;
            }

            if (txtNationality.value == '') {
                txtNationality.focus();
                alert('Please Enter Nationality.');
                return false;
            }

            if (ddlMinority.value == '' || ddlMinority.value == '0') {
                ddlMinority.focus();
                alert('Please Select Minority');
                return false;
            }

          
            if (ddlFCIEmp != null && (ddlFCIEmp.value == '' || ddlFCIEmp.value == '0')) {
                ddlFCIEmp.focus();
                alert('Please Select Whether candidate employed in Food Corporation of India');
                return false;
            }

            if (ddlcategory != null && (ddlcategory.value == '' || ddlcategory.value == '0')) {
                ddlcategory.focus();
                alert('Please Select Category');
                return false;
            }

            if (ddlexserviceman != null && (ddlexserviceman.value == '' || ddlexserviceman.value == '0')) {
                ddlexserviceman.focus();
                alert('Please Select If Ex-Serviceman or not');
                return false;
            }

            if (txtServiceYear != null && txtServiceYear.value == '') {
                txtServiceYear.focus();
                alert('Please Select Ex-Serviceman service Year');
                return false;
            }

            if (ddlServiceMonths != null && (ddlServiceMonths.value == '' || ddlServiceMonths.value == '0')) {
                ddlServiceMonths.focus();
                alert('Please Select Ex-Serviceman service Months');
                return false;
            }

            if (ddlisph != null && (ddlisph.value == '' || ddlisph.value == '0')) {
                ddlisph.focus();
                alert('Please Select If Physical Disability or not');
                return false;
            }

            if (ddltypeofDisability != null && (ddltypeofDisability.value == '' || ddltypeofDisability.value == '0')) {
                ddltypeofDisability.focus();
                alert('Please Select Type of Disability');
                return false;
            }

            if (txtCertificateNo.value == '') {
                txtCertificateNo.focus();
                alert('Please Select Disability Certificate No');
                return false;
            }

            if (!CHKAGR.checked) { CHKAGR.focus(); alert('Please Select I Agree'); return false; }
        }
    </script>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>

            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <center>
                        <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">APPLICATION FORM</span></div>
                    </center>

                </div>
            </div>

            <br />
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>POST APPLIED FOR/आवेदित पद</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList runat="server" ID="ddlCandidateType" class="form-control">
                    </asp:DropDownList>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>CANDIDATE'S FULL NAME/अभ्यर्थी का पूरा नाम:</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtcanname" runat="server" CssClass="form-control " placeholder="FULL NAME" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;" MaxLength="50"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>DATE OF BIRTH/ जन्मतिथि</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <div class="form-group">
                        <asp:DropDownList ID="drpddate" runat="server" CssClass="form-control" TabIndex="1" Enabled="false">
                            <asp:ListItem Value="0">DAY</asp:ListItem>
                            <asp:ListItem Value="01">01</asp:ListItem>
                            <asp:ListItem Value="02">02</asp:ListItem>
                            <asp:ListItem Value="03">03</asp:ListItem>
                            <asp:ListItem Value="04">04</asp:ListItem>
                            <asp:ListItem Value="05">05</asp:ListItem>
                            <asp:ListItem Value="06">06</asp:ListItem>
                            <asp:ListItem Value="07">07</asp:ListItem>
                            <asp:ListItem Value="08">08</asp:ListItem>
                            <asp:ListItem Value="09">09</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                            <asp:ListItem Value="12">12</asp:ListItem>
                            <asp:ListItem Value="13">13</asp:ListItem>
                            <asp:ListItem Value="14">14</asp:ListItem>
                            <asp:ListItem Value="15">15</asp:ListItem>
                            <asp:ListItem Value="16">16</asp:ListItem>
                            <asp:ListItem Value="17">17</asp:ListItem>
                            <asp:ListItem Value="18">18</asp:ListItem>
                            <asp:ListItem Value="19">19</asp:ListItem>
                            <asp:ListItem Value="20">20</asp:ListItem>
                            <asp:ListItem Value="21">21</asp:ListItem>
                            <asp:ListItem Value="22">22</asp:ListItem>
                            <asp:ListItem Value="23">23</asp:ListItem>
                            <asp:ListItem Value="24">24</asp:ListItem>
                            <asp:ListItem Value="25">25</asp:ListItem>
                            <asp:ListItem Value="26">26</asp:ListItem>
                            <asp:ListItem Value="27">27</asp:ListItem>
                            <asp:ListItem Value="28">28</asp:ListItem>
                            <asp:ListItem Value="29">29</asp:ListItem>
                            <asp:ListItem Value="30">30</asp:ListItem>
                            <asp:ListItem Value="31">31</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-2">
                    <div class="form-group">
                        <asp:DropDownList ID="drpdmonth" runat="server" CssClass="form-control" TabIndex="1" Enabled="false">
                            <asp:ListItem Value="0">MONTH</asp:ListItem>
                            <asp:ListItem Value="01">JAN</asp:ListItem>
                            <asp:ListItem Value="02">FEB</asp:ListItem>
                            <asp:ListItem Value="03">MAR</asp:ListItem>
                            <asp:ListItem Value="04">APR</asp:ListItem>
                            <asp:ListItem Value="05">MAY</asp:ListItem>
                            <asp:ListItem Value="06">JUN</asp:ListItem>
                            <asp:ListItem Value="07">JUL</asp:ListItem>
                            <asp:ListItem Value="08">AUG</asp:ListItem>
                            <asp:ListItem Value="09">SEP</asp:ListItem>
                            <asp:ListItem Value="10">OCT</asp:ListItem>
                            <asp:ListItem Value="11">NOV</asp:ListItem>
                            <asp:ListItem Value="12">DEC</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <div class="form-group">
                        <asp:DropDownList ID="drpdyear" runat="server" CssClass="form-control" TabIndex="1" OnSelectedIndexChanged="drpdyear_SelectedIndexChanged" AutoPostBack="True" Enabled="false">
                        </asp:DropDownList>
                    </div>
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
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:Label ID="lblYears" runat="server" Text="0"></asp:Label>
                    -Years&nbsp;&nbsp;
                                        <asp:Label ID="lblMonths" runat="server" Text="0"></asp:Label>
                    -Months&nbsp;&nbsp;
                                        <asp:Label ID="lblDays" runat="server" Text="0"></asp:Label>
                    -Days&nbsp;
                                    <asp:Label ID="lbl" runat="server" Style="font-weight: 700" Text="(Age: Auto Calculated value  AS ON 01 August 2017)" ForeColor="#006600" Visible="true"></asp:Label>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>FATHER'S FULL NAME / पिता का पूरा  नाम</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="form-group">
                        <asp:TextBox ID="txtmr" runat="server" class="form-control" Text="Mr" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5">
                    <div class="form-group">
                        <asp:TextBox ID="txtFathersname" onkeypress="return CreateStringTextBox(this,event)" MaxLength="50" runat="server" placeholder="FATHER'S FULL NAME / पिता का पूरा  नाम" class="form-control" Style="text-transform: uppercase" />
                    </div>
                </div>


                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>MOTHER'S FULL NAME/ माता का पूरा नाम</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" Text="Mrs" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5">
                    <div class="form-group">
                        <asp:TextBox ID="txtmothername" runat="server" placeholder="MOTHER'S FULL NAME/ माता का पूरा नाम" CssClass="form-control" Style="text-transform: uppercase;" onkeypress="return CreateStringTextBox(this,event)" MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>GENDER/ लिंग</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlgender" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlgender_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>NATIONALITY/ राष्ट्रीयता</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="txtNationality" runat="server" placeholder="Nationality/ राष्ट्रीयता" CssClass="form-control" Style="text-transform: uppercase;" onkeypress="return CreateStringTextBox(this,event)" MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>MINORITY / अल्पसंख्यक</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlMinority" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row" id="divDivorcee" runat="server" visible="false">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>WHETHER CANDIDATE SEPARATED/WIDOW/DIVORCEE / क्या अभ्यर्थी विधवा/परित्यक्ता/तलाकशुदा है</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlDivorcee" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--SELECT--" Value="0"></asp:ListItem>
                        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row" style="display: none;">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>RELIGION</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtreligion" runat="server" CssClass="form-control" placeholder="RELIGION"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red"></span>AADHAR NUMBER/आधार क्रमांक </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtadharno" runat="server" placeholder="AADHAR NUMBER/आधार क्रमांक" MaxLength="12" CssClass="form-control" Style="text-transform: uppercase;" onkeypress="return CreateNumericTextBox(this,event,false)"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>WHETHER CANDIDATE EMPLOYED IN FOOD CORPORATION OF INDIA/क्या अभ्यर्थी भारतीय खाद्य निगम में कार्यरत है  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlFCIEmp" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--SELECT--" Value="0"></asp:ListItem>
                        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>CATEGORY/ वर्ग</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlcategory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>EX-SERVICEMAN/ भूतपूर्व सैनिक</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlexserviceman" runat="server" CssClass="form-control"
                        OnSelectedIndexChanged="ddlexserviceman_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="--SELECT--" Value="0"></asp:ListItem>
                        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <div class="row" id="divServiceMan" runat="server" visible="false">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>SERVICE PERIOD</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3">
                    <br />
                    <asp:TextBox ID="txtServiceYear" runat="server" placeholder="YEAR(S)" MaxLength="2" CssClass="form-control" Style="text-transform: uppercase;" onkeypress="return CreateNumericTextBox(this,event,false)"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3">
                    <br />
                    <asp:DropDownList ID="ddlServiceMonths" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--SELECT MONTHS--" Value="0"></asp:ListItem>
                        <asp:ListItem Text="0" Value="1"></asp:ListItem>
                        <asp:ListItem Text="1" Value="2"></asp:ListItem>
                        <asp:ListItem Text="2" Value="3"></asp:ListItem>
                        <asp:ListItem Text="3" Value="4"></asp:ListItem>
                        <asp:ListItem Text="4" Value="5"></asp:ListItem>
                        <asp:ListItem Text="5" Value="6"></asp:ListItem>
                        <asp:ListItem Text="6" Value="7"></asp:ListItem>
                        <asp:ListItem Text="7" Value="8"></asp:ListItem>
                        <asp:ListItem Text="8" Value="9"></asp:ListItem>
                        <asp:ListItem Text="9" Value="10"></asp:ListItem>
                        <asp:ListItem Text="10" Value="11"></asp:ListItem>
                        <asp:ListItem Text="11" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>PHYSICAL DISABILITY 40% or more/40%  या अधिक निःशक्तता</div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlisph" runat="server" CssClass="form-control"
                        OnSelectedIndexChanged="ddlisph_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Text="--SELECT--" Value="0"></asp:ListItem>
                        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row" id="DivTypeofDisability" runat="server" visible="false">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-1">
                        <div class="formLabelTxt"></div>
                        <br />
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="formLabelTxt"><span style="color: Red">*</span>TYPE OF DISABILITY/ निःशक्तता का प्रकार</div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6">
                        <asp:DropDownList ID="ddltypeofDisability" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-1">
                        <div class="formLabelTxt"></div>
                        <br />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-1">
                        <div class="formLabelTxt"></div>
                        <br />
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="formLabelTxt"><span style="color: Red">*</span>DISABILITY CERTIFICATE REGISTRAION NUMBER/SERIAL NUMBER/निःशक्तता प्रमाण पत्र संख्या / सीरियल नंबर</div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6">
                        <asp:TextBox ID="txtCertificateNo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-1">
                        <div class="formLabelTxt"></div>
                        <br />
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="formLabelTxt">
                        <asp:CheckBox ID="CHKAGR" runat="server" />
                        I hereby declare that I have read all the terms and conditions related to this test.
                             Further, I hereby declare that the information provided in the application Form is true, 
                          complete & correct to the best of my knowledge and belief. I have not concealed any information. 
                      In case, any fact mentioned in the application is found to be wrong/ incorrect at any later stage, my candidature, may be canceled.
                    </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="SAVE & NEXT" OnClick="btnSubmit_Click" BackColor="#3F8B3F" OnClientClick="return ValidateControls();"
                        ForeColor="White" class="btn btn-lg btn-primary btn-block" />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <asp:Button ID="btnexit" runat="server" Text="EXIT" BackColor="#3F8B3F"
                        ForeColor="White" class="btn btn-lg btn-primary btn-block"
                        OnClick="btnexit_Click" />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>





    <!-- Graphicera Google Tag Manager -->
    <script type="text/javascript">    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-53RLL6H');</script>
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-53RLL6H"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Graphicera Google Tag Manager (noscript) -->
</asp:Content>

