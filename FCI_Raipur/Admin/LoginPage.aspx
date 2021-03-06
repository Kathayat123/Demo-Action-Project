<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Admin_LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">

        function validatecontrols() {
            debugger;
            var txtUserName = document.getElementById("txtUserId").value;
            var txtPassword = document.getElementById("txtPassword").value;
            var div1 = document.getElementById("div1");

            if (txtUserName == '' || txtPassword == '') {
                alert('Please enter User ID and Password.');
                return false;
            }

        }

    </script>

    <div class="container">
        <div class="login-container">
            <div id="output"></div>
            <%--<div class="avatar"></div>--%>
            <asp:Image runat="server" ID="imag" ImageUrl="~/Admin/securedlogin.png" />
            <div class="form-box">
                <form   runat="server">
                    <input name="UserId" type="text" runat="server" id="txtUserId" placeholder="User ID" />
                    <input name="Password" type="password" runat="server" id="txtPassword" placeholder="Password" />
                    <br />
                    <br />
                    <%--<button class="btn btn-info btn-block login" onclick="validate();" style="background-color: #39B3D7; color: white; width: 200px" type="submit">Login</button>--%>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" OnClientClick="return validatecontrols();" Style="background-color: #39B3D7; color: white; width: 200px" Text="Login" />
                </form>
            </div>
        </div>

    </div>
    <style>
        body {
            background: #eee url(http://subtlepatterns.com/patterns/sativa.png);
        }

        html, body {
            position: relative;
            height: 100%;
        }

        .login-container {
            position: relative;
            width: 300px;
            margin: 80px auto;
            padding: 20px 40px 40px;
            text-align: center;
            background: #fff;
            border: 1px solid #ccc;
        }

        #output {
            position: absolute;
            width: 300px;
            top: -75px;
            left: 0;
            color: #fff;
        }

            #output.alert-success {
                background: rgb(25, 204, 25);
            }

            #output.alert-danger {
                background: rgb(228, 105, 105);
            }


        .login-container::before, .login-container::after {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            top: 3.5px;
            left: 0;
            background: #fff;
            z-index: -1;
            -webkit-transform: rotateZ(4deg);
            -moz-transform: rotateZ(4deg);
            -ms-transform: rotateZ(4deg);
            border: 1px solid #ccc;
        }

        .login-container::after {
            top: 5px;
            z-index: -2;
            -webkit-transform: rotateZ(-2deg);
            -moz-transform: rotateZ(-2deg);
            -ms-transform: rotateZ(-2deg);
        }

        .avatar {
            width: 100px;
            height: 100px;
            margin: 10px auto 30px;
            border-radius: 100%;
            border: 2px solid #aaa;
            background-image: url('~/Admin/securedlogin.png');
        }

        .form-box input {
            width: 100%;
            padding: 10px;
            text-align: center;
            height: 40px;
            border: 1px solid #ccc;
            
            background: #fafafa;
            transition: 0.2s ease-in-out;
        }

            .form-box input:focus {
                outline: 0;
                background: #eee;
            }

            .form-box input[type="text"] {
                border-radius: 5px 5px 0 0;
              
            }

            .form-box input[type="password"] {
                border-radius: 0 0 5px 5px;
                border-top: 0;
            }

        .form-box button.login {
            margin-top: 15px;
            padding: 10px 20px;
        }

        .animated {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        @-webkit-keyframes fadeInUp {
            0% {
                opacity: 0;
                -webkit-transform: translateY(20px);
                transform: translateY(20px);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                -webkit-transform: translateY(20px);
                -ms-transform: translateY(20px);
                transform: translateY(20px);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0);
                -ms-transform: translateY(0);
                transform: translateY(0);
            }
        }

        .fadeInUp {
            -webkit-animation-name: fadeInUp;
            animation-name: fadeInUp;
        }
    </style>

</body>


</html>
