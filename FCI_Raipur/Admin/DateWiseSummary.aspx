<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="DateWiseSummary.aspx.cs" Inherits="Admin_DateWiseSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <span style="font-weight:bold;font-size:16px;">
        Date Wise Payment Summary
    </span>
    <br /><br />
     <div>
        <strong>
        <asp:GridView ID="gvSummary" runat="server" AutoGenerateColumns="false" CssClass="auto-style2">
            <Columns>
                <asp:BoundField HeaderText="Date" DataField="Date" />
               <%-- <asp:BoundField HeaderText="PWD Count" DataField="PWDCount" />
                <asp:BoundField HeaderText="ST Count" DataField="STCount" />--%>
                <asp:BoundField HeaderText="ST/SC/PWD/EX-SERVICEMEN/WOMEN Count" DataField="NonPayment" />
                <asp:BoundField HeaderText="Online Payment Count" DataField="OnlinePaymentCount" />
                <asp:BoundField HeaderText="Total Count" DataField="RowTotal" />
            </Columns>
        </asp:GridView>
        </strong>
         <div style="height:35px"> </div>
    </div>

</asp:Content>

