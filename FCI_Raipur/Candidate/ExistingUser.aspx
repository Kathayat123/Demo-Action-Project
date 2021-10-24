<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage1.master" AutoEventWireup="true" CodeFile="ExistingUser.aspx.cs" Inherits="Candidate_ExistingUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-9 col-sm-8 col-xs-2">
    
      
    
  </div>
   <div class="col-md-9 col-sm-8 col-xs-8">
   <h3>Login</h3>

  
      <form class="form-signin">
      <asp:Label ID="LabelErrorMessage" runat="server" EnableClientScript="true" Font-Bold="true" ForeColor="Red"></asp:Label>
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <span style="font-weight:bold;color:green">Application ID</span>
         
        <asp:TextBox ID="TextBoxLoginID"  runat="server" CssClass="form-control" Width ="40%" placeholder="APPLICATION ID" ></asp:TextBox> 
        <br /> 
        <br />
        <label for="inputPassword" class="sr-only">Password</label>
          <span style="font-weight:bold;color:green">DOB (ddmmyyyy format) </span>
       <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="form-control" Width ="40%"  TextMode="Password"
                                         placeholder="PASSWORD" ></asp:TextBox>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <div class="checkbox">
   <%--       <label>
           <a href="ForgotPassword.aspx">Forgot Password?</a>
          </label>--%>
        </div>
        

<asp:Button  ID="ImgBtnLogin" runat="server" Text ="Sign in"  BackColor="#3F8B3F"
                                  class="btn btn-lg btn-primary btn-block"  Width ="40%"  UseSubmitBehavior="false" ValidationGroup="CandidateLogin"  OnClick="ImgBtnLogin_Click"
                                       />
      </form>
   </div>
      <div class="col-md-9 col-sm-8 col-xs-2">
   </div>
   
</asp:Content>

