<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="ObjectionLogin.aspx.cs" Inherits="Candidate_ObjectionLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div align="center">
        <h3><strong>Login </strong></h3>

        <br />
        <br />

        <table width="50%">
            <tr align="center">
                <td>
                    <asp:Label ID="lblName" runat="server" Font-Bold="true" Font-Size="Medium">Login Id</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLoginID" runat="server" CssClass="form-control" Width="40%" placeholder="LOGIN ID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="height: 10px"></div>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Medium">Password</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="form-control" Width="40%" TextMode="Password" placeholder="PASSWORD"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="height: 10px"></div>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="btnSubmit" runat="server" Text="SUMBIT" OnClick="btnSubmit_Click" OnClientClick="return validate();" BackColor="#3F8B3F" Width="95%"
                                    ForeColor="White" class="btn btn-lg btn-primary btn-block" />
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="EXIT" PostBackUrl="~/Home/ListofExam.aspx" BackColor="#3F8B3F" Width="100%"
                                    ForeColor="White" class="btn btn-lg btn-primary btn-block" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        function validate() {
            var TextBoxLoginID = document.getElementById("ContentPlaceHolder1_TextBoxLoginID");
            var TextBoxPassword = document.getElementById("ContentPlaceHolder1_TextBoxPassword");

            if (TextBoxLoginID.value == '') {
                alert('Please enter Login ID.');
                return false;
            }

            if (TextBoxPassword.value == '') {
                alert('Please enter Password.');
                return false;
            }

        }

    </script>
</asp:Content>

