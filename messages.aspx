<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="messages.aspx.cs" Inherits="facebook_web.messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" 	media="all" href="see_message_newww.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="left_panel_messages">
<div class="left_panel_heading">Inbox &nbsp &nbsp Other  
    <asp:DropDownList class="drop_down_message" ID="DropDownList2" runat="server">
    <asp:ListItem Text="More" Value="0"></asp:ListItem>
 <asp:ListItem Text="Unread" Value="1"></asp:ListItem>
 <asp:ListItem Text="Archieved" Value="2"></asp:ListItem>
 <asp:ListItem Text="Spam" Value="3"></asp:ListItem>
</asp:DropDownList>
    
    </asp:DropDownList>
    
  </div>
    
 
<hr class="hr_class2"  />
&nbsp
<asp:TextBox style=" padding-left:3px  ;width:230px;" placeholder="Search" ID="TextBox1" runat="server"></asp:TextBox>
<br />
<hr class="hr_class3"  />

<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>

<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>


<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>

<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>
<div class="messages_un"><img src="images/dp2.png" class="message_img_div" /><div class="text_message_div"> <temp class="heading_message_div">Faaiz</temp> <br />    Read message</div> </div>



</div>
<div class="mid_panel_top"><br />
<temp class="text_mid_panel"> Name

<temp2 class="buttons_pos">

 <button type="submit"> <temp class="buttons"> <img style="position:relative; top:0.8px;" src="images/plus.png" /> New Message </temp> </button> </temp>
 <button type="submit" style="position:relative; right:10px;"> <temp class="buttons"> <img  style="position:relative; background-color:#4e5665;  top:0.8px;" src="images/settings_mid.png" />Actions </temp> </b></button> </temp>
 <button type="submit" style="position:relative; right:15px;"> <temp class="buttons"> <img  style="position:relative; top:0.8px; height:16px;" src="images/search_left.png" /> </temp> </b></button> </temp>
 
 </temp2>
 
</div>
<div class="chat_messages">Chat</div>

<div class="mid_panel_bottom">
<div class="type_message">
<asp:TextBox class="type_message_text_Box" placeholder="Write a reply..." TextMode="MultiLine"  ID="TextBox2" runat="server"></asp:TextBox>

<hr class="hr_class4"  />
<div class="bottom">

<button class="chat_buttons" type="submit"> <temp > <img style="position:relative; top:0.8px;" src="images/add_files.png" /> Add Files </temp> </button>
<button class="chat_buttons" type="submit"> <temp > <img style="position:relative; top:0.8px;" src="images/add_photosssss.png" /> Add Photos </temp> </button>
 <div class="check_box">
 Press Enter to Send   <asp:CheckBox ID="CheckBox1" runat="server" />
 </div>
 </div>
</div>

</div>

</asp:Content>
