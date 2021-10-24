<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ObjectionDashboard.aspx.cs" Inherits="Admin_ObjectionDashboard" %>

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
        }
    </script>
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

    <br />
    <div style="text-align: left">
        <span style="font-size: 18px; color: #3F8B3F; font-weight: bold">OBJECTION DASHBOARD</span>
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
                <asp:Label ID="lblTotalCount" Font-Size="Large" runat="server" Font-Bold="true"></asp:Label>
                <br />
                <br />
            </td>
        </tr>

    </table>

    <div>
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" RowStyle-Wrap="true" CellPadding="4" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal">
            <Columns>
                <%--<asp:BoundField DataField="SRNO" HeaderText="Sr.No" HeaderStyle-Width="10px" />--%>
                <asp:BoundField DataField="QuestionId" HeaderText="QUESTION ID" HeaderStyle-Width="100px">
                    <HeaderStyle Width="100px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="TotalCount" HeaderText="TOTAL OBJECTION RAISED" HeaderStyle-Width="250px">
                    <HeaderStyle Width="250px"></HeaderStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#336666" />

            <RowStyle Wrap="True" BackColor="White" ForeColor="#333333"></RowStyle>
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </div>

    <br />

    <br />
    <br />



</asp:Content>

