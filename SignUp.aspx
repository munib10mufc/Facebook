<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="facebook.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <title>Sign Up </title>
    <link rel="stylesheet" href="css/SignUp.css" type="text/css" />
    <link rel="stylesheet" href="css/alertify.core.css" />
    <link rel="stylesheet" href="css/alertify.default.css" id="toggleCSS" />
    <script src="Scripts/mainjsfile.js"></script>
    <script src="Scripts/ownalertifyfunctions.js"></script>
    <script src="Scripts/alertify.js" type="text/javascript"></script>
    <script src="Scripts/jquery-2.1.1.min.js" type="text/javascript"></script>

</head>
<body>
    <form runat="server">
    <div id="up">

        <div id="upleft">

            <h1 id="fblogo">
                <a id="logo" href="facebookloginpage.aspx">
                    <img src="images/logo2.png" height="66px" style="width: 147px" /></a>

            </h1>

        </div>


        <div id="upright">
            </br>
		</br>
		<p style="color: White; font-size: x-small; font-family: arial;">
            &emsp;&nbsp;
		Email or phone
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
		Password
        </p>
            &emsp;
		<input type="text" name="usermame" id="checkbox" class="checkboxcss">
            &emsp;
		<input type="password" name="passwrd" id="checkbox1" class="checkboxcss" />
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

    <div id="center">

        <div id="centercontent">
            <h3>
                <font color="#333333" style="font-size: 36px; font-family: Freight Sans Bold;">
			 Sign up
			 </font>
            </h3>

            <font color="#38334b">It's free and always will be.</font>
            <asp:Label ID="criticalcheck" runat="server" Visible="true"></asp:Label>
            </br>
		     </br>
			 
		     <div class="reg">
                 <input type="text" data-type="text" id="contact_fname" runat="server" class="checkboxcss2 alphaonly" placeholder="&emsp;  First name" name="firstname" aria-label="First name" style="20px; height: 40px; width: 196px">
                 &nbsp;
				<input type="text" data-type="text" id="contact_lname" runat="server" class="checkboxcss2 alphaonly" placeholder=" &emsp; Last name" name="lastname" aria-label="Last name" style="20px; height: 40px; width: 196px">
             </div>

            <div class="reg">
                <input type="text" data-type="text" id="contact_email" runat="server" class="checkboxcss2" placeholder=" &emsp;  Email or mobile number" name="reg_email__" aria-required="1" aria-label="Email" style="20px; height: 42px; width: 401px">
            </div>


            <div class="reg">
                <input type="text" id="contact_Remail" data-type="text" runat="server" class="checkboxcss2" placeholder=" &emsp; Re-enter Email or mobile number" name="reg_email_confirmation__" aria-required="1" aria-label="Re-enter email" style="20px; height: 42px; width: 401px">
            </div>


            <div class="reg">
                <input type="password" id="contact_Password" runat="server" data-type="text" class="checkboxcss2" name="reg_passwd__" placeholder=" &emsp; New Password" aria-required="1" maxlength="8" aria-label="New password" style="20px; height: 42px; width: 401px">
            </div>


            <div class="reg">
                <font color="#141823">
				<h4>
				Birthday
				</h4>
				</font>
            </div>

            <select name="birthday_month" id="Month" runat="server">
                <option value="0" selected="1">Month</option>
                <option value="1">Jan</option>
                <option value="2">Feb</option>
                <option value="3">Mar</option>
                <option value="4">Apr</option>
                <option value="5">May</option>
                <option value="6">Jun</option>
                <option value="7">Jul</option>
                <option value="8">Aug</option>
                <option value="9">Sep</option>
                <option value="10">Oct</option>
                <option value="11">Nov</option>
                <option value="12">Dec</option>
            </select>
            <select name="birthday_day" id="Day" runat="server">
                <option value="0" selected="1">Day</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
            </select>
            <select name="birthday_year" id="Year" runat="server">
                <option value="0" selected="1">Year</option>
                <option value="2014">2014</option>
                <option value="2013">2013</option>
                <option value="2012">2012</option>
                <option value="2011">2011</option>
                <option value="2010">2010</option>
                <option value="2009">2009</option>
                <option value="2008">2008</option>
                <option value="2007">2007</option>
                <option value="2006">2006</option>
                <option value="2005">2005</option>
                <option value="2004">2004</option>
                <option value="2003">2003</option>
                <option value="2002">2002</option>
                <option value="2001">2001</option>
                <option value="2000">2000</option>
                <option value="1999">1999</option>
                <option value="1998">1998</option>
                <option value="1997">1997</option>
                <option value="1996">1996</option>
                <option value="1995">1995</option>
                <option value="1994">1994</option>
                <option value="1993">1993</option>
                <option value="1992">1992</option>
                <option value="1991">1991</option>
                <option value="1990">1990</option>
                <option value="1989">1989</option>
                <option value="1988">1988</option>
                <option value="1987">1987</option>
                <option value="1986">1986</option>
                <option value="1985">1985</option>
                <option value="1984">1984</option>
            </select>
            &emsp; <a href="DummyPage.aspx"><font color="#569bd7"></font>Why do I need
                                to provide my birthday?.</a>
            </br>
								</br>
							<input type="radio" id="genderf" runat="server" name="sex" value="1">
            <label>
                <font color="#141823"><b>Female</b></font>
            </label>
            &emsp;
                            <input type="radio" id="genderm" runat="server" name="sex" value="2">
            <label>
                <font color="#141823"><b>Male</b></font>
            </label>


            <p style="color: #777; font-size: 13px;">
                </br>
                                "By clicking Sign Up,you agree to our " <a href="LegalTerms.aspx" target="_blank">Terms</a> "and that you have read our " <a href="DataUsePolicy.aspx" target="_blank"
                                    rel="nofollow">Data Use Policy</a> "including our" <a href="DummyPage.aspx" target="_blank"
                                        rel="nofollow">Cookie Use</a> .
            </p>

            </br>
                            <asp:ImageButton ID="abc"  OnClick="ButtonClick5" ImageUrl="~/images/sign.png" runat="server" />

        </div>



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
        <span style="color: gray; font-weight: normal;">Facebook &copy 2014</span> &middot; <a href="DummyPage.aspx" title="Use Facebook in another language." role="button">English (US)</a>

    </div>
        </form>
</body>
</html>
