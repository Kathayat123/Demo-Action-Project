<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="Candidate_WelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <table width="100%">
            <tr>
                <td style="border-width: 0px; vertical-align: top; color: #d40d10;">
                    <strong>Go to the <a href="../Home/ListofExam.aspx" class="blue_link">Login Page</a></strong>
                </td>
                <td>
                    <br /><br /><br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnsubmit" runat="server" Width="200px" Text="Preview" BackColor="#3F8B3F" ForeColor="White" Visible="true" class="btn btn-lg btn-primary btn-block" PostBackUrl="~/Candidate/Print.aspx" />
                </td>
                  <td>
                    <asp:Button ID="btnDownloadAdmitCard" Width="210px"  runat="server" Text="Download Admit Card" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" OnClick="btnAdmitCard_Click"  />
                 </td>
                <td>
                    <asp:Button ID="btnExit" runat="server"  Width="200px" Text="Exit"  BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" PostBackUrl="~/Home/ListofExam.aspx" />
                </td>
            </tr>
        </table>
    </div>


</asp:Content>

