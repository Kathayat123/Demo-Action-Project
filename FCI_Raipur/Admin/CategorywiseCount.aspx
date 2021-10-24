<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CategorywiseCount.aspx.cs" Inherits="Admin_CategorywiseCount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="catName" HeaderText="Category Name"  />
            <asp:BoundField DataField="Counts" HeaderText="Count"  />
    
        </Columns>
             
       
    </asp:GridView>
</asp:Content>

