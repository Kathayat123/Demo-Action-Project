<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="ForgetCredential.aspx.cs" Inherits="Candidate_ForgetCredential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">

        function ValidateControls() {

            var drpddate = document.getElementById('ContentPlaceHolder1_drpddate');
            var drpdmonth = document.getElementById('ContentPlaceHolder1_drpdmonth');
            var drpdyear = document.getElementById('ContentPlaceHolder1_drpdyear');
            var txtemail = document.getElementById('ContentPlaceHolder1_txtemail');
            var txtmbl = document.getElementById('ContentPlaceHolder1_txtmbl');

            if (drpddate.value == 'DAY' || drpddate.value == '0') {
                drpddate.focus();
                alert('Please select Day in Date of birth.');
                return false;
            }

            if (drpdmonth.value == 'MONTH' || drpdmonth.value == '0') {
                drpdmonth.focus();
                alert('Please select Month in Date of birth.');
                return false;
            }

            if (drpdyear.value == 'YEAR' || drpdyear.value == '0') {
                drpdyear.focus();
                alert('Please enter Year in Date of birth.');
                return false;
            }

            if (txtemail.value == '') {
                txtemail.focus();
                alert('Please enter E-Mailid.');
                return false;
            }

            if (txtmbl.value == '') {
                txtmbl.focus();
                alert('Please enter mobile number.');
                return false;
            }
            else {
                if (txtmbl.value.length < 10) {
                    txtmbl.focus();
                    alert('Please enter valid mobile number.');
                    return false;
                }
            }

        }


    </script>


    <div align="center">
        <h3><strong>Forget Credentials </strong></h3>

        <br />
        <br />

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3">
                <div class="formLabelTxt"></div>
                <br />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3">
                <div class="formLabelTxt"><span style="color: Red"><strong>*</strong></span><strong>DATE OF BIRTH/ जन्मतिथि</strong></div>
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
                    <asp:DropDownList ID="drpdyear" runat="server" CssClass="form-control" TabIndex="1" Width="75px" Font-Size="10px">
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

                <div class="formLabelTxt"><span style="color: Red">*</span><strong>E-MAIL ID/ ई-मेल आईडी</strong></div>
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
                <div class="formLabelTxt"><span style="color: Red">*</span><strong>MOBILE NUMBER/ मोबाइल नंबर</strong></div>
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
        <br />
        <table width="50%">
            <tr align="center">
                <td>
                    <center>
                        <asp:Button ID="btnSubmit" runat="server" Text="SUMBIT" OnClick="btnSubmit_Click" BackColor="#3F8B3F" Width="55%" OnClientClick="return ValidateControls();"
                            ForeColor="White" class="btn btn-lg btn-primary btn-block" /></center>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="EXIT" PostBackUrl="~/Home/ListofExam.aspx" BackColor="#3F8B3F" Width="50%"
                        ForeColor="White" class="btn btn-lg btn-primary btn-block" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

