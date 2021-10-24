<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="RegClose.aspx.cs" Inherits="Home_RegClose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <span style="font-size: 18px; color: black;">The Registration and Form Submission Process has been Closed.</span>
        <br />
        <br />
        <asp:Button ID="btnexit" runat="server" Text="EXIT" BackColor="#3F8B3F" Width="100px"
            ForeColor="White" class="btn btn-lg btn-primary btn-block" PostBackUrl="~/Home/ListofExam.aspx" />
    </center>
</asp:Content>

