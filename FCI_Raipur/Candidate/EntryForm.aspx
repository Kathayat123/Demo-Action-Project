<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="EntryForm.aspx.cs" Inherits="Candidate_EntryForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%-- <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>--%>
    <asp:HiddenField ID="hfAge" runat="server" />
    <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-12">
            <center>
                <div class="formLabelTxt"><span style="font-weight: bold; color: Black;">REGISTRATION FORM FOR RECRUITMENT OF WATCHMAN</span></div>
            </center>

        </div>
    </div>

    <br />
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"><span style="color: Red">*</span>POST APPLIED FOR/आवेदित पद</div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <asp:DropDownList name="ddlCandidateType" runat="server" ID="ddlCandidateType" class="form-control">
            </asp:DropDownList>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"><span style="color: Red">*</span>CANDIDATE'S FULL NAME/अभ्यर्थी का पूरा नाम:</div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <asp:TextBox ID="txtcanname" runat="server" CssClass="form-control " placeholder="CANDIDATE'S FULL NAME/अभ्यर्थी का पूरा नाम" onkeypress="return CreateCAPSStringTextBox(this,event)" Style="text-transform: uppercase;"></asp:TextBox>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">

            <div class="formLabelTxt"></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-5">
            <span style="color: darkblue; font-size: small">(Name as recorded in the School/Matriculation/Secondary Examination Certificate/ Birth Certificate etc.) 
(Do not use Mr./Shri/Dr etc.)
</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>

    </div>
    <br />

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"><span style="color: Red">*</span>DATE OF BIRTH/ जन्मतिथि</div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="form-group">
                <asp:DropDownList ID="drpddate" runat="server" CssClass="form-control" TabIndex="1" Width="75px" Font-Size="10px">
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

        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="form-group">
                <asp:DropDownList ID="drpdmonth" runat="server" CssClass="form-control" TabIndex="1" Width="75px" Font-Size="10px">
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
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="form-group">
                <asp:DropDownList ID="drpdyear" runat="server" CssClass="form-control" TabIndex="1" OnSelectedIndexChanged="drpdyear_SelectedIndexChanged" Width="75px" Font-Size="10px">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>

    </div>

     <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">

            <div class="formLabelTxt"></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-5">
            <span style="color: darkblue; font-size: small">(As recorded in the School/Matriculation/Secondary Examination Certificate/ Birth Certificate etc)</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-1">
            <div class="formLabelTxt"></div>
            <br />
        </div>

    </div>
    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">

            <div class="formLabelTxt"><span style="color: Red">*</span>E-MAIL ID/ ई-मेल आईडी</div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control " placeholder="E-MAIL ID/ ई-मेल आईडी" onkeypress="return CreateStringTextBoxForOthers(this,event)" onfocusout="if(this.value!=null){validationnew(this,&#39;Email ID&#39;,&#39;T&#39;,&#39;Email&#39;);}" Style="text-transform: uppercase;"></asp:TextBox>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>

    </div>

    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"><span style="color: Red">*</span>MOBILE NUMBER/ मोबाइल नंबर</div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <asp:TextBox ID="txtmbl" runat="server" CssClass="form-control " placeholder="MOBILE NUMBER/ मोबाइल नंबर" onkeypress="return CreateNumericTextBox(this,event,false)" Style="text-transform: uppercase;" MaxLength="10"></asp:TextBox>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="formLabelTxt"></div>
            <br />
        </div>
    </div>









    <br />
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2">
            <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2">
            <asp:Button ID="btnexit" runat="server" Text="EXIT" BackColor="#3F8B3F"
                ForeColor="White" class="btn btn-lg btn-primary btn-block"
                OnClick="btnexit_Click" />
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4">
        </div>

    </div>
    <%--  </ContentTemplate> 
               </asp:UpdatePanel>--%>





    <!-- Graphicera Google Tag Manager -->
    <script>    (function (w, d, s, l, i) {
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

