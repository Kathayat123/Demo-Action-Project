<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="ObjectionForm.aspx.cs" Inherits="Candidate_ObjectionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .Hrftable {
            border-collapse: collapse;
            font-family: calibri;
            font-size: 11px;
            width: 90%;
            font-size: 14px;
            font-weight: bold;
        }

            .Hrftable th {
                background: #856363; /*background: #E8ECFB;*/
                border: #ddd 1px solid;
                color: #fff; /*color: #000;*/
                font-weight: normal margin: 0 0 0 0;
                padding: 4px;
                text-align: left;
                font-size: 16px;
                font-weight: bold;
            }

            .Hrftable td {
                border: #ddd 1px solid;
                padding: 4px;
                height: 28px;
            }

            .Hrftable tr {
                background: #fafafa;
            }

                .Hrftable tr:nth-child(odd) {
                    background: #FBFBFB;
                }

                .Hrftable tr:nth-child(even) {
                    background: #f7f7f7;
                }

        .auto-style1 {
            font-size: 16px;
        }
    </style>

    <div class="container">
        <div class="inner_content ">
            <div style="text-align: left; background: #3F8B3F; color: white; height: 30px; width: 98%">
                <table style="width: 98%;">
                    <tr style="height: 10px">
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td style="width: 50%;">
                            <span style="font-size: 14px;" align="left">&nbsp;&nbsp;LOGIN ID:</span>
                            &nbsp;<asp:Label ID="lblregno" runat="server" Text="" Font-Size="14px"></asp:Label>
                            <br />
                        </td>
                        <td></td>
                    </tr>
                </table>

            </div>
            <br />
            <br />
            <div id="pnlMain">
                <table class="Hrftable">

                    <tr>

                        <td>

                            <table class="Hrftable" runat="server" id="save">
                                <tr>
                                    <th colspan="3">Objection Form 
                                    </th>
                                </tr>

                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="NOTE: Objections with no valid explanation/remark and reference will not be taken into account and will be discarded." CssClass="auto-style1"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>

                                    <td>1.<span style="color: #ff0000">*</span> </td>
                                    <td>
                                        <asp:Label ID="Section" runat="server">Exam Name/परीक्षा का नाम </asp:Label>
                                    </td>

                                    <td>
                                        <asp:DropDownList ID="ddlsubject" runat="server" CssClass="select" AutoPostBack="true" Style="width: 455px; height: 25px;" OnSelectedIndexChanged="ddlsubject_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>

                                    <td>2.<span style="color: #ff0000">*</span> </td>
                                    <td>
                                        <asp:Label ID="lblQNo" runat="server">Paper Set/पेपर सेट.</asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlQno" runat="server" CssClass="select" Style="width: 315px; height: 25px;" AutoPostBack="True" OnSelectedIndexChanged="ddlQno_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>

                                </tr>
                                <tr>
                                    <td>3.<span style="color: #ff0000">*</span> </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server">Question Number/प्रश्न क्रमांक </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddloptionid" runat="server" CssClass="select" Style="width: 315px; height: 25px;">
                                        </asp:DropDownList>

                                    </td>

                                </tr>

                                <tr>

                                    <td>4.<span style="color: #ff0000">*</span> </td>

                                    <td>
                                        <asp:Label ID="Label3" runat="server">Nature Of Objection/आपत्ति का प्रकार </asp:Label>
                                    </td>

                                    <td>
                                        <asp:DropDownList ID="ddlquerytype" runat="server"  CssClass="select" Style="width: 315px; height: 25px;" AutoPostBack="true" OnSelectedIndexChanged="ddlquerytype_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:TextBox ID="txtobjection" Visible="false" runat="server" MaxLength="50" name="txtobjection" oncopy="return false" oncut="return false"
                                            onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();}" onkeypress="return CreateStringTextBoxForOthers(this,event)"
                                            onpaste="return false" Style="text-transform: uppercase; width: 50%; height: 25px" type="text"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr runat="server" id="divGivAns" visible="false">
                                    <td><span style="color: #ff0000">*</span> </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server">Answer Option given in answer key/ उत्तर कुंजी में दिए गए विकल्प </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlGivAns" runat="server" CssClass="select" Style="width: 315px; height: 25px;">
                                        </asp:DropDownList>
                                    </td>

                                </tr>

                                <tr runat="server" id="divCandAns" visible="false">
                                    <td><span style="color: #ff0000">*</span> </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server">Answer Option according to Candidate/अभ्यर्थी के अनुसार सही उत्तर विकल्प</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCandAnswer" runat="server" TextMode="MultiLine" Style="width: 315px; height: 50px"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>

                                    <td>5.<span style="color: #ff0000">*</span> </td>

                                    <td>
                                        <asp:Label ID="Label4" runat="server">Reference/संदर्भ or Explanation/स्पष्टीकरण</asp:Label>
                                    </td>

                                    <td>

                                        <asp:TextBox ID="txtremarks" runat="server" MaxLength="300" name="txtdetails" oncopy="return false" oncut="return false"
                                            onfocusout="if(this.value!=null){this.value=this.value.toUpperCase();}" onkeypress="return CreateStringTextBoxForOthers(this,event)"
                                            onpaste="return false" Style="text-transform: uppercase; width: 95%; height: 50px" type="text" TextMode="MultiLine" Wrap="true" Rows="2"></asp:TextBox>
                                        <br />

                                        <asp:Label ID="Label2" runat="server" Text="Maximum length 300 characters" Font-Size="Small"></asp:Label>
                                    </td>

                                </tr>

                                <tr>

                                    <td>6.<span style="color: #ff0000">*</span> </td>

                                    <td>
                                        <asp:Label ID="lbluploadCandidatePhoto" runat="server" Text="Reference File/संदर्भ दस्तावेज़"></asp:Label>
                                    </td>

                                    <td>
                                        <asp:FileUpload ID="uploadCandidatephoto" runat="server" />
                                        <br />

                                        <asp:Label ID="Label1" runat="server" Text="NOTE: Upload a valid reference for your objection, File size should be less than 100 KB in JPEG and JPG format" Font-Size="Small"></asp:Label>
                                    </td>

                                </tr>



                            </table>


                        </td>

                    </tr>

                    <tr>
                        <td align="center">
                            <asp:Button ID="btnsubmit" runat="server" Font-Size="14px" Font-Bold="true" Text="Add Objection" Height="35px" BackColor="#3F8B3F" ForeColor="White" OnClientClick="return ValidateControls();" Width="120px" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
                                <asp:Button ID="btnExit" runat="server" Text="Add More Objection" Visible="false" Font-Size="14px" Font-Bold="true" Height="35px" BackColor="#3F8B3F" ForeColor="White" Width="150px" OnClick="btnExit_Click" />&nbsp;&nbsp;
                                <asp:Button ID="btnsaveExit" runat="server" Text="Save & Exit" Visible="false" Font-Size="14px" Font-Bold="true" Height="35px" BackColor="#3F8B3F" ForeColor="White" Width="150px" OnClick="btnsaveExit_Click" />

                            <asp:Button ID="btnBack" runat="server" Text="Back" Height="35px" Font-Size="14px" Font-Bold="true" BackColor="#3F8B3F" ForeColor="White" Width="150px" OnClick="btnBack_Click" />
                        </td>
                    </tr>

                    <tr runat="server" id="trgvData" visible="false">
                        <td align="center">

                            <div style='overflow: scroll; width: 950px; height: 400px;'>

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-Wrap="true">
                                    <Columns>
                                        <asp:BoundField DataField="Row" HeaderText="Sr.No" />
                                        <asp:BoundField DataField="canid" HeaderText="Roll Number" Visible="false" />
                                        <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                        <asp:BoundField DataField="Qno" HeaderText="Question ID" />
                                        <asp:BoundField DataField="optionid" HeaderText="option ID" />
                                        <asp:BoundField DataField="QueryType" HeaderText="Nature of Objection" />
                                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" ItemStyle-Wrap="true" ItemStyle-Width="200px" />
                                        <asp:BoundField DataField="Uploaddoucument" HeaderText="Attached" />

                                    </Columns>
                                </asp:GridView>
                            </div>

                        </td>
                    </tr>
                </table>

            </div>


            <br />
            <div style="text-align: center">
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function ShowDiv() {
            //var ddlquerytype = document.getElementById("ContentPlaceHolder1_ddlquerytype");
            //var divGivAns = document.getElementById("ContentPlaceHolder1_divGivAns");
            //var divCandAns = document.getElementById("ContentPlaceHolder1_divCandAns");

            //divCandAns.style.display = "none";
            //divGivAns.style.display = "none";
            //if (ddlquerytype.value == '4' || ddlquerytype.value == '5') {
            //    divCandAns.style.display = "block";
            //    if (ddlquerytype.value == '5') {
            //        divGivAns.style.display = "block";
            //        return false;
            //    }
            //    return false;
            //}

            return true;
        }

        function ValidateControls() {
            var ddlsubject = document.getElementById("ContentPlaceHolder1_ddlsubject");
            var ddlQno = document.getElementById("ContentPlaceHolder1_ddlQno");
            var ddloptionid = document.getElementById("ContentPlaceHolder1_ddloptionid");
            var ddlquerytype = document.getElementById("ContentPlaceHolder1_ddlquerytype");
            var txtremarks = document.getElementById("ContentPlaceHolder1_txtremarks");
            var txtobjection = document.getElementById("ContentPlaceHolder1_txtobjection");
            var ddlGivAns = document.getElementById("ContentPlaceHolder1_ddlGivAns");
            var txtCandAnswer = document.getElementById("ContentPlaceHolder1_txtCandAnswer");
            var uploadCandidatephoto = document.getElementById("ContentPlaceHolder1_uploadCandidatephoto");

            if (ddlsubject.value == '' || ddlsubject.value == '0') {
                alert('Please select Examination Name')
                ddlsubject.focus();
                return false;
            }

            if (ddlQno.value == '' || ddlQno.value == '0') {
                ddlQno.focus();
                alert('Please select Question Id')
                return false;
            }


            if (ddloptionid.value == '' || ddloptionid.value == '0') {
                ddloptionid.focus();
                alert('Please select Option Id')
                return false;
            }


            if (ddlquerytype.value == '' || ddlquerytype.value == '0') {
                ddlquerytype.focus();
                alert('Please select type of objections')
                return false;
            }


            //if (ddlquerytype.value == '4' && txtobjection.value == '') {
            //    txtobjection.focus();
            //    alert('Please enter  objections')
            //    return false;
            //}

            if ((ddlGivAns != null && ddlGivAns.value == '') || (ddlGivAns != null && ddlGivAns.value == '0')) {
                ddlGivAns.focus();
                alert('Please select Answer Option given in answer key.')
                return false;
            }

            if (txtCandAnswer != null && txtCandAnswer.value == '') {
                txtCandAnswer.focus();
                alert('Please enter Answer Option according to Candidate.')
                return false;
            }

            if (txtremarks.value == '') {
                txtremarks.focus();
                alert('Please enter Explanation/Remarks.')
                return false;
            }

            if (uploadCandidatephoto.value == '' || uploadCandidatephoto.value == '0') {
                uploadCandidatephoto.focus();
                alert('Please upload Reference File')
                return false;
            }

            if (uploadCandidatephoto.files['0'].type.indexOf('jpg') <= -1 && uploadCandidatephoto.files['0'].type.indexOf('jpeg') <= -1) {
                uploadCandidatephoto.focus();
                alert('Oops ! Error occured while uploading, Reference File should be in .jpeg or jpg format only');
                return false;
            }

            if (uploadCandidatephoto.files['0'].size > 100000) {
                uploadCandidatephoto.focus();
                alert('Oops ! Error occured while uploading, Reference File size should be 100KB');
                return false;
            }

        }

    </script>

</asp:Content>

