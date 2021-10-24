<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Citywise.aspx.cs" Inherits="Admin_Citywise" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>


<asp:Content runat="server" ID="content" ContentPlaceHolderID="ContentPlaceHolder1">
    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>

    <script type="text/javascript">
        function Isvalidate() {
            //alert("hi");
            if (document.getElementById("ContentPlaceHolder1_txtfromdate").value == "") {
                alert("Enter From Date"); document.getElementById("ContentPlaceHolder1_txtfromdate").focus(); return false;
            }
            if (document.getElementById("ContentPlaceHolder1_txttodate").value == "") {
                alert("Enter To Date"); document.getElementById("ContentPlaceHolder1_txttodate").focus(); return false;
            }
        }
    </script>

    <link rel="stylesheet" href="../Scripts/jquery-ui.css" />
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <%-- <div id="pnlMain">--%>
    <table class="Hrftable_full">

        <tr>
             <th colspan="4" style="font-weight:bold;font-size:16px;">City Wise Payment Summary
            </th>
        </tr>

        <tr runat="server">
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 20%;" align="left">POST NAME</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold; width: 30%;" align="left">
                <asp:DropDownList Enabled="false" ID="ddlCandidateType" runat="server" CssClass="select" AutoPostBack="true" Style="width: 95%" OnSelectedIndexChanged="ddlCandidateType_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td colspan="2"></td>
        </tr>

        <tr runat="server" visible="true">
            <td style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left" colspan="4">
                <asp:Label ID="lblCMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>

        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" CssClass="auto-style2">
                    <Columns>

                        <asp:BoundField HeaderText="Sr.No" DataField="Row" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="14px" />
                        <asp:BoundField HeaderText="Exam City Name" DataField="CityName" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="14px"/>
                        <asp:BoundField HeaderText="1st Pref. Count" DataField="" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="14px"/>
                        <asp:BoundField HeaderText="2nd Pref. Count" DataField="" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="14px"/>
                        <asp:BoundField HeaderText="3rd Pref. Count" DataField="" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="14px"/>


                    </Columns>

                </asp:GridView>
            </td>


        </tr>
        <tr runat="server" visible="false">
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

        </tr>

        <tr>
            <td width="100" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="left">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>
            <td width="80" style="font-size: 11px; font-family: Verdana; font-weight: bold;" align="right">&nbsp;</td>

        </tr>

    </table>
    <%--</div>--%>

    <script type="text/javascript" language="javascript" src="../Portal/headers/creditsfootermp.js"></script>
</asp:Content>

