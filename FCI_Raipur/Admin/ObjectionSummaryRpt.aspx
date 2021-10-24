<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ObjectionSummaryRpt.aspx.cs" Inherits="Admin_ObjectionSummaryRpt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       <style>
        #myBtn {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 30px;
            z-index: 99;
            border: none;
            outline: none;
            background-color: red;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 10px;
        }

            #myBtn:hover {
                background-color: #555;
            }
    </style>

    <script type="text/javascript">
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
            return false;
        }
    </script>
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

           
            <br />

            <div style="text-align: left">
                <span style="font-size: 18px; color: #3F8B3F; font-weight: bold">SUMMARY</span>
                <br />
                <br />
            </div>
            <table>
                <tr>
                    <td><strong>SUBJECT : </strong></td>
                    <td>
                        <asp:DropDownList ID="ddlsubject" runat="server" CssClass="select" AutoPostBack="true" Style="width: 405px;" OnSelectedIndexChanged="ddlsubject_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Button ID="btnExport" runat="server" OnClientClick="return OnExportClick();" Text="Export to Excel" BackColor="#3F8B3F" Style="width: 150px; color: white;" Font-Size="Small" Font-Bold="true" class="input-btn" OnClick="btnExport_Click" />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTotalCount" runat="server" Font-Bold="true"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

            <div>
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" RowStyle-Wrap="true" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SRNO" HeaderText="Sr.No" HeaderStyle-Width="100px">
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LOGIN ID" HeaderText="LOGIN ID" HeaderStyle-Width="100px">
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="Qno" HeaderText="PAPER SET" HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>
                           <asp:BoundField DataField="OPTIONID" HeaderText="QUESTION NO." HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>
                      <%--  <asp:BoundField DataField="SUBJECT" HeaderText="SUBJECT" HeaderStyle-Width="100px">
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </asp:BoundField>--%>
                        <asp:BoundField DataField="NATURE OF OBJECTION" HeaderText="NATURE OF OBJECTION" HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="CandGivAnsKey" HeaderText="ANSWER OPTION GIVEN IN ANSWER KEY" HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="CandAnswer" HeaderText="ANSWER OPTION ACCORDING TO CANDIDATE" HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>

                        <asp:BoundField DataField="REMARKS" HeaderText="REMARKS" HeaderStyle-Width="550px">
                            <HeaderStyle Width="550px"></HeaderStyle>
                        </asp:BoundField>
                       
                     
                       <%-- <asp:BoundField DataField="PATH" HeaderText="PATH" HeaderStyle-Width="150px">
                            <HeaderStyle Width="150px"></HeaderStyle>
                        </asp:BoundField>--%>
                         <asp:HyperLinkField DataTextField="PATH" DataNavigateUrlFields="PATH" Target="_blank"
                            HeaderText="PATH" ItemStyle-Width = "150" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:HyperLinkField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />

                    <RowStyle Wrap="True" BackColor="#E3EAEB"></RowStyle>
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div>

            <br />

        <br /> <br />

</asp:Content>

