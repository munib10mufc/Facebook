<%@ Page Title="" Language="C#" MasterPageFile="~/t.Master" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="web1.Photos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function () {
    $("#optionphotos").after("<img id='selectimg' src='images/timeline.jpg'>");
    });


 </script>

 <style>
 #link3
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
    margin-left:405px;
    margin-top:-90px;
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
    
    #pictures
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
         background-color:#f7f7f7;
         height:400px;
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
<img src="/Images/Photos.jpg" style=" height:25px; width:25px; position:relative; top:4px;" />&nbsp Photos 
<a href="Photos.aspx" style=" font-size:13px;"><br /><br />Photos of You </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Your Photos </a>&nbsp&nbsp&nbsp&nbsp
<a href="Photos.aspx" style=" font-size:13px;">Albums </a>
</div>
<a href="Photos.aspx" Class="CreateAlbum">+ Create Album</a>
<a href="Photos.aspx" id="AddVedio">Add Vedio</a>
<a href="Photos.aspx" id="Pencil"><img src="/images/Pencil.jpg" style="height:25px; width:25px;"/></a>

<div id="pictures" >
<image src="/images/pictures.jpg"></image> <br /> 
<image src="/images/pictures2.jpg"></image>
</div>

</asp:Content>
