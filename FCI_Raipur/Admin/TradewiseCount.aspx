<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TradewiseCount.aspx.cs" Inherits="Admin_TradewiseCount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Tradename" HeaderText="Trade Name"  SortExpression="Tradename" />
            <asp:BoundField DataField="Count1" HeaderText="First Preferrence"  SortExpression="Tradename" />
              <asp:BoundField DataField="Count2" HeaderText="Second Preferrence"  SortExpression="Tradename" />
                <asp:BoundField DataField="Count3" HeaderText="Third Preferrence"  SortExpression="Tradename" />
        </Columns>
             
       
    </asp:GridView>
</asp:Content>

