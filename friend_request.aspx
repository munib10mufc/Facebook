<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="friend_request.aspx.cs" Inherits="facebook_web.friend_request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" 	media="all" href="your_notification.css">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="main_panel"><br />
<temp class="main_panel_heading">Respond to your friend request</temp>
<br /> <a href="Timeline.aspx"> <temp class="main_panel_link">View Sent requests</temp> </a>

<hr class="hr_class5" />

<div class="req_box">
<img src="images/mesam.jpg" class="req_box_img" />
<heading class="req_box_heading">Mesam</heading>
    <br />
    <div class="main_buttons">
    <asp:Button class="req_button_confirm" ID="Button1" runat="server" Text="Confirm" />
    <button id="Button2" runat="server" type="submit" class="req_button_delete">Delete Request</button>
    </div>
</div>
<hr class="hr_padding" />

<div class="req_box">
<img src="images/khyzar.jpg" class="req_box_img" />
<heading class="req_box_heading">Khyzar</heading><br />
<div class="main_buttons">
 <asp:Button class="req_button_confirm" ID="Button3" runat="server" Text="Confirm" />
    <button id="Button4" runat="server" type="submit" class="req_button_delete">Delete Request</button>
    </div>
</div>

<hr class="hr_padding" />
<div class="req_box">
<img src="images/faaiz.jpg" class="req_box_img" />
<heading class="req_box_heading">Faaiz Ahmed</heading><br />
<div class="main_buttons">
 <asp:Button class="req_button_confirm" ID="Button5" runat="server" Text="Confirm" />
    <button id="Button6" runat="server" type="submit" class="req_button_delete">Delete Request</button>
    </div>
</div>
<hr class="hr_padding" />



<div class="break"></div>
</div>

<div class="people_you_may_know_panel">
<br />
<temp class="main_panel_heading">People you may know</temp>
<br /> 
<hr class="hr_class5" />
<div class="req_box">
<img src="images/dp2.png" class="req_box_img" />
<heading class="req_box_heading">Hafiz</heading><br />
    
    <div class="main_buttons">
    
    <button id="Button7" runat="server" type="submit" class="add_button"><img class="fr_req_sym_img" src="images/fr_req_sym.png" />Add friend</button>
    </div>
</div>
<hr class="hr_padding" />


<div class="req_box">
<img src="images/dp2.png" class="req_box_img" />
<heading class="req_box_heading">Ali</heading><br />
    
    <div class="main_buttons">
    
    <button id="Button8" runat="server" type="submit" class="add_button"><img class="fr_req_sym_img" src="images/fr_req_sym.png" />Add friend</button>
    </div>
</div>
<hr class="hr_padding" />


<div class="req_box">
<img src="images/dp2.png" class="req_box_img" />
<heading class="req_box_heading">Ahad</heading><br />
    
    <div class="main_buttons">
    
    <button id="Button9" runat="server" type="submit" class="add_button"><img class="fr_req_sym_img" src="images/fr_req_sym.png" />Add friend</button>
    </div>
</div>
<hr class="hr_padding" />





</div>


<div class="ads">Ads</div>
<div class="people_you_may_know"><h8>People you may know</h8></div>

</asp:Content>
