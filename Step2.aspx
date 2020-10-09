<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Step2.aspx.cs" Inherits="facebook.Step2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <link rel="stylesheet" href="css/StepsAfterSignUp.css" type="text/css" />
    <link rel="stylesheet" href="alertify.css" type="text/css" />
    <link rel="stylesheet" href="css/alertify.core.css" />
    <link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
    <script src="Scripts/mainjsfile.js"></script>
    <script src="Scripts/alertify.js" type="text/javascript"></script>
    <script src="Scripts/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="Scripts/Step3.js" type="text/javascript"></script>

    <title>Facebook</title>
</head>
<body>
    <form id="myform" runat="server">
        <div id="up">
        </div>

        <div id="body">

            <div id="Body1">
                <br />

                <h3 style="color: black; font-family: Arial;">&emsp; Fill out your profile info</h3>
                <font style="color: #9197a3; font-size: small; font-weight: bold; font-family: arial;">
              &nbsp;&emsp;
           This information will help you find your friends on Facebook.
             </font>
                <br>
                <br>
                <br />
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <font style="color: #666; font-size: small; font-family: arial;">
            Work Place
        </font>
                &emsp;
        <input id="Text1" type="text" runat="server" placeholder="&nbsp;&nbsp; Work" style="width: 200px; height: 20px;" />

                <br />
                <br />
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
        <font style="color: #666; font-size: small; font-family: arial;">
            Education
        </font>
                &emsp;&nbsp;
        <input id="Text2" type="text" runat="server" placeholder="&nbsp;&nbsp; Education" style="width: 200px; height: 20px;" />

                <br />
                <br />
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <font style="color: #666; font-size: small; font-family: arial;">
            Current City
        </font>
                &nbsp;&nbsp;&nbsp;
        <input id="Text3" type="text" runat="server" placeholder="&nbsp;&nbsp; Current City" style="width: 200px; height: 20px;" />
                <br />
                 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font style="color: #666; font-size: small; font-family: arial;">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            HomeTown&nbsp;&nbsp;&nbsp;
        </font>&nbsp;&nbsp;
        <input id="Text4" type="text" runat="server" placeholder="&nbsp;&nbsp; Home Town" style="width: 200px; height: 20px;" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font style="color: #666; font-size: small; font-family: arial;">
            Mobile No
        </font>
                &emsp;&nbsp;&nbsp;
        <input id="Text5" type="text" runat="server" placeholder="&nbsp;&nbsp; Mobile No" style="width: 200px; height: 20px;" /><br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color: #666; font-size: small; font-family: arial;"> Religion&nbsp;&nbsp;&nbsp;
        </font>&emsp;&nbsp;&nbsp;
        <input id="Text6" type="text" runat="server" placeholder="&nbsp;&nbsp; Religion" style="width: 200px; height: 20px;" />
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
       
                <asp:ImageButton ID="submit1" runat="server" ImageUrl="~/images/confirm.png" OnClick="insertvalues" />
            </div>
        </div>
    </form>
</body>
</html>
