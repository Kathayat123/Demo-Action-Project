<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true"
    CodeFile="EducationDetails.aspx.cs" Inherits="Candidate_EducationDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <center>
                        <div class="formLabelTxt">
                            <span style="font-weight: bold; color: Black;">ACADEMIC QUALIFICATION</span>
                        </div>
                    </center>
                </div>
            </div>
            <br />
            <div class="clearfix">
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <table class="table table-striped table-bordered dataTable no-footer">
                        <thead>
                            <tr>
                                <th width="10%">Examination/उत्तीर्ण परीक्षा
                                </th>
                                <th width="10%">SUBJECTS/विषय
                                </th>
                                <th width="5%">MAXIMUM MARKS/अधिकतम अंक
                                </th>
                                <th width="5%">OBTAINED MARKS/ प्राप्त अंक
                                </th>
                                <th width="10%">PERCENTAGE/प्रतिशत
                                </th>
                                <th width="10%">GRADES /ग्रेड
                                </th>
                                <th width="10%">GRADE/ GRADE VALUE/ग्रेड/ग्रेड वैल्यू
                                </th>
                                <th width="20%">BOARD/INSTITUTION/बोर्ड/संस्थान/विश्वविद्यालय का नाम
                                </th>
                                <th width="10%">PASSING YEAR/उत्तीर्ण वर्ष
                                </th>
                                <th width="10%">ROLL NUMBER/रोल नंबर
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lblITIExam" runat="server">8TH STANDARD</asp:Label><span style="color: Red">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsub3" runat="server" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaxmarks3" runat="server" Width="50px" MaxLength="4" onkeypress="return CreateNumericTextBox(this,event)"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtobtainedMarks3" runat="server" MaxLength="4" onkeypress="return CreateNumericTextBox(this,event)"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpercentage3" runat="server" onkeypress="return CreateNumericwithdotTextBox(this,event)" MaxLength="5"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGrade3" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" MaxLength="3" Style="text-transform: uppercase;"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrade3" runat="server" Width="100px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboard3" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlpassingyear3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpassingyear1_SelectedIndexChanged" Width="60px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtrollno3" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" MaxLength="15"
                                        Width="50px" Style="text-transform: uppercase;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl10thExam" runat="server">HIGH SCHOOL / EQUIVALENT</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsub1" runat="server" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaxmarks1" runat="server" Width="50px" onkeypress="return CreateNumericTextBox(this,event)" MaxLength="4"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtobtainedMarks1" runat="server" onkeypress="return CreateNumericTextBox(this,event)"
                                        Width="50px" MaxLength="4"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpercentage1" runat="server" onkeypress="return CreateNumericwithdotTextBox(this,event)" MaxLength="5"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGrade1" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" MaxLength="3" Style="text-transform: uppercase;"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrade1" runat="server" Width="100px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboard1" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlpassingyear1" runat="server" Width="60px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtrollno1" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;" MaxLength="15"
                                        Width="50px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl12thExam" runat="server">INTERMEDIATE / EQUIVALENT</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsub2" runat="server" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaxmarks2" runat="server" Width="50px" onkeypress="return CreateNumericTextBox(this,event)" MaxLength="4"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtobtainedMarks2" runat="server" onkeypress="return CreateNumericTextBox(this,event)" MaxLength="4"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpercentage2" runat="server" onkeypress="return CreateNumericwithdotTextBox(this,event)" MaxLength="5"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGrade2" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" MaxLength="3" Style="text-transform: uppercase;"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrade2" runat="server" Width="100px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboard2" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlpassingyear2" runat="server" Width="60px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtrollno2" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;" MaxLength="15"
                                        Width="50px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td>
                                    <asp:Label ID="lblGrad" runat="server">GRADUATION</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsub4" runat="server" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaxmarks4" runat="server" Width="50px" MaxLength="4"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtobtainedMarks4" runat="server" MaxLength="4" onkeypress="return CreateCAPSStringTextBox(this,event)"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpercentage4" runat="server" onkeypress="return CreateNumericwithdotTextBox(this,event)"
                                        Width="50px" MaxLength="5"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGrade4" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" MaxLength="3" Style="text-transform: uppercase;"
                                        Width="50px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrade4" runat="server" Width="100px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboard4" runat="server" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlpassingyear4" runat="server" Width="60px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtrollno4" runat="server" onkeypress="return CreateAlphaNumericTextBox(this,event)" Style="text-transform: uppercase;"
                                        Width="50px"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4">
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="SAVE & NEXT" OnClick="btnSubmit_Click"
                        BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" />
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
