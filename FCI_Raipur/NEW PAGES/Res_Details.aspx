<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="Res_Details.aspx.cs" Inherits="Candidate_Res_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
    function targetMeBlank() {
        document.forms[0].target = "_blank";
    }
</script>
    <div>
        <table style="width: 100%">

            <tr id="trall" runat="server" visible="false">
                <td colspan="3" style="color: #000000; font-family: Verdana; font-size: 16px; padding-left: 80px; padding-right: 30px; text-align: center"><strong>आप शारीरिक दक्षता परीक्षा के लिए पात्र है |
                    <br />
                    शारीरिक दक्षता परीक्षा की तिथि जल्द ही घोषित की जावेगी |<br />
                    <br />
                </strong></td>

            </tr>
             <tr id="trspecial" runat="server" visible="false">
                <td colspan="3" style="color: #000000; font-family: Verdana; font-size: 16px; padding-left: 80px; padding-right: 30px; text-align: center"><strong>
                    दस्तावेज सत्यापन के लिए आपको बुलाया जावेगा , <br />
                    जिसकी तिथि निर्धारित कर आपको सूचित किया जावेगा |<br />
                    <br />
                </strong></td>

            </tr>
            <tr style="text-align: left;">
                <td style="width: 30%"></td>
                <td style="text-align: right; width: 60%">
                    <table style="width:70%; text-align: right; color: maroon; font-weight: bold">
                        <tr>
                            <td style="width: 40%; text-align: left; font-size: 15px;">
                                <asp:Label ID="Label1" runat="server" Text="Candidate Name : "></asp:Label>
                            </td>
                            <td style="width: 60%; font-size: 15px; text-align: left">&nbsp;&nbsp;
                                <asp:Label ID="lblcandidatename" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; font-size: 15px">
                                <asp:Label ID="Label3" runat="server" Text="Roll Number : "></asp:Label>
                            </td>
                            <td style="width: 60%; font-size: 15px; text-align: left">&nbsp;&nbsp;
                                <asp:Label ID="lblrollno" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; font-size: 15px">
                                <asp:Label ID="Label5" runat="server" Text="Marks : "></asp:Label>
                            </td>
                            <td style="width: 60%; font-size: 15px; text-align: left">&nbsp;&nbsp;
                                <asp:Label ID="lblmarks" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td style="text-align: center; font-size: 15px" colspan="2" align="center" valign="middle">
                           <%--    OnClientClick="targetMeBlank();"--%>
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" Font-Underline="True" OnClick="LinkButton1_Click" >View OMR</asp:LinkButton>
<%--                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue"  DataNavigateUrlFields="candidateid" DataNavigateUrlFormatString="~/Admin/PrintPreview.aspx?Cid={0}" Target="_blank">HyperLink</asp:HyperLink>--%>
                               
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 10%"></td>

            </tr>
            <tr>
                <td colspan="3" style="color: #000000; font-family: Verdana; font-size: 16px; padding-left: 80px; padding-right: 30px; text-align: center">
                    <br />
                    <br />
                    <asp:HiddenField ID="hdnbarcode" runat="server" />
                    <asp:Button ID="btnexit" runat="server" Font-Bold="true" ForeColor="Green" Text="EXIT" Height="40px" OnClick="btnexit_Click" />

                </td>

            </tr>
        </table>
    </div>
</asp:Content>

