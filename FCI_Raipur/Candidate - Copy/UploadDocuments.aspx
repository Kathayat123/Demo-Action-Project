<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="UploadDocuments.aspx.cs" Inherits="Candidate_UploadDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <script type="text/javascript">

        function CheckIfAllFilesAreSelected() {

            var UplDoc = document.getElementById('ContentPlaceHolder1_UplDoc');
            var UplSign = document.getElementById('ContentPlaceHolder1_UplSign');

            var hfEightExt = document.getElementById('ContentPlaceHolder1_hfEightExt');
            var hfCatExt = document.getElementById('ContentPlaceHolder1_hfCatExt');
            var hfServiceExt = document.getElementById('ContentPlaceHolder1_hfServiceExt');
            var hfPWDExt = document.getElementById('ContentPlaceHolder1_hfPWDExt');


            if (UplDoc.value == '') { UplDoc.focus(); alert('Please upload candidate photo'); return false; }

            if (UplSign.value == '') { UplSign.focus(); alert('Please upload candidate signature'); return false; }

            if (UplDoc.files['0'].type.indexOf('jpg') <= -1 && UplDoc.files['0'].type.indexOf('jpeg') <= -1) {
                UplDoc.focus();
                alert('Oops ! Error occured while uploading, Applicant Photo should be in .jpeg or jpg format only');
                return false;
            }

            if (UplSign.files['0'].type.indexOf('jpg') <= -1 && UplSign.files['0'].type.indexOf('jpeg') <= -1) {
                UplSign.focus();
                alert('Oops ! Error occured while uploading, Applicant signature should be in .jpeg or jpg format only');
                return false;
            }

            if (UplDoc.files['0'].size > 80000) {
                UplDoc.focus();
                alert('Oops ! Error occured while uploading, Applicant Photo size should be 80KB');
                return false;
            }
                
            if (UplSign.files['0'].size > 50000) {
                UplSign.focus();
                alert('Oops ! Error occured while uploading, Applicant signature size should be 50KB');
                return false;
            }

            var UplEigthDoc = document.getElementById('ContentPlaceHolder1_UplEigthDoc');
            if (UplEigthDoc.value == '') { UplEigthDoc.focus(); alert('Please upload 8th Standard Marksheet'); return false; }

            var Extension = UplEigthDoc.value.substring(UplEigthDoc.value.lastIndexOf('.') + 1).toLowerCase();
            hfEightExt.value = Extension;

            if (UplEigthDoc.files['0'].type.indexOf('jpg') <= -1 && UplEigthDoc.files['0'].type.indexOf('jpeg') <= -1 && Extension != 'pdf') {
                UplEigthDoc.focus();
                alert('Oops ! Error occured while uploading, Applicant Photo should be in pdf/jpeg/jpg  format only');
                return false;
            }

            if (UplEigthDoc.files['0'].size > 1000000) {
                UplEigthDoc.focus();
                alert('Oops ! Error occured while uploading, 8th Standard Marksheet size should be 1MB');
                return false;
            }


            var UplCatProofDoc = document.getElementById('ContentPlaceHolder1_UplCatProofDoc');

            if (UplCatProofDoc != null) {
                if (UplCatProofDoc.value == '') { UplCatProofDoc.focus(); alert('Please upload Category proof Certificate'); return false; }

                var Extension = UplCatProofDoc.value.substring(UplCatProofDoc.value.lastIndexOf('.') + 1).toLowerCase();
                hfCatExt.value = Extension;
                if (UplCatProofDoc.files['0'].type.indexOf('jpg') <= -1 && UplCatProofDoc.files['0'].type.indexOf('jpeg') <= -1 && Extension != 'pdf') {
                    UplCatProofDoc.focus();
                    alert('Oops ! Error occured while uploading, Applicant Photo should be in pdf/jpeg/jpg  format only');
                    return false;
                }

                if (UplCatProofDoc.files['0'].size > 1000000) {
                    UplCatProofDoc.focus();
                    alert('Oops ! Error occured while uploading, Category proof Certificate size should be 1MB');
                    return false;
                }
            }


            var UplExservicemanDoc = document.getElementById('ContentPlaceHolder1_UplExservicemanDoc');
            if (UplExservicemanDoc != null) {
                if (UplExservicemanDoc.value == '') { UplExservicemanDoc.focus(); alert('Please upload Ex-serviceman proof Certificate'); return false; }

                var Extension = UplExservicemanDoc.value.substring(UplExservicemanDoc.value.lastIndexOf('.') + 1).toLowerCase();
                hfServiceExt.value = Extension;
                if (UplExservicemanDoc.files['0'].type.indexOf('jpg') <= -1 && UplExservicemanDoc.files['0'].type.indexOf('jpeg') <= -1 && Extension != 'pdf') {
                    UplExservicemanDoc.focus();
                    alert('Oops ! Error occured while uploading, Ex-serviceman proof Certificate should be in pdf/jpeg/jpg format only');
                    return false;
                }

                if (UplExservicemanDoc.files['0'].size > 1000000) {
                    UplExservicemanDoc.focus();
                    alert('Oops ! Error occured while uploading, Ex-serviceman proof Certificate size should be 1MB');
                    return false;
                }
            }

            var UplPwdDoc = document.getElementById('ContentPlaceHolder1_UplPwdDoc');
            if (UplPwdDoc != null) {
                
                if (UplPwdDoc.value == '') { UplPwdDoc.focus(); alert('Please upload PH proof Certificate'); return false; }

                var Extension = UplPwdDoc.value.substring(UplPwdDoc.value.lastIndexOf('.') + 1).toLowerCase();
                hfPWDExt.value = Extension;
                if (UplPwdDoc.files['0'].type.indexOf('jpg') <= -1 && UplPwdDoc.files['0'].type.indexOf('jpeg') <= -1 && Extension != 'pdf') {
                    UplExservicemanDoc.focus();
                    alert('Oops ! Error occured while uploading, PH proof Certificate should be in pdf/jpeg/jpg format only');
                    return false;
                }

                if (UplPwdDoc.files['0'].size > 1000000) {
                    UplExservicemanDoc.focus();
                    alert('Oops ! Error occured while uploading, PH proof Certificate size should be 1MB');
                    return false;
                }
            }
            return true;

        }

    </script>

    <div class="row">
        <asp:HiddenField ID="hfEightExt" runat="server" />
        <asp:HiddenField ID="hfCatExt" runat="server" />
        <asp:HiddenField ID="hfServiceExt" runat="server" />
        <asp:HiddenField ID="hfPWDExt" runat="server" />

        <div class="col-xs-12 col-sm-12 col-md-12">
            <center>
                <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">UPLOAD DOCUMENTS</span></div>
            </center>

        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt">
            </div>
            <br />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt">
            </div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="red"></asp:Label>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>

        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt">
            </div>
            <br />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt">
                <span style="color: Red">*</span><span style="color: Black">RECENT PASSPORT SIZE COLORED PHOTOGRAPH 
                  </span>
            </div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplDoc" runat="server" />
            <span style="color: red">(.jpg upto 80kb)</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>

        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>

        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt"><span style="color: Red">* </span><span style="color: Black">CANDIDATE SIGNATURE</span></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplSign" runat="server" />
            <span style="color: red">(.jpg upto 50kb)</span>
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
            <div class="formLabelTxt"><span style="color: Red">*</span><span style="color: Black">8TH STANDARD MARKSHEET </span></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplEigthDoc" runat="server" /><span style="color: red">(pdf/jpeg/jpg upto 1 MB)</span>
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
            <div class="formLabelTxt"><span style="color: Red">*</span><span style="color: Black">DOB PROOF DOCUMENT (10TH CLASS MARKSHEET)</span></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplDOBDoc" runat="server" /><span style="color: red">(pdf/jpeg/jpg upto 1 MB)</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>
    <br />
    <div class="row" id="divCat" runat="server" visible="false">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt"><span style="color: Red">*</span><span style="color: Black">CATEGORY PROOF DOCUMENT</span></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplCatProofDoc" runat="server" /><span style="color: red">(pdf/jpeg/jpg upto 1 MB)</span> &nbsp;&nbsp;<span style="color: Black"></span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>

    <br />
    <div class="row" id="divex" runat="server" visible="false">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt"><span style="color: Red">*</span><span style="color: Black">EX-SERVICEMAN CERTIFICATE</span></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplExservicemanDoc" runat="server" />
            <span style="color: red">(pdf/jpeg/jpg upto 1 MB)</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>

    <br />
    <div class="row" id="divpwd" runat="server" visible="false">
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="formLabelTxt"><span style="color: Red">*</span><span style="color: Black">PWD CERTIFICATE</span></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
            <asp:FileUpload ID="UplPwdDoc" runat="server" /><span style="color: red">(pdf/jpeg/jpg upto 1 MB)</span>
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
            <asp:Button ID="btnSubmit" runat="server" Text="SAVE & NEXT" OnClientClick="return CheckIfAllFilesAreSelected();" OnClick="btnSubmit_Click" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2">
            <asp:Button ID="btnexit" runat="server" Text="EXIT" BackColor="#3F8B3F"
                ForeColor="White" class="btn btn-lg btn-primary btn-block"
                OnClick="btnexit_Click" />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4">
        </div>

    </div>

</asp:Content>

