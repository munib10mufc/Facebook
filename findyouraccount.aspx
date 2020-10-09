<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="findyouraccount.aspx.cs" Inherits="facebook.findyouraccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <title>Find Your Account </title>
    <link rel="stylesheet" href="css/FindYourAccount.css" type="text/css" />
	<link rel="stylesheet" href="css/alertify.css" type="text/css" />
	<link rel="stylesheet" href="css/alertify.core.css" />
	<link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
	<script src="Scripts/mainjsfile.js"></script>	
	<script src="Scripts/ownalertifyfunctions.js"></script>
	<script src="Scripts/alertify.js" type="text/javascript" ></script>
	<script src="Scripts/jquery-2.1.1.min.js" type="text/javascript" ></script>
</head>
<body>
   
<div id="up">

    <div id="upleft">
	
	 </br>
	 </br>
	 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	 <a id="logo" href="facebookloginpage.aspx"><img src="images/logo2.png" height=66px width=230px/></a>
	
	</div>

	
	<div id="upright">
	
	
	 </br>
		</br>
		<p style="color:White;font-size:x-small;font-family:arial;">
		&emsp;&nbsp;
		Email or phone
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
		Password
		</p>
		&emsp;
		<input type="text" name="usermame"  class="checkboxcss">
		&emsp;
		<input type="password" name="passwrd" class="checkboxcss"/>
		&nbsp;&nbsp;&nbsp;
		<img src="images/login1.png" style="height=20px ;margin-top=10px"/>
		
		<p style="color:White;font-size:x-small;font-family:arial; cursor:pointer">
		</br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="keepLogged" value="login" >
		&nbsp;
		Keep me logged in
		</input>
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
		<a href="FindYourAccount.aspx" >
		<font color="white">
		Forgot your password?
		</font>
		</a>
		</p>
		</div>
</div>

<div id="bdy">


<div id="bdy1">

<div id="head">
<h2>
    Find Your Account
</h2>
</div>

<div id="text">
Email, Phone, Username or Full Name:
</div>


<div id="mailandtextbox">
<form>
<span id="mail">
<img  src="images/mail.jpg" alt="" width="32" height="32">
</span>

<input id="checkbox1122" type="text"  name="email" class="box">


</form>
</div>



<div id="ftrOfBdy1">

<a href="Account.aspx">
<font color="#3b97d0">
I can't identify my account
</font>
</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<img  class="mousehover" src="images/search.png" alt="" width="54" height="24px">
<img  class="mousehover" src="images/cancel.png" alt="" width="54" height="26px">







</div>





</div>

<div id="bordr">

</div>

<div class="foot">

 <a href="DummyPage.aspx" title="Check out Facebook Mobile.">Mobile</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                    title="Find anyone on the web.">Find Friends</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                        title="Embed a Facebook badge on your website.">Badges</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="DummyPage.aspx" title="Browse our people directory.">
                    People</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DummyPage.aspx" title="Browse our pages directory.">
                        Pages</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Check out popular places on Facebook.">
                            Places</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DummyPage.aspx" title="Check out Facebook games.">
                                Games</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Browse our places directory.">
                                    Locations</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Read our blog, discover the resource center, and find job opportunities.">
                                        About</a> &nbsp;&nbsp;&nbsp;
  
  </div>
  
  <div class="foot">
  
 <a href="DummyPage.aspx"
                    title="Advertise on Facebook.">Create Ad</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                        title="Create a Page">Create Page</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                            title="Develop on our platform.">Developers</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                                title="Make your next career move to our awesome company.">Careers</a>
                &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Learn about your privacy and Facebook.">
                    Privacy</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                        title="Learn about cookies and Facebook.">Cookies</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                            accesskey="9" title="Review our terms and policies.">Terms</a> &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="DummyPage.aspx" accesskey="0" title="Visit our Help Center.">
                    Help</a> &nbsp;&nbsp;&nbsp;
  </div>
  
  
  
  <div class="foot">
  <span>Facebook &copy 2014</span> &middot; <a href="DummyPage.aspx" title="Use Facebook in another language." role="button">English (US)</a>
  
  
  </div>

</div>

</div>

</div>

</body>
</html>
