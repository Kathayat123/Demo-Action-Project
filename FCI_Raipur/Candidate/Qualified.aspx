<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPageNew.master" AutoEventWireup="true" CodeFile="Qualified.aspx.cs" Inherits="Candidate_Qualified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;" oncontextmenu="return false;" >
        <table style="width:100%;text-align:center;">
            <tr>
                <td style="font-weight:bold;color:black;font-size:16px">Shortlisted Candidates for Physical Endurance Test for Watch and Ward Recruitment -2017<br /> Food corporation of India , Raipur – CG Region
                    <br />
                    The date for Physical Endurance Test & download of Admit Card will be announced shortly
                    <br />
                    शारीरिक दक्षता परीक्षा की तिथि एवं प्रवेश पत्र जारी करने की तिथि जल्द ही घोषित की जावेगी |
</td>
            </tr>
            <tr>
                <td style="width:100%;font-family:Verdana;font-size:15px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%" HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <Columns>
                           
                                        <asp:BoundField DataField="Rollnumber" HeaderText="Roll Number">
                                                    <ItemStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" ForeColor="Black"/>
                                                    <HeaderStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" BackColor="#3a3a3a"
                                                        ForeColor="#FFFFFF"  />
                                                </asp:BoundField>
                           <asp:BoundField DataField="candidatename" HeaderText="Candidate Name">
                                                    <ItemStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" ForeColor="Black"/>
                                                    <HeaderStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" BackColor="#3a3a3a"
                                                        ForeColor="#FFFFFF"  />
                                                </asp:BoundField>
                               <asp:BoundField DataField="categoryName" HeaderText="Category">
                                                    <ItemStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" ForeColor="Black"/>
                                                    <HeaderStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" BackColor="#3a3a3a"
                                                        ForeColor="#FFFFFF"  />
                                                </asp:BoundField>
                                  <asp:BoundField DataField="DOB" HeaderText=" Date of Birth(YYYY-MM-DD)">
                                                    <ItemStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" ForeColor="Black"/>
                                                    <HeaderStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" BackColor="#3a3a3a"
                                                        ForeColor="#FFFFFF"  />
                                                </asp:BoundField>
                                  <asp:BoundField DataField="FatherName" HeaderText="Father's Name">
                                                    <ItemStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" ForeColor="Black"/>
                                                    <HeaderStyle BorderColor="Black"  Width="100px"  BorderWidth="1px" HorizontalAlign="Left" BackColor="#3a3a3a"
                                                        ForeColor="#FFFFFF"  />
                                                </asp:BoundField>
                   

                        </Columns>
                    
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

