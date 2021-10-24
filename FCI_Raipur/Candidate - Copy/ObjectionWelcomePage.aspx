<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="ObjectionWelcomePage.aspx.cs" Inherits="Candidate_ObjectionWelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <table width="100%">
            <tr>
                <td style="border-width: 0px; vertical-align: top; color: #d40d10;">
                    <strong>Go to the <a href="../Home/ListofExam.aspx" class="blue_link">Login Page</a></strong>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
                    <div style="background-color: #3F8B3F; height: 30px; font-size: 14px">
                        <div style="height: 5px;"></div>
                        <span style="color: white; font-weight: bold; padding-left: 20px">LOGIN ID : </span>
                        <asp:Label ID="lblLoginId" runat="server" Style="color: white; font-weight: bold;"></asp:Label>
                    </div>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <table>
                            <tr>
                                <td colspan="3">
                                    <table style="font-size: 12px; font-weight: bold;">
                                        <tr>
                                            <td>RollNumber :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblRollNo" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Name :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Mother Name :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblMotherName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Father Name :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblFatherName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Exam Name :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="FCI Chhattisgarh Region - Recruitment of Watchman Exam"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Exam Date :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblExamDate" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Slot Timing :</td>
                                            <td>&nbsp;&nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblSlot" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 25px;"></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnAddObjection" Font-Size="15px" runat="server" Width="150px" Text="Add Objection" BackColor="#3F8B3F" ForeColor="White" Visible="false" class="btn btn-lg btn-primary btn-block" OnClick="btnAddObjection_Click" />
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:Button ID="btnViewAnskerkey" runat="server" Width="150px" Font-Size="15px" Text="View Answer Key" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" OnClick="btnViewAnskerkey_Click" />
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:Button ID="btnExit" runat="server" Width="150px" Font-Size="15px" Text="Exit" BackColor="#3F8B3F" ForeColor="White" class="btn btn-lg btn-primary btn-block" PostBackUrl="~/Candidate/ObjectionLogin.aspx" />
                                </td>
                            </tr>
                        </table>
                    </center>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>



