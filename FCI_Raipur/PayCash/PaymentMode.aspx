<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="PaymentMode.aspx.cs" Inherits="PayCash_PaymentMode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <center>
            <h3 style="text-decoration: underline">Submission of Fees</h3>
        </center>
    </div>
    <br />
    <center>
        <div>
            <table class="Hrftable">

                <tr>
                    <th>Payment Options
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 65px;"></td>
                    <td>
                        <asp:RadioButton ID="rdonline" runat="server" Font-Bold="True" GroupName="a" Text="Online Payment" Width="300px" /><span style="color: #ff0000"></span>
                        <br />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td style="padding-left: 65px;"></td>
                    <td width="80%">
                        <asp:RadioButton ID="rddd" runat="server" Font-Bold="True" GroupName="a" Text=" Offline Payment" Width="300px" /><span style="color: #ff0000"></span>
                        <br />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnProceed" runat="server" Width="250px" Text="Next" OnClick="btnProceed_Click" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" />&nbsp;
                    
                    </td>
                </tr>

            </table>
        </div>
    </center>

</asp:Content>

