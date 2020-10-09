<%@ Page Title="" Language="C#" MasterPageFile="~/motheroffinal.Master" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="facebook_web.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" type="text/css" 	media="all" href="StyleSheet2.css" />
 <script src="jquery-1.11.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_TextBox1").click(function () {
                $("#juni").show();
               
            });
            $("#like").click(function () {

                $("#like").hide();
                $("#unlike").show();
            });
            $("#unlike").click(function () {

                $("#unlike").hide();
                $("#like").show();
            });
            $("#comment").click(function () {

                $("#comment_box").show();
            });
        });




    </script>
 


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="left_panel">
 <img src="images/dp.jpg" width=40px height=40px />
 <div class="left_panel_dp_with_name">
 
 FaAiz Ahmed <br />
 Edit Profile
 
 </div>
 <div class="left_panel_list">
  <div class="hov"> <img alt="img" class="left_panel_img1" src="images/news-feed.png" /> News feed</div>
  <div class="hov" ><img class="left_panel_img2"   src="images/msg_left_panel.png" /> Messages</div>
  <div class="hov"><img src="images/events.png" class="left_panel_img2" /> Events</div>
  <div class="hov"><img src="images/saved.png" class="left_panel_img2" /> Saved</div>
 <br /><br />
 <div class="left_panel_heading "> APPS</div>
 <br /><br />
 <div class="left_panel_heading"> PAGES</div>
 <div class="hov"><img src="images/like_pages.png" class="left_panel_img2 " /> Like Pages</div>
 <div class="hov"><img src="images/create_page.png" class="left_panel_img2 " /> Create Page</div>
 <div class="hov" >  <img src="images/create_advert.png" class="left_panel_img3 " /> Create Advert</div>
 <br /><br />
 <div class="left_panel_heading"> GROUPS</div>
 <div class="hov"><img src="images/manage_groups.png" class="left_panel_img3 " /> Manage your groups</div>
 <div class="hov"><img src="images/create_group.png" class="left_panel_img3 " /> Create group</div>
 <div class="hov"><img src="images/find_group.png" class="left_panel_img3 " /> Find New Groups</div>
 </div>


 </div>

 <div class="status" >
 <div class="status_divs"> <img class="status_img2"src="images/update_status.png" /> Update Status</div><img class="status_img2" style="float:left; left:15px" src="images/hori_line2.png" />
 
 <div class="status_divs2"> <img class="status_img2" src="images/add_photo.png" /> Add Photos/Video</div><br /><br />
<div> <img src="images/status_line.png" /></div>
<div class="status_text_box_div">

   <asp:TextBox   class="status_text_box" placeholder="What's on your mind?" TextMode="MultiLine"  ID="TextBox1" runat="server"></asp:TextBox>
  </div><br />
 <div id="juni" class="upload_status display_block">
 <div class="add_friend"> <img class="upload_status_img2" src="images/add_friend.png" /></div>
 <div class="location"><img src="images/location.png" class="upload_status_img2" />  </div>
 <div class="add_friend"><img src="images/upload_image.png" class="upload_status_img2" /></div>
 <div class="add_friend"> <img src="images/feeling.png" class="upload_status_img2" /></div>
 
 <div class="postandfriend">
 <img src="images/friend_list.png" style="position:relative;  top:4px; border-width:1px; border-color:#f7f7f7;" />
    <asp:DropDownList ID="DropDownList1" CssClass="drop_down_list_status" runat="server">
     
    <asp:ListItem Text="Friends" Value="0"></asp:ListItem>
    </asp:DropDownList>
    <img src="images/post.png" class="post_img" />
    </div>

 </div><br /><br /><br />
<div class="post" >
<div class="post_image"><img src="images/kaka-real (1).jpg" class="post_image_size"  /></div>

<div class="post_heading">Kaka </div>
<div class="post_heading_time"> 10 mins</div>
<div class="post_content"><img class="post_content_size" src="images/2013-02-Santiago-Bernabeu.jpg" /></div>
<div id="like"  class="like_post" > Like
</div><div id="comment"  class="comment_post" >Comment</div>
    
<div id="unlike"   class="like_post display_block">Unlike</div>
    

<div id="comment_box"   class="display_block"> <input type="text" name="ContactName" class=""  style="width:470px; height:30px;" placeholder="  Enter a comment..."  value=""/><br/> </div>



</div>



<div class="post" >
<div class="post_image"><img src="images/kaka-real (1).jpg" class="post_image_size"  /></div>

<div class="post_heading">Kaka </div>
<div class="post_heading_time"> 10 hrs</div>
<div class="post_content"><img class="post_content_size" src="images/2013-02-Santiago-Bernabeu.jpg" /></div>







</div>

  </div>
<div class="ads">
<div class="ads_heading">Events</div><br />
<div> <img src="images/calender_event.png" /> <a href="home.aspx"><text style=" position:relative; bottom:8px;color:#3b5998; font-size:13px;">GO NAWAZ GO Happening Now</text></a> </div>
<br />
<hr style="padding-left:5%; color:#9197a3;" />
<div class="ads_heading">Recommended Games</div>
<br />&nbsp &nbsp<img style="padding-left:5px;" src="images/kk.png" />
<br /><br />
<div class="ads_heading">Sponsered</div>
<br /> <img style="padding-left:5px;" src="images/kk2.png" /><br /><br />
</div>

</asp:Content>
