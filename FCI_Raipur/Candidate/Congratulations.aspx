<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="Congratulations.aspx.cs" Inherits="Candidate_Congratulations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
         
            <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="formLabelTxt"><span style="font-weight:bold; color:Black;">CONGRATULATIONS</span></div>

                </div>
                                 </div>


                                 <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="formLabelTxt">Your Login & Password is as follows:</div>
              <br />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
         
                
            </div>
             <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>
          </div>


          <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="formLabelTxt">Login Id</div>
              <br />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
         
                 <div class="formLabelTxt"><asp:Label ID="lblloginid" runat="server" Text="" style="color:Black; font-weight:bold"></asp:Label></div>
            </div>
             <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>
          </div>
          <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="formLabelTxt">Password</div>
              <br />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
         
                 <div class="formLabelTxt"><asp:Label ID="lblpassword" runat="server" Text="" style="color:Black;font-weight:bold"></asp:Label></div>
            </div>
             <div class="col-xs-12 col-sm-12 col-md-1">
              <div class="formLabelTxt"></div>
              <br />
            </div>
          </div>



<div class="row">
                                 <div class="col-xs-12 col-sm-12 col-md-4">
            
            </div>
                                 <div class="col-xs-12 col-sm-12 col-md-2">
              <asp:Button ID="btnSubmit" runat="server" Text="PROCEED"  OnClick="btnSubmit_Click" BackColor="#3F8B3F" ForeColor="White"    class="btn btn-lg btn-primary btn-block" />
            </div>
                   <div class="col-xs-12 col-sm-12 col-md-2">
              <asp:Button ID="btnexit" runat="server" Text="EXIT"  BackColor="#3F8B3F" class="btn btn-lg btn-primary btn-block"
                     ForeColor="White"  
                     onclick="btnexit_Click" />
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4">
            
            </div>
           
          </div>
</asp:Content>

