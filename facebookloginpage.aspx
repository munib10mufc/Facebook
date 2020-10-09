
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facebookloginpage.aspx.cs" Inherits="facebook.facebookloginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">


    <title>Facebook </title>
    <link rel="stylesheet" href="css/facebookloginpage.css" type="text/css" />
    <link rel="stylesheet" href="css/alertify.core.css" />
    <link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
    <script src="Scripts/mainjsfile.js"></script>
    <script src="Scripts/ownalertifyfunctions.js"></script>
    <script src="Scripts/alertify.js" type="text/javascript"></script>
    <script src="Scripts/jquery-2.1.1.min.js" type="text/javascript"></script>


</head>
<body>

    <div id="up">


        <h1 id="fblogo">facebook
	 <a href="SignUp.aspx">
         <image src="images/signup1.png" alt="sign" style="width: 66px; height: 27px"></image>
     </a>
        </h1>



    </div>
    </br>
</br>
</br>

    <div id="bdy">


        <div id="bdy1" runat="server">

            <div id="head">
                <h2>Facebook Login
                </h2>

            </div>

            <div id="yellowbox">
                You must log in to continue

            </div>


            <div>
                <form runat="server">
                    <div id="errormsg" runat="server"></div>
                    <label for="email" id="emailorphone" runat="server" class="email">Email or Phone:</label>
                    &nbsp;&nbsp;


                    <input type="text" id="checkbox" tabindex="1" runat="server">
                    </br>
                    <div id="rightemail" runat="server" visible="false">
                    <asp:Label  id="rightemailtext" runat="server" Visible="false" ></asp:Label>
                        </div>
</br>               
                    <label for="pass" id="pass">Password:</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="password" name="pass" id="checkbox1" maxlength="8" tabindex="1" runat="server">
               
                </br>
                    </br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                <input type="checkbox" name="login" value="login" />
                <label style="cursor: pointer; color: #333; font-family: 'lucida grande'; font-size: 12px;"><font color="#ffffff"></font>Keep me logged in</label>
                </br>
</br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <asp:ImageButton ID="loginImage" OnClick="logintry" runat="server" AlternateText="Login" ImageUrl="images/login1.png" />

                &nbsp;&nbsp;
                    
or
&nbsp;
	<strong>
        <a href="SignUp.aspx" rel="nofollow">
            <font style="color: #3b5998; font-size: 13px">
	Sign up for Facebook
	</font>
        </a>
    </strong>
                </br>
	</br>
	
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<strong>
        <a href="FindYourAccount.aspx">
            <font style="color: #3b5998; font-size: 13px">
	Forgot your password?
	</font>
        </a>
    </strong>
                </form>
            </div>


        </div>
        <div id="bdy2">
            <a href="DummyPage.aspx" title="Urdu">اردو</a> &nbsp;&nbsp; <a href="DummyPage.aspx"
                title="English(US)">English(US)</a> &nbsp;&nbsp; <a href="DummyPage.aspx"
                    title="Spanish">Espanol</a> &nbsp;&nbsp; <a href="DummyPage.aspx" title="Portuguese(Brazil)">Portuguese(Brasil)</a> &nbsp;&nbsp; <a href="DummyPage.aspx" title="French(France)">Francais(France)</a> &nbsp;&nbsp; <a href="DummyPage.aspx" title="German">Deutsch</a> &nbsp;&nbsp; <a href="DummyPage.aspx" title="Italian">Italiano</a>
            &nbsp;&nbsp; <a href="DummyPage.aspx" title="Arabic">العربية</a> &nbsp;&nbsp;
                <a href="DummyPage.aspx" title="Hindi">हिन्दी</a> &nbsp;&nbsp; <a href="DummyPage.aspx"
                    title="Simplified Chinese (China)">中文(简体)</a>
            &nbsp;&nbsp;
					
					<a class="More" title="Show more languages" href="#" role="button" tabindex="0">…</a>


        </div>

        <div id="bordr">
        </div>
        <div class="foot">

            <a href="DummyPage.aspx" title="Check out Facebook Mobile.">Mobile</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                title="Find anyone on the web.">Find Friends</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                    title="Embed a Facebook badge on your website.">Badges</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="DummyPage.aspx" title="Browse our people directory.">People</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DummyPage.aspx" title="Browse our pages directory.">
                        Pages</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Check out popular places on Facebook.">Places</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DummyPage.aspx" title="Check out Facebook games.">
                                Games</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Browse our places directory.">Locations</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Read our blog, discover the resource center, and find job opportunities.">About</a> &nbsp;&nbsp;&nbsp;
  
        </div>

        <div class="foot">

            <a href="DummyPage.aspx"
                title="Advertise on Facebook.">Create Ad</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                    title="Create a Page">Create Page</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                        title="Develop on our platform.">Developers</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                            title="Make your next career move to our awesome company.">Careers</a>
            &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx" title="Learn about your privacy and Facebook.">Privacy</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                title="Learn about cookies and Facebook.">Cookies</a> &nbsp;&nbsp;&nbsp; <a href="DummyPage.aspx"
                    accesskey="9" title="Review our terms and policies.">Terms</a> &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="DummyPage.aspx" accesskey="0" title="Visit our Help Center.">Help</a> &nbsp;&nbsp;&nbsp;
        </div>



        <div class="foot">
            <span>Facebook &copy 2014</span> &middot; <a href="DummyPage.aspx" title="Use Facebook in another language." role="button">English (US)</a>


        </div>

    </div>

    </div>
</body>
</html>
