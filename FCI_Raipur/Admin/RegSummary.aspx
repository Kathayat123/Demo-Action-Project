<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RegSummary.aspx.cs" Inherits="Admin_RegSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div >
<br />

    <asp:Label ID="Label1" runat="server" Text="Total Registered - " Font-Bold="true" Font-Size="Medium"></asp:Label>  <asp:Label ID="lblTregistered" runat="server" Text="" Font-Bold="true" Font-Size="Medium"></asp:Label>
    <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Submitted - " Font-Bold="true" Font-Size="Medium"></asp:Label>  <asp:Label ID="lblsubmitted" runat="server" Text="" Font-Bold="true" Font-Size="Medium"></asp:Label>
<br /><br />
    <asp:Label ID="Label4" runat="server" Text="Not Submitted - " Font-Bold="true" Font-Size="Medium"></asp:Label>  <asp:Label ID="lblnotsubmitted" runat="server" Text="" Font-Bold="true" Font-Size="Medium"></asp:Label>
    </div>

</asp:Content>

