<%@ Page Title="" Language="C#" MasterPageFile="~/t.Master" AutoEventWireup="true" CodeBehind="Friends.aspx.cs" Inherits="web1.Friends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="Scripts/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function () {
    $("#optionfriends").after("<img id='selectimg' src='images/timeline.jpg'>");
    });


 </script>

 <style>
 #link4
    {
         text-decoration:none;
         color:#5d414e;
    }
  #heading {
         color:#5d414e;
         width:833px;
         position:relative;
         top:-150px;
         left:0px;
         font-family:arial;
         font-size:20px;
         font-weight:600;
         border:1px solid #c8c8c8;
         background-color:#f7f7f7;
         height:73px;
         padding-left:15px;
         padding-top:13px;
         border-radius:3px;
         border-bottom-left-radius:0px;
         border-bottom-right-radius:0px;
     }
     #selectimg
{
    position:absolute;
    margin-left:495px;
    margin-top:-132px;
    width:1.3%;
    height:7px;
}

    .CreateAlbum 
    {
        position:relative;
        left:580px;
        top:-220px;
        padding:3px 7px 5px 7px;
        background-color:#f7f8f9;
        color:#333333;
        font-family:Arial;
        font-size:13px;
        font-weight:600;
        border:1px solid;
        border-color:#a5a5a5;
        border-radius:2px;        
        z-index:2;
    }
    #AddVedio
    {
        position:relative;
        left:575px;
        top:-220px;
        padding:3px 7px 5px 7px;
        background-color:#f7f8f9;
        color:#333333;
        font-family:Arial;
        font-size:13px;
        font-weight:600;
        border:1px solid;
        border-color:#a5a5a5;
        border-radius:2px;       
        border-left-radius:0px;        
        z-index:2;
        border-bottom-left-radius:0px;
        border-top-left-radius:0px;
    }
    #Pencil 
    {
        position:relative;
        left:580px;
        top:-212px;
        z-index:2;
    }
    
    #Friends
    {
         color: #5d414e;
         width:843px;
         position:relative;
         top:-180px;
         left:0px;
         font-family:arial;
         font-size:20px;
         font-weight:600;
         border:1px solid #c8c8c8;
         background-color:White;
         height:500px;
         padding-left:5px;
         padding-top:5px;
         border-radius:3px;
         border-top-left-radius:0px;
         border-top-right-radius:0px;
    }

 </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id="heading">
<img src="/Images/Friends.jpg" style=" height:23px; width:24px; position:relative; top:4px;" />&nbsp Friends 
<a href="Photos.aspx" style=" font-size:13px;"><br /><br />All Friends </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Recently Added </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">College </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Current City </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Home Town </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Following </a>
</div>
<a href="Photos.aspx" Class="CreateAlbum">Friends Request</a>
<a href="Photos.aspx" id="AddVedio">+ Find Freinds</a>
<a href="Photos.aspx" id="Pencil"><img src="/images/Pencil.jpg" style="height:25px; width:25px;"/></a>

<div id="Friends" >
<image src="/images/Friends2.jpg"></image>
</div>


</asp:Content>
