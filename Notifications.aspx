<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="facebook_web.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" 	media="all" href="friend_requests.css" />
<title>Notifications</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>

<div class="main_panel">

<div class="main_panel_heading"><br /> Your Notifications </div>
<div class="main_panel_notification_settings_pos"><a href="Timeline.aspx"> <temp class="main_panel_notification_settings_link">Notification Settings</temp>  
</a></div>
<hr class="hr_class5" />

<div class="get_notification_via">
Get Notification via: &nbsp<a href="Timeline.aspx">RSS</a>
</div><br /><br />

<div class="time_heading">Today</div>

<div class="notifications_panel"><img alt="img" class="notification_panel_img"  src="images/comment_noti.png" /> He comments on you</div>
<div class="notifications_panel"><img alt="img" class="notification_panel_img" src="images/like_noti.png" /> She likes you</div>
<div class="notifications_panel"> <img alt="img" class="notification_panel_img" src="images/like_noti.png" /> He likes you</div>

<br /><br />

<div class="time_heading">Yesterday</div>

<div class="notifications_panel"><img alt="img" class="notification_panel_img"  src="images/comment_noti.png" /> He comments on you</div>
<div class="notifications_panel"><img alt="img" class="notification_panel_img" src="images/like_noti.png" /> She likes you</div>
<div class="notifications_panel"> <img alt="img" class="notification_panel_img" src="images/like_noti.png" /> He likes you</div>


</div>
<div class="ads">Ads</div>
<div class="people_you_may_know">People you may know</div>
</body>

</asp:Content>
