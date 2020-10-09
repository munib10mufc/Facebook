<%@ Page Title="" Language="C#" MasterPageFile="~/motheroffinal.Master" AutoEventWireup="true" CodeBehind="settings_.aspx.cs" Inherits="facebook_web.settings_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Facebook</title>
    <script src="jquery-1.11.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#id_1").click(function () {
                $("#id_1_1").show();
                $("#id_2_2").hide();
                $("#id_3_3").hide();
                $("#id_4_4").hide();
                $("#id_5_5").hide();
                $("#id_6_6").hide();
                $("#id_7_7").hide();
            });
            $("#id_2").click(function () {
                $("#id_2_2").show();
                $("#id_1_1").hide();
                $("#id_3_3").hide();
                $("#id_4_4").hide();
                $("#id_5_5").hide();
                $("#id_6_6").hide();
                $("#id_7_7").hide();
            });
            $("#id_3").click(function () {
                $("#id_3_3").show();
                $("#id_1_1").hide();
                $("#id_2_2").hide();
                $("#id_4_4").hide();
                $("#id_5_5").hide();
                $("#id_6_6").hide();
                $("#id_7_7").hide();
            });
            $("#id_4").click(function () {
                $("#id_4_4").show();
                $("#id_1_1").hide();
                $("#id_2_2").hide();
                $("#id_3_3").hide();
                $("#id_5_5").hide();
                $("#id_6_6").hide();
                $("#id_7_7").hide();
            });
            $("#id_5").click(function () {
                $("#id_5_5").show();
                $("#id_1_1").hide();
                $("#id_2_2").hide();
                $("#id_4_4").hide();
                $("#id_3_3").hide();
                $("#id_6_6").hide();
                $("#id_7_7").hide();
            });
            $("#id_6").click(function () {
                $("#id_6_6").show();
                $("#id_1_1").hide();
                $("#id_2_2").hide();
                $("#id_4_4").hide();
                $("#id_5_5").hide();
                $("#id_3_3").hide();
                $("#id_7_7").hide();
            });
            $("#id_7").click(function () {
                $("#id_7_7").show();
                $("#id_1_1").hide();
                $("#id_2_2").hide();
                $("#id_4_4").hide();
                $("#id_5_5").hide();
                $("#id_6_6").hide();
                $("#id_3_3").hide();
            });
        });
    </script>
    <script type="text/javascript">

        function check_data_name() {
            var char1, char2;
            char1 = document.getElementById('fname').value;
            char2 = document.getElementById('lname').value;

            if (char1 == "")
                alert("Please Enter your First Name");
            if (char2 == "")
                alert("Please Enter Your Last Name");
            l1 = char1.length;
            for (var i = 0; i < l1; i++) {
                if (char1[i] >= 'A' && char1[i] <= 'Z' || char1[i] >= 'a' && char1[i] <= 'z')
                { }
                else
                    alert("Please Enter Valid Alphabets In First Name");
            }
            l2 = char2.length;
            for (var i = 0; i < l2; i++) {
                if (char2[i] >= 'A' && char2[i] <= 'Z' || char2[i] >= 'a' && char2[i] <= 'z')
                { }
                else
                    alert("Please Enter Valid Alphabets In Last Name");
            }
        }
        function check_data_username() {
            var char1;
            char1 = document.getElementById('username').value;
            
            if (char1 == "")
                alert("Please Enter your User Name");
            l1 = char1.length;
            for (var i = 0; i < l1; i++) {
                if (char1[i] >= 'A' && char1[i] <= 'Z' || char1[i] >= 'a' && char1[i] <= 'z')
                { }
                else
                    alert("Please Enter Valid Alphabets In User Name");
            }
        }
        function check_data_password()
        {
        
            var char1, char2, char3;
            char11 = document.getElementById('ContentPlaceHolder1_pass1').value;
        
            char22 = document.getElementById('ContentPlaceHolder1_pass2').value;
            char33 = document.getElementById('ContentPlaceHolder1_pass3').value;

            if (char11 == "")
                alert('Enter your current password');
            if (char22 == "")
                alert("Please Enter Your new password");
            if (char33 == "")
                alert("Please retype new password");
            if (char22 != char33)
                alert('the new password does not match with retype password plz try again');
           
            }


    </script>



    <style>
        .mainfont {
         font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
           background-color:white;
        }
        #header {
        background-color:#375794;
             height: 70px;
            width: auto;
        
        
        }
         a {
            text-decoration:none;
        color:#375794;
            }
        #nav {
            float:left;
            background-color:white;
            position:relative;
            top:60px;
            left:200px;
            height:100px;
            width:150px;
            color:black;
            font-size:6px;   
        }
          
        #section {
            font-size:12px;
            height:100px;
            width:650px;
            position:relative;
            top:-500px;
            left:351px;
            background-color:white;
        }
        #footer {
        }
        .white_line_{
           margin:0px;
        }
        .h_cursor {
        cursor:pointer;
       
        
        }
        
        .h_padding {
            margin-top:25px;
            font-size:18px;
        }
        .l_padding {
        margin-left:25px;
        }
        .line {
            margin-top:20px;
            margin-bottom:20px;
         border-bottom: 1px solid #ededed;
         
        }
        .sec_line {
        margin-top:10px;
        margin-bottom:10px;
        margin-left:-5px;
        margin-right:-5px;
        border-bottom:1px solid #ededed;
        }
        .border_line1 {
            position:relative;
            left:340px;
            height:550px;
            width:10px;
            border-right: 1px solid #ededed;
        }
        .border_line2 {
            position:relative;
            top:-335px;
            left:670px;
            height:550px;
            width:10px;
            border-right: 1px solid #ededed;
        }
        .border_line3 {
            position:relative;
            top:-135px;
            left:350px;
            height:10px;
            width:708px;
            border-bottom: 1px solid #ededed;
        }
        .a_left {
            text-align:left;
            
        }
        .a_right {
            text-align:right;
            margin-top:-15px;
        }
        #id_1 {
        }
            #id_1:hover {
            background-color:	#f7f7f7;
            }
        #id_1_1 {
            cursor:auto;
            background-color:#f2f2f2;
        }
        #id_2 {
        }
         #id_2:hover {
            background-color:	#f7f7f7;
            }
        #id_2_2 {
             cursor:auto;
           
            background-color:#f2f2f2;
        }
        #id_3 {
        }
         #id_3:hover {
            background-color:	#f7f7f7;
            }
        #id_3_3 {
             cursor:auto;
            background-color:#f2f2f2;
        }
        #id_4 {
        }
         #id_4:hover {
            background-color:	#f7f7f7;
            }
        #id_4_4 {
            cursor:auto;
            background-color:#f2f2f2;
        }
        #id_5 {
        }
         #id_5:hover {
            background-color:	#f7f7f7;
            }
        #id_5_5 {
            cursor:auto;
            background-color:#f2f2f2;
        }
        #id_6 {
        }
         #id_6:hover {
            background-color:	#f7f7f7;
            }
        #id_6_6 {
            cursor:auto;
            background-color:#f2f2f2;
        }
        #id_7 {
        }
         #id_7:hover {
            background-color:	#f7f7f7;
            }
        #id_7_7 {
            cursor:auto;
            background-color:#f2f2f2;
        }
        .hide {
        display:none;
        text-align:center;
        }
        .left_text {
            margin-left:-20px;
        }
        .button_save {
            margin-left:-20px;
            color: white;
            font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
            font-size: 11px;
            border-color: #29447e #29447e #1a356e;
            border: 1px solid #999;
            background-repeat: no-repeat;
            background-size: auto;
            background-position: 0 -49px;
            background-color: #5b74a8;
            cursor: pointer;
            display: inline-block;
            font-size: 11px;
            font-weight: bold;
            line-height: 13px;
            padding: 2px 6px;
            text-align: center;
            text-decoration: none;
            vertical-align: top;
            white-space: nowrap;
            -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .1);
            
           }
        .button_cancel {
          
            color: black;
            font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
            font-size: 11px;
            border-color: #29447e #29447e #1a356e;
            border: 1px solid #999;
            background-repeat: no-repeat;
            background-size: auto;
            background-position: 0 -49px;
            background-color: white;
            cursor: pointer;
            display: inline-block;
            font-size: 11px;
            font-weight: bold;
            line-height: 13px;
            padding: 2px 6px;
            text-align: center;
            text-decoration: none;
            vertical-align: top;
            white-space: nowrap;
            -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .1);
            
           }
           #footer {
        background-color:white;
        color:#0e385f;
        height:auto;
        font-size:12px;
         font-family: 'Freight Sans Bold', 'lucida grande',tahoma,verdana,arial,sans-serif !important;
            font-weight: normal !important;
            text-rendering: optimizelegibility;
           position:relative;
           top:-135px;
           left:350px;

        cursor:pointer;
        }
              .footer_margin {
        margin-right:20px;

        }
        .top_and_end_lines {
                margin-top:10px;
        margin-bottom:10px;
        margin-left:-5px;
        margin-right:-5px;
        border-bottom:1px solid #999;
        
        }
        .nav_font {
             font-size:11px;
        }
        .img1 {
            position:relative;
            top:8px;
            left:0px;
        }
        .img2 {
              position:relative;
            top:4px;
            left:0px;
        }
        .img3 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img4 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img5 {
              position:relative;
            top:6px;
            left:0px;
        }
        .img6 {
              position:relative;
            top:8px;
            left:-2px;
        }
        .img7 {
              position:relative;
            top:8px;
            left:2px;
        }
        .img8 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img9 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img10 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img11 {
              position:relative;
            top:8px;
            left:0px;
        }
        .img12 {
              position:relative;
            top:8px;
            left:0px;
        }
        #fname {
        }
        #lname {
        }
        #username {
        }
        
        #pass2 {
        }
        #pass3 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="white_line_">
   
    <div class="mainfont">
    
      <%--  <div id="header">
        </div>--%>
        <div id="nav">
          
            <img class="h_cursor img1"  src="images/general_s.png" />
           <b class="h_cursor nav_font">General</b><br />
             <img class="h_cursor img2"  src="images/security_s.png" />
           <b class="h_cursor nav_font">Security</b><br /> 
            <div class="line"></div>
                <img class="h_cursor img3"  src="images/privacy_s.png" /> 
            <b class="h_cursor nav_font">Privacy</b><br />
            <img  class="h_cursor img4" src="images/timeline and tagging_s.png" />
            <b class="h_cursor nav_font">Timeline and Tagging</b><br />
            <img class="h_cursor img5"  src="images/blocking_s.png" />
            <b class="h_cursor nav_font">Blocking</b><br />

            <div class="line"></div>
            <img class="h_cursor img6"  src="images/notifications_s.png" />
            <b class="h_cursor nav_font">Notifications</b><br />
            <img class="h_cursor img7"  src="images/mobile_s.png" />
            <b class="h_cursor nav_font">&nbsp Mobile</b><br />
            <img  class="h_cursor img8" src="images/followers_s.png" />
            <b class="h_cursor nav_font">followers</b><br />

            <div class="line"></div>
            <img  class="h_cursor img9" src="images/apps_s.png" />
            <b class="h_cursor nav_font">Apps</b><br />
            <img class="h_cursor img10"  src="images/adss_s.png" />
            <b class="h_cursor nav_font">Ads</b><br />
            <img class="h_cursor img11"  src="images/payments_s.png" />
            <b class="h_cursor nav_font">Payments</b><br />
            <img  class="h_cursor img12"  src="images/support dashboard_s.png" />
            <b class="h_cursor nav_font">Support Dashboard</b><br />

        </div>
       
        <div class="border_line1" ></div>

        <div id="section" class="l_padding">

            <h1 class="h_padding">General Acount Settings</h1>
            <div class="top_and_end_lines"></div>
            <div class="h_cursor" id="id_1">

                <div class="a_left">Name</div>
                <div class="a_right">Edit</div>
                <div class="hide" id="id_1_1">
                    <br /><br />
                    First &nbsp<input type="text" id="fname"     /><br /><br />
                    Middle<input type="text" placeholder="Optional" /><br /><br />
                    Last &nbsp<input type="text"  id="lname"   /><br /><br />
                    <div class="left_text">
                    <b>Please note:</b> You won't be able to change your name within the next 60 <br />days. Make sure not to add any unusual capitalization, punctuation,<br /> characters or random words.<a href="http://www.w3schools.com/html/" style="color:#8b9dc3"> Learn more.</a>
                    </div>
                    <br /><br />
                    Alternate name &nbsp <input  type="text" placeholder="Optional" />[?] <br />
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:CheckBox ID="chkIsStudent" runat="server" />Inlcude this on my timeline<br /><br />
    
                   <div  >
                      <asp:Button ID="Button1"  CssClass="button_save"  Text="Save changes" OnClientClick="javascript:check_data_name()" runat="server" />
                        <asp:Button ID="Button2"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                    </div>
                </div>
                
            </div>
            <div class="sec_line"></div>
            <div  class="h_cursor" id="id_2">
                 <div class="a_left">Username</div>
                <div class="a_right">Edit</div>
                 <div class="hide" id="id_2_2">
                     <br /><br />
                    <div class="left_text">
                     Your public username is the same as your Timeline address:
                     </div><br /><br />
                     Username &nbsp <input type="text"   id="username" /><br /><br />
                     <div class="left_text">
                         Note: Your username can only be changed once and should include your real name. [?]
                     </div>
                     <br /><br />
                       <div  class="left_text">
                      <asp:Button ID="Button3"  CssClass="button_save"  Text="Save changes" OnClientClick="javescript:check_data_username()" runat="server" />
                        <asp:Button ID="Button4"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                    </div>
                     
                  </div>
            </div>
             <div class="sec_line"></div>
           
             <div  class="h_cursor" id="id_3">
                 <div class="a_left">Email</div>
                <div class="a_right">Edit</div>
                   <div  class="hide" id="id_3_3">
                       <br />
                       <b>Primary contact</b>&nbsp <asp:RadioButton ID="rdMale" GroupName="Gender" runat="server" />&nbsp Khyzar_asghar@hotmail.com<br /><br />
                       <div class="left_text">
                           <asp:CheckBox ID="CheckBox1" runat="server" />Use your Facebook email: khyzar.asghar@facebook.com<br />Your Facebook email is based on your username.
                                Emails sent to this address are forwarded to your primary email.<br /><br />
                           <asp:CheckBox ID="CheckBox2" runat="server" />Allow friends to include my email address in <a href="http://www.w3schools.com/html/" style="color:#8b9dc3">Download Your Information</a><br /><br />
                            <asp:Button ID="Button5"  CssClass="button_save"  Text="Save changes" runat="server" />
                        <asp:Button ID="Button6"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                    
                       </div>
                   </div>
             
             </div>
                  <div class="sec_line"></div>
            <div class="h_cursor" id="id_4">
                 <div class="a_left">Password</div>
                <div class="a_right">Edit</div>
                
                <div class="hide" id="id_4_4"><br />
                      Current &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    <asp:TextBox id="pass1" TextMode="password"    runat="server"></asp:TextBox><br /><br />
                      New &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <asp:TextBox id="pass2" TextMode="password"   runat="server"></asp:TextBox><br /><br />
                      Re-type new &nbsp  <asp:TextBox id="pass3" TextMode="password"    runat="server"></asp:TextBox><br /><br />
                    <div class="left_text">
                           <asp:Button ID="Button7"  CssClass="button_save"  Text="Save changes"  OnClientClick="javascript:check_data_password()" runat="server" />
                        <asp:Button ID="Button8"  CssClass="button_cancel"  Text="Cancel" runat="server" />

                    </div>

                </div>

            </div>
           <div class="sec_line"></div>
            <div class="h_cursor" id="id_5"  >
                <div class="a_left">Network</div>
                <div class="a_right">Edit</div>
                
                <div class="hide" id="id_5_5">
                        <div class="left_text">
                            <br />
                            Your primary network will appear next to your name.<br /><br /><br />
                            <asp:Button ID="Button9"  CssClass="button_save"  Text="Save changes" runat="server" />
                        <asp:Button ID="Button10"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                        </div>
                    </div>

            </div>
            <div class="sec_line"></div>
            <div class="h_cursor" id="id_6">
                <div class="a_left">Language</div>
                <div class="a_right">Edit</div>
                <div class="hide"  id="id_6_6">
                    <br />
                    Choose primary &nbsp   
                    <asp:DropDownList ID="DropDownList2" Height="24px" runat="server">
            <asp:ListItem Text="English (US)" Value="0"></asp:ListItem>
            <asp:ListItem Text="English (UK)" Value="1"></asp:ListItem>
           </asp:DropDownList><br /><br />
                    <div class="left_text">

                            
                            <asp:Button ID="Button11"  CssClass="button_save"  Text="Save changes" runat="server" />
                        <asp:Button ID="Button12"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                        </div>

                </div>


            </div>
            <div class="sec_line"></div>
            <div class="h_cursor" id="id_7">
                <div class="a_left">Temperature</div>
                <div class="a_right">Edit</div>
                <div class="hide"  id="id_7_7">

                                      <br />
                    Choose Scale &nbsp   
                    <asp:DropDownList ID="DropDownList1" Height="24px" runat="server">
            <asp:ListItem Text="Celsius" Value="0"></asp:ListItem>
            <asp:ListItem Text="Fahrenheit" Value="1"></asp:ListItem>
           </asp:DropDownList><br /><br />
                    <div class="left_text">

                            
                            <asp:Button ID="Button13"  CssClass="button_save"  Text="Save changes" runat="server" />
                        <asp:Button ID="Button14"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                        </div>


                    </div>
               
            </div>
            <div class="top_and_end_lines"></div><br />
            <div class="left_text">

               <a href="http://www.w3schools.com/html/" style="color:#8b9dc3"> Download a copy</a> of your Facebook data.

            </div>
                   <div class="border_line2"></div>
                 
    </div>
         <div class="border_line3"></div>
        
          <div id="footer">
      
                
            <br /><br />
            <a href="http://www.w3schools.com/html/"  class="footer_margin">About</a><a href="http://www.w3schools.com/html/" class="footer_margin">Create Ad</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Create Page</a>	<a href="http://www.w3schools.com/html/" class="footer_margin">Developers</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Careers</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Privacy</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Cookies</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Terms</a><a href="http://www.w3schools.com/html/" class="footer_margin">	Help</a>

            <br /><br /><br />
            Facebook © 2014
            <br />
          <a href="http://www.w3schools.com/html/" class="footer_margin">  English (UK)</a>
        </div>
      

    </div>
   
</body>

</asp:Content>
