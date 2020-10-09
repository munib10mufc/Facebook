<%@ Page Title="" Language="C#" MasterPageFile="~/t.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="facebook.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript" src="Scripts/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#optionabout").after("<img id='selectimg' src='images/timeline.jpg'>");
        $("#div1").show();

        //     $("#ListofLinks").html("<li class='hover_' ID='List1'>Overview</li> <li class='hover_' ID='List2'>Work and Education</li> <li class='hover_' ID='List3'>Places Youve lived</li> <li class='hover_' ID='List4'>Contact and Basic Info</li> <li class='hover_' ID='List5'>Family and Relationships</li> <li class='hover_' ID='List6'>Details About You</li> <li class='hover_' ID='List7'>Life Events</li>");

        //$("#List1").before("<img src='/Images/sidebar.jpg' style='position:absolute; left:0px; top:15px; height:25px; width:5px; z-index:3'/>");
        $("#img1").show();
        $("#List1").css({ "color": "Black", "font-weight": "600" });


        $("#List1").click(function () {

            $("#div1").show();
            $("#div2").hide();
            $("#div3").hide();
            $("#div4").hide();
            $("#div5").hide();
            $("#div6").hide();
            $("#div7").hide();
            $("#img1").show();
            $("#img2").hide();
            $("#img3").hide();
            $("#img4").hide();
            $("#img5").hide();
            $("#img6").hide();
            $("#img7").hide();

            $("#List1").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });


        });
        $("#List2").click(function () {

            $("#div1").hide();
            $("#div2").show();
            $("#div3").hide();
            $("#div4").hide();
            $("#div5").hide();
            $("#div6").hide();
            $("#div7").hide();
            $("#img2").show();
            $("#img1").hide();
            $("#img3").hide();
            $("#img4").hide();
            $("#img5").hide();
            $("#img6").hide();
            $("#img7").hide();

            $("#List2").css({ "color": "Black", "font-weight": "600" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });


        });
        $("#List3").click(function () {

            $("#div1").hide();
            $("#div3").show();
            $("#div2").hide();
            $("#div4").hide();
            $("#div5").hide();
            $("#div6").hide();
            $("#div7").hide();
            $("#img3").show();
            $("#img2").hide();
            $("#img1").hide();
            $("#img4").hide();
            $("#img5").hide();
            $("#img6").hide();
            $("#img7").hide();

            $("#List3").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });


        });
        $("#List4").click(function () {

            $("#div1").hide();
            $("#div4").show();
            $("#div2").hide();
            $("#div3").hide();
            $("#div5").hide();
            $("#div6").hide();
            $("#div7").hide();

            $("#img4").show();
            $("#img2").hide();
            $("#img3").hide();
            $("#img1").hide();
            $("#img5").hide();
            $("#img6").hide();
            $("#img7").hide();

            $("#List4").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });

        });
        $("#List5").click(function () {

            $("#div1").hide();
            $("#div5").show();
            $("#div2").hide();
            $("#div3").hide();
            $("#div4").hide();
            $("#div6").hide();
            $("#div7").hide();


            $("#img5").show();
            $("#img2").hide();
            $("#img3").hide();
            $("#img4").hide();
            $("#img7").hide();
            $("#img6").hide();
            $("#img1").hide();

            $("#List5").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });


        });
        $("#List6").click(function () {

            $("#div1").hide();
            $("#div6").show();
            $("#div2").hide();
            $("#div3").hide();
            $("#div5").hide();
            $("#div4").hide();
            $("#div7").hide();

            $("#img6").show();
            $("#img2").hide();
            $("#img3").hide();
            $("#img4").hide();
            $("#img5").hide();
            $("#img7").hide();
            $("#img1").hide();

            $("#List6").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List7").css({ "color": "Gray", "font-weight": "500" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });


        });
        $("#List7").click(function () {
            $("#div1").hide();
            $("#div7").show();
            $("#div2").hide();
            $("#div3").hide();
            $("#div5").hide();
            $("#div6").hide();
            $("#div4").hide();

            $("#img7").show();
            $("#img2").hide();
            $("#img3").hide();
            $("#img4").hide();
            $("#img5").hide();
            $("#img6").hide();
            $("#img1").hide();

            $("#List7").css({ "color": "Black", "font-weight": "600" });
            $("#List2").css({ "color": "Gray", "font-weight": "500" });
            $("#List3").css({ "color": "Gray", "font-weight": "500" });
            $("#List4").css({ "color": "Gray", "font-weight": "500" });
            $("#List5").css({ "color": "Gray", "font-weight": "500" });
            $("#List6").css({ "color": "Gray", "font-weight": "500" });
            $("#List1").css({ "color": "Gray", "font-weight": "500" });

        });





    });


 </script>

 <style>
 #link2
    {
         text-decoration:none;
         color:#5d414e;
    }
#selectimg
{
    position:absolute;
    margin-left:323px;
    margin-top:-48px;
    width:1.3%;
    height:7px;
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
         height:45px;
         padding-left:15px;
         padding-top:13px;
         border-radius:3px;
         border-bottom-left-radius:0px;
         border-bottom-right-radius:0px;
     }
     #leftBlock
     {
         color:#5d414e;
         width:225px;
         position:relative;
         top:-150px;
         left:0px;
         font-family:arial;
         font-size:20px;
         font-weight:600;
         border:1px solid #c8c8c8;
         background-color:White;
         height:400px;
         padding-left:15px;
         padding-top:13px;
         border-radius:3px;
         border-top-left-radius:0px;
         border-top-right-radius:0px;
         border-top-width:0px;    
     }
     #rightBlock
     {
         color:#5d414e;
         width:592px;
         position:relative;
         top:-564px;
         left:242px;
         font-family:arial;
         font-size:20px;
         font-weight:600;
         border:1px solid #c8c8c8;
         background-color:White;
         height:400px;
         padding-left:15px;
         padding-top:13px;
         border-radius:3px;
         border-left-width:0px;
         border-top-left-radius:0px;
         border-top-right-radius:0px;
         border-top-width:0px;    
     }
     #ListofLinks
     {
         color:Gray;
         font-size:14px;
         font-weight:500;
     }
     
    #ListofLinks:li
    {
        padding:10px 10px 10px 18px;
        color:Gray;
    }
   
    
    .hover_
    {
        padding:10px 10px 12px 0px;
        color:Gray;
    }
    .hover_:hover
    {
        color:Black;
        background-color:White;
        cursor :pointer;
    }
    
    .Span_1
    {
        color:Gray;
        font-size:13px;
        font-family:Arial;
        font-weight:500;
    }
    .Span_2
    {
        color:#3b5998;
        font-size:13px;
        font-family:Arial;
        font-weight:500;
    }
    .Span_3
    {
        color:#3b5998;
        font-size:18px;
        font-family:Arial;
        font-weight:600;
    }
    .Span_4
    {
        width: 550px;
        color:Gray;
        font-size:14px;
        font-family:Arial;
        font-weight:600;
        border-bottom: 1px solid #c8c8c8;
    }
    .Study
    {
        position:relative;
        top:10px;
        height:50px;
        width: 300px;
        border-bottom: 1px solid #c8c8c8;
        padding-top:20px;
        padding-bottom:20px;
        
    }
    .Study:hover
    {
        background-color:#f7f7f7;
    }
    #Family
    {
        position:relative;
        top:10px;
        height:50px;
        width: 600px;
        padding-top:20px;
        padding-bottom:20px;
        
    }
    #Family:hover
    {
        background-color:#f7f7f7;
    }
    #div1
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div2
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div3
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div4
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div5
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div6
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    #div7
    {
        height:400px;
        width:400px;
        position:relative;
        left:470;
        top:300;
        background-color:White;
        display:none;
        z-index:2;
    }
    
    
    
    
    
     
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="heading">
<asp:Image id="aboutsmalldp" runat="server" style=" height:25px; width:22px; position:relative; top:4px;" />&nbsp About </div>

<div id="leftBlock">

<ul id="ListofLinks">
<img  id="img1" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:15px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List1">Overview</li>
<img  id="img2" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:55px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List2">Work and Education</li>
<img  id="img3" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:92px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List3">Places You've lived</li>
<img  id="img4" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:130px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List4">Contact and Basic Info</li>
<img  id="img5" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:170px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List5">Family and Relationships</li>
<img  id="img6" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:205px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List6">Details About You</li>
<img  id="img7" src="/Images/sidebar.jpg" style="position:absolute; left:0px; top:243px; height:25px; width:5px; z-index:3; display:none;"/>
<li class="hover_" ID="List7">Life Events</li>
</ul>

</div>



<div id="rightBlock">

<div id="div1">

<div class="Study">

<image src="/Images/Studiedat.jpg" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_1">Studied at</span>
<span class="Span_2"><asp:Label runat="server" ID="aboutstudied"></asp:Label></span>
</div>

<div class="Study">
<image src="/Images/Livesin.jpg" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_1">Lives in</span>
<span class="Span_2"><asp:Label runat="server" ID="aboutlivesin"></asp:Label></span>
</div>

<div Id="Family">
<image src="/Images/family.jpg" style=" height:50px; width:200; position:relative; top:10px;"></image>
</div>

</div>

<div id="div2">
<br />
<div class="Span_4">
Work
</div>

<div>
<image src="/Images/company.png" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_3"><asp:Label runat="server" ID="aboutworkedat"></asp:Label></span><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</div>
<br />
<br />
<div class="Span_4">
College or University
</div>
<div>
<image src="/Images/Studiedat.jpg" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_3"><asp:Label runat="server" ID="aboutcollegeoruni"></asp:Label></span><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span class="Span_1">Class 2016</span>
</div>

</div>


<div id="div3">
<br />
<div class="Span_4">
Current City and Home Town
</div>

<div>
<image src="/Images/livesin.jpg" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_3"><asp:Label runat="server" ID="aboutcurrentcity"></asp:Label></span><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span class="Span_1">Current city</span>
</div>

<div>
<image src="/Images/livesin.jpg" style=" height:40px; width:40px; position:relative; top:10px;"></image>
<span class="Span_3"><asp:Label ID="abouthometown" runat="server"></asp:Label></span><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span class="Span_1">Hometown</span>
</div>

<br /><br />
<div class="Span_4">
OTHER PLACES LIVED
</div>

<a href="about_.aspx"><image src="/Images/addplace.jpg" style=" height:40px; width:150px; position:relative; top:10px;"></image>
</a>
</div>


<div id="div4">
<br />
<div class="Span_4">
CONTACT INFORMATION
</div>
<br />
<span class="Span_1">Email</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span class="Span_2"><asp:Label runat="server" ID="aboutemail"></asp:Label></span>

<br />
<br />
<div class="Span_4">
BASIC INFORMATION
</div>
<br />
<span class="Span_1">Birth Date</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span style="font-size:13px; font-family:Arial; color:Black; font-weight:500"><asp:Label runat="server" ID="aboutbirthdate"></asp:Label></span>
<br />
<div class="Span_4"></div>
<br />
<%--<span class="Span_1"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span style="font-size:13px; font-family:Arial; color:Black; font-weight:500"></span>
<br />
<div class="Span_4"></div>--%>
<%--<br />--%>
<span class="Span_1">Gender</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span style="font-size:13px; font-family:Arial; color:Black; font-weight:500"><asp:Label runat="server" ID="aboutgender"></asp:Label></span>

</div>


<div id="div5">
<br />
<div class="Span_4">
RELATIONSHIP
</div>
<image src="/Images/relationship.jpg" style=" height:40px; width:40px; position:relative; top:12px;">
<span style="font-size:16px; font-family:Arial; color:Black; font-weight:500">ForeEver ALone</span>

<br /><br /><br />
<div class="Span_4">
FAMILY MEMBERS
</div>
<br />
<image src="/Images/family2.jpg" style=" height:220px; width:550px; position:relative; top:0px;">

</div>



<div id="div6">
<br />
<div class="Span_4">
ABOUT YOU
</div>

<%--<image src="/Images/detailsaboutyou.jpg" style=" height:25px; width:200px; position:relative; top:0px;">
--%>
<a href="about_.aspx"><span style="color:#8b9dc3; font-size:15px; font-weight:500; padding-top:10px;" >+ Write some details about yourself</span>
</a>

<br /><br /><br />
<div class="Span_4">
OTHER NAMES
</div>

<a href="about_.aspx"><span style="color:#8b9dc3; font-size:15px;font-weight:500; padding-top:10px;" >+Add a nickname, a birth name...</span>
</a>

<br /><br /><br />
<div class="Span_4">
FAVORITE QUOTES
</div>
<br />
<span style="font-size:13px; font-family:Arial; color:Black; font-weight:500">
the goal isn't to live forever,the goal is to create something that will
</span>


</div>


<div id="div7">
<br />
<div class="Span_4">
LIFE EVENTS
</div>

<br />
<span class="Span_1">2012</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span class="Span_1">Started College at FAST NU</span>
<div class="Span_4">
</div>
<br />
<span class="Span_1">2010</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span class="Span_1">Passed School at Saint Mary's School</span>
<div class="Span_4">
</div>
<br />
<span class="Span_1">1999</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span class="Span_1">Started School at Saint Mary's School</span>
<div class="Span_4">
</div>
<br />
<span class="Span_1">1994</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span class="Span_1">Born on January 11, 1994</span>






</div>







<%--<iframe width="604px" height="303px" style=" position:relative; left:-15px; top:-13px;" frameborder="0"; name="iframe_a"></iframe>--%>
</div>

</asp:Content>
