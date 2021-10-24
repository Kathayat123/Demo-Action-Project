<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Candidate_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">CONTACT DETAILS</span></div>

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
                    <div class="formLabelTxt"><span style="color: Red">*</span>MOBILE NUMBER/ मोबाइल नंबर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtMobile" class="form-control" onkeypress="return CreateNumericTextBox(this,event,false)" placeholder="MOBILE NUMBER" MaxLength="10" runat="server" ReadOnly="true"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>E-MAIL ID/ ई-मेल आईडी</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtEmail" oncopy="return false" oncut="return false" onpaste="return false" placeholder="EMAIL ID" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">CURRENT ADDRESS</span></div>

                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>ADDRESS/पता</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtCaddress" class="form-control" onkeypress="return CreateStringTextBoxForOthers(this,event)" placeholder="ADDRESS" MaxLength="300" runat="server"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>STATE/U.T./राज्य/संघ राज्य छेत्र</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="drpCState" runat="server" class="form-control" AutoPostBack="True"
                        OnSelectedIndexChanged="drpCState_SelectedIndexChanged">
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>DISTRICT/जिला</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="drpCdistrict" class="form-control" runat="server"
                        AutoPostBack="True" OnSelectedIndexChanged="drpCdistrict_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <div class="row" id="DivCurDis" runat="server" visible="false">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtcurOtherDistrict" runat="server" class="form-control" placeholder="DISTRICT NAME"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>TEHSIL/CITY/तहसील/शहर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtCCity" class="form-control" onkeypress="return CreateStringTextBox(this,event)" placeholder="CITY" MaxLength="50" runat="server"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>PINCODE/पिन कोड</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtCPincode" runat="server" type="text" MaxLength="6" onkeypress="return CreateNumericTextBox(this,event,false)" placeholder="PINCODE" class="form-control" /></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="formLabelTxt">
                        <span style="font-weight: bold; color: Black;">PERMANENT ADDRESS</span>
                        <br />
                        Same as Current Address
                                <asp:CheckBox ID="chksame" runat="server" AutoPostBack="true"
                                    OnCheckedChanged="chksame_CheckedChanged" />
                    </div>

                </div>
            </div>



            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>ADDRESS/पता</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtAddress1" runat="server" MaxLength="500" onkeypress="return CreateStringTextBoxForOthers(this,event)" placeholder="ADDRESS" class="form-control"></asp:TextBox>

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
                    <div class="formLabelTxt"><span style="color: Red">*</span>STATE/U.T./राज्य/संघ राज्य छेत्र</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlpreState" runat="server" class="form-control"
                        AutoPostBack="True" OnSelectedIndexChanged="ddlpreState_SelectedIndexChanged">
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>DISTRICT/जिला</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="drpDistrict" class="form-control" runat="server"
                        OnSelectedIndexChanged="drpDistrict_SelectedIndexChanged"
                        AutoPostBack="True">
                    </asp:DropDownList>

                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <div class="row" id="DivPerOtherDis" runat="server" visible="false">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtPerOtherDIs" runat="server" class="form-control" placeholder="DISTRICT NAME"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>TEHSIL/CITY/तहसील/शहर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">

                    <asp:TextBox ID="txtCity" class="form-control" onkeypress="return CreateStringTextBox(this,event)" placeholder="CITY" MaxLength="40" runat="server"></asp:TextBox>
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>PINCODE/पिन कोड</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:TextBox ID="txtPincode" class="form-control" onkeypress="return CreateNumericTextBox(this,event,false)" placeholder="PINCODE" MaxLength="6" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>

            <br />
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">Exam City</span></div>

                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="formLabelTxt"><span style="color: Red">*</span>Exam City 1/परीक्षा शहर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlExamCity" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlExamCity_SelectedIndexChanged">
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>Exam City 2/परीक्षा शहर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlExamCity2" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlExamCity2_SelectedIndexChanged">
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
                    <div class="formLabelTxt"><span style="color: Red">*</span>Exam City 3/परीक्षा शहर</div>
                    <br />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <asp:DropDownList ID="ddlExamCity3" class="form-control" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-1">
                    <div class="formLabelTxt"></div>
                    <br />
                </div>
            </div>
            <br />

            <br />
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="SAVE & NEXT" OnClick="btnSubmit_Click" ForeColor="White" BackColor="#3F8B3F" class="btn btn-lg btn-primary btn-block" />
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

</asp:Content>

