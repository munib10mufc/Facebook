<%@ Page Title="" Language="C#" MasterPageFile="~/t.Master" AutoEventWireup="true" CodeBehind="Timeline.aspx.cs" Inherits="facebook.Timeline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="all" href="StyleSheet1.css" />
    <link rel="stylesheet" href="css/homecss.css" type="text/css" />
    <link rel="stylesheet" type="text/css" media="all" href="StyleSheet2.css" />

    <script src="Scripts/jquery-1.11.1.min.js"></script>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/core.js"></script>
    <style>
        #upleft {
            width: 1200px;
            height: 80px;
        }

        .roundcornors {
            width: 337px;
            height: 23px;
        }


        .status_text_box {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: white;
            outline: none;
            font-size: 14px;
            -webkit-font-smoothing: antialiased;
            border-radius: 2px;
            line-height: 18.6px;
            padding-left: 5px;
            padding-top: 1px;
            width: 508px;
            height: 50px;
            font-family: Helvetica, Arial, 'lucida grande',tahoma,verdana,arial,sans-serif;
            position: relative;
            left: 339px;
            top: -1632px;
        }

        .display {
            display: none;
        }

        .upload_status {
            width: 514px;
            height: 40px;
            background-color: #f7f7f7;
            position: relative;
            left: 336px;
            top: -1633px;
        }

        .upload_status_img2 {
            position: relative;
            top: 8px;
        }

        .post_img {
            position: relative;
            top: 8px;
            left: 40px;
        }






        #link1 {
            text-decoration: none;
            color: #5d414e;
        }

        #selectimg {
            position: absolute;
            margin-left: 238px;
            margin-top: -6.5px;
            width: 1.3%;
            height: 7px;
        }

        #about1 {
            position: relative;
            top: -150px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #about2 {
            position: relative;
            top: -150px;
            left: 0px;
            width: 34.5%;
            height: 200px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        hr {
            display: block;
            margin-top: 0.5em;
            margin-bottom: 0.5em;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-width: 0.1em;
            border-color: #E9EaEd;
        }

        #post1 {
            position: relative;
            top: -406px;
            left: 335px;
            width: 59%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.0px;
            font-weight: 600;
            font-size: 12px;
        }

        #post2 {
            position: relative;
            top: -406px;
            left: 335px;
            width: 57.5%;
            height: 93px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #photos1 {
            position: relative;
            top: -280px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #photos2 {
            position: relative;
            top: -280px;
            left: 0px;
            width: 34.5%;
            height: 200px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #friends1 {
            position: relative;
            top: -270px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #friends2 {
            position: relative;
            top: -270px;
            left: 0px;
            width: 34.5%;
            height: 200px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #apps1 {
            position: relative;
            top: -258px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #apps2 {
            position: relative;
            top: -258px;
            left: 0px;
            width: 34.5%;
            height: 200px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #places1 {
            position: relative;
            top: -236px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #places2 {
            position: relative;
            top: -236px;
            left: 0px;
            width: 34.5%;
            height: 50px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #sports1 {
            position: relative;
            top: -214px;
            left: 0px;
            width: 36%;
            height: 27px;
            background-color: #F6F7F8;
            border: 1px solid;
            border-color: #C8C8C8;
            border-bottom-color: #E9EaEd;
            border-radius: 3px;
            border-bottom-right-radius: 0px;
            border-bottom-left-radius: 0px;
            color: #6d5680;
            padding: 13px 0px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.1px;
            font-weight: 600;
            font-size: 11px;
        }

        #sports2 {
            position: relative;
            top: -214px;
            left: 0px;
            width: 34.5%;
            height: 200px;
            background-color: white;
            border: 1px solid;
            border-top-width: 0px;
            border-color: #C8C8C8;
            border-radius: 3px;
            border-top-right-radius: 0px;
            border-top-left-radius: 0px;
            color: #6a7480;
            padding: 13px 13px 0px 13px;
            font-family: Arial;
            letter-spacing: -0.2px;
            font-weight: 600;
            font-size: 12px;
        }

        #statusHolder {
            width: 516px;
            margin-left: 337px;
            margin-top: 120px;
        }

        .display_block {
            display: none;
        }
    </style>
    <script>
        function poststatusintodb() {
            var statuscontent = document.getElementById("ContentPlaceHolder1_TextBox1").value;
            $.ajax
            (
                {
                    type: "POST",
                    url: "fhandler.asmx/postnewstatus",
                    data: { "status": statuscontent },
                    contenttype: 'application/json; charset= utf-8',
                    datatype: 'json',
                    success: function (data) {
                        var res = $.parseJSON($(data).text());
                        var JSimage = res.profileimage;
                        var JSname = res.profilename;
                        var JStime = res.posttime;
                        var JScontent = res.postcontent;
                        var JSpid = res.postid;

                    
                        var xc = document.createElement('div');
                        xc.innerHTML(JSname);
                        $('#statusHolder').append(xc);
                    },
                    error: function (a, text) {

                    }
                }
            )
        }

        $(document).ready(function () {
            $("#optiontimeline").after("<img id='selectimg' src='images/timeline.jpg'>");

            $("#ContentPlaceHolder1_TextBox1").click(function () {
                $("#juni").show();
            });
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


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="about1">ABOUT</div>
    <div id="about2">

        <img src="images/aboutimage1.JPG" height="12px" width="15px" />
        &nbsp Worked at <span style="color: #3b5998;">
            <asp:Label runat="server" ID="worklabelTL"></asp:Label></span>
        <br />
        <hr />
        <br />
        <img src="images/aboutimage2.JPG" height="12px" width="17px" />&nbsp
Studies <span style="color: #3b5998;">
    <asp:Label runat="server" ID="studylabelTL"></asp:Label></span>
        <br />
        <hr />
        <br />
        <img src="images/aboutimage3.JPG" height="12px" width="13px" />
        &nbsp Lives in <span style="color: #3b5998;">
            <asp:Label runat="server" ID="CurrentlocationTL"></asp:Label></span>
        <br />
        <hr />
        <br />
        <img src="images/aboutimage4.JPG" height="14px" width="13px" />
        &nbsp From <span style="color: #3b5998;">
            <asp:Label runat="server" ID="hometownTL"></asp:Label></span>
        <br />
        <hr />
        <br />
        <img src="images/aboutimage5.JPG" height="12px" width="13px" />
        &nbsp  Followed by<span style="color: #3b5998;"> 110 people</span>
        <br />
    </div>


    <div id="post1">
        <img src="images/post1.JPG" height="16px" width="16px" />
        Status&nbsp&nbsp&nbsp
        <img src="images/post2.JPG" height="16px" width="16px" />
        <span style="color: #3b5998;">Photo/Video</span>
        &nbsp&nbsp&nbsp
        <img src="images/post3.JPG" height="16px" width="16px" />
        <span style="color: #3b5998;">Life Event</span>



    </div>


    <div id="post2">
    </div>
    <div id="photos1">PHOTOS <span style="color: #6a7480; font-weight: lighter">100</span></div>
    <div id="photos2"></div>

    <div id="friends1">FRIENDS <span style="color: #6a7480; font-weight: lighter">100</span></div>
    <div id="friends2"></div>

    <div id="apps1">APPS AND GAMES <span style="color: #6a7480; font-weight: lighter">44</span></div>
    <div id="apps2"></div>

    <div id="places1">PLACES <span style="color: #6a7480; font-weight: lighter">44</span></div>
    <div id="places2"></div>

    <div id="sports1">SPORTS <span style="color: #6a7480; font-weight: lighter">44</span></div>
    <div id="sports2"></div>









    <asp:TextBox class="status_text_box" placeholder="What's on your mind?" TextMode="MultiLine" ID="TextBox1" runat="server"></asp:TextBox>

    <br />
    <br />

    <div id="juni" class="upload_status display">
        &nbsp
        <img class="upload_status_img2" src="images/add_friend.png" />


        &nbsp&nbsp
        <img src="images/location.png" class="upload_status_img2" />
        &nbsp&nbsp
        <img src="images/upload_image.png" class="upload_status_img2" />
        &nbsp&nbsp
 <img src="images/feeling.png" class="upload_status_img2" />
        &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


 <img src="images/friend_list.png" style="position: relative; top: 4px; border-width: 1px; border-color: #f7f7f7;" />
        <asp:DropDownList ID="DropDownList1" CssClass="drop_down_list_status" runat="server">
            <asp:ListItem Text="Friends" Value="0"></asp:ListItem>
        </asp:DropDownList>
        <%--<input runat="server" id="storestatusbutton1" type="button" title="Post"  onclick="javascript:poststatusintodb()" style="width:40px; height:20px"  />--%>
        <asp:ImageButton runat="server" ID="storestatusbutton" src="images/post.png" OnClick="storestatus2" class="post_img" />
    </div>





    </a>
    </div>





    <div id="statusHolder">
        <asp:PlaceHolder ID="statuses" runat="server"></asp:PlaceHolder>


    </div>

</asp:Content>


