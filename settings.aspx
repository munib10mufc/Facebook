<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="facebook_web.settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Facebook</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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
        #nav {
            float:left;
            background-color:white;
            position:relative;
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
            top:-550px;
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
            background-color:#dfe3ee;
        }
        #id_2 {
        }
        #id_2_2 {
             cursor:auto;
           
            background-color:#dfe3ee;
        }
        #id_3 {
        }
        #id_3_3 {
             cursor:auto;
            background-color:#dfe3ee;
        }
        #id_4 {
        }
        #id_4_4 {
            cursor:auto;
            background-color:#dfe3ee;
        }
        #id_5 {
        }
        #id_5_5 {
            cursor:auto;
            background-color:#dfe3ee;
        }
        #id_6 {
        }
        #id_6_6 {
            cursor:auto;
            background-color:#dfe3ee;
        }
        #id_7 {
        }
        #id_7_7 {
            cursor:auto;
            background-color:#dfe3ee;
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


    </style>
</head>
<body class="white_line_">
    <form id="form1" runat="server">
    <div class="mainfont">
    
        <div id="header">
        </div>
        <div id="nav">
           <h1 class="h_cursor">General</h1> 
           <h1 class="h_cursor">Security</h1> 
            <div class="line"></div>
            <h1 class="h_cursor">Privacy</h1>
            <h1 class="h_cursor">Timeline and Tagging</h1>
            <h1 class="h_cursor">Blocking</h1>

            <div class="line"></div>
            <h1 class="h_cursor">Notifications</h1>
            <h1 class="h_cursor">Mobile</h1>
            <h1 class="h_cursor">followers</h1>

            <div class="line"></div>

            <h1 class="h_cursor">Apps</h1>
            <h1 class="h_cursor">Ads</h1>
            <h1 class="h_cursor">Payments</h1>
            <h1 class="h_cursor">Support Dashboard</h1>

        </div>
       
        <div class="border_line1"></div>

        <div id="section" class="l_padding">

            <h1 class="h_padding">General Acount Settings</h1>
            <div class="sec_line"></div>
            <div class="h_cursor" id="id_1">

                <div class="a_left">Name</div>
                <div class="a_right">Edit</div>
                <div class="hide" id="id_1_1">
                    <br /><br />
                    First &nbsp<input type="text" /><br /><br />
                    Middle<input type="text" placeholder="Optional" /><br /><br />
                    Last &nbsp<input type="text" /><br /><br />
                    <div class="left_text">
                    <b>Please note:</b> You won't be able to change your name within the next 60 <br />days. Make sure not to add any unusual capitalization, punctuation,<br /> characters or random words.<a href="http://www.w3schools.com/html/" style="color:#8b9dc3"> Learn more.</a>
                    </div>
                    <br /><br />
                    Alternate name &nbsp <input  type="text" placeholder="Optional" />[?] <br />
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:CheckBox ID="chkIsStudent" runat="server" />Inlcude this on my timeline<br /><br />
    
                   <div  >
                      <asp:Button ID="Button1"  CssClass="button_save"  Text="Save changes" runat="server" />
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
                     Username &nbsp <input type="text" /><br /><br />
                     <div class="left_text">
                         Note: Your username can only be changed once and should include your real name. [?]
                     </div>
                     <br /><br />
                       <div  class="left_text">
                      <asp:Button ID="Button3"  CssClass="button_save"  Text="Save changes" runat="server" />
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
                
                <div class="hide" id="id_4_4">
                      Current &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   <input type="text" /><br /><br />
                      New &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" /><br /><br />
                      Re-type new &nbsp <input type="text" /><br /><br />
                    <div class="left_text">
                           <asp:Button ID="Button7"  CssClass="button_save"  Text="Save changes" runat="server" />
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
                    <asp:DropDownList ID="DropDownList2" Height="28px" runat="server">
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
                    <asp:DropDownList ID="DropDownList1" Height="28px" runat="server">
            <asp:ListItem Text="Celsius" Value="0"></asp:ListItem>
            <asp:ListItem Text="Fahrenheit" Value="1"></asp:ListItem>
           </asp:DropDownList><br /><br />
                    <div class="left_text">

                            
                            <asp:Button ID="Button13"  CssClass="button_save"  Text="Save changes" runat="server" />
                        <asp:Button ID="Button14"  CssClass="button_cancel"  Text="Cancel" runat="server" />
                        </div>


                    </div>
               
            </div>
            <div class="sec_line"></div><br />
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
    </form>
</body>
</html>
