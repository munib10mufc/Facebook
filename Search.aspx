<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="facebook.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-1.11.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".AddButton").click(function () {
                $(this).css("width", "93px");
                $(this).text("Request Sent..");

                var receiverid = $(this).attr('ID');
                i = 0;
                while (1) {
                    if (receiverid == "ContentPlaceHolder1_" + i)
                    {
                        var rid = i;
                        break;
                    }
                    i++;
                }
                $.ajax
                    ({
                    type: "POST",
                    url: "Search.aspx/AddFriend",
                    data: "{temp: '" + JSON.stringify(rid) + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data)
                    {
                        alert("Request sent");
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("Not Sent");
                    }
                });
            });
        })
    </script>
    <style>
        .Profile {
            height: 100px;
            width: 400px;
            position: relative;
            left: 20px;
            top: 100px;
            background-color: White;
            border: 1px solid #E0E0E0;
        }

        .ProfileImage {
            height: 80px;
            width: 80px;
            background-color: White;
        }

        .ProfileName {
            position: relative;
            left: 110px;
            top: -55px;
            font-family: Arial;
            font-size: medium;
            font-weight: 600;
            color: #3b5998;
        }

        .ImageClass {
            width: 100px;
            height: 100px;
        }

        .AddButton {
            height: 15px;
            width: 80px;
            position: relative;
            left: 280px;
            top: -70px;
            position: relative;
            padding: 3px 7px 5px 7px;
            background-color: #f7f8f9;
            color: #333333;
            font-family: Arial;
            font-size: 13px;
            font-weight: 600;
            border: 1px solid;
            border-color: #a5a5a5;
            border-radius: 3px;
            z-index: 2;
            cursor: pointer;
        }

        .AddButton2 {
            height: 15px;
            width: 93px;
            position: relative;
            left: 280px;
            top: -70px;
            position: relative;
            padding: 3px 7px 5px 7px;
            background-color: #f7f8f9;
            color: #333333;
            font-family: Arial;
            font-size: 13px;
            font-weight: 600;
            border: 1px solid;
            border-color: #a5a5a5;
            border-radius: 3px;
            z-index: 4;
            cursor: pointer;
        }

        .AddButton3 {
            height: 15px;
            width: 70px;
            position: relative;
            left: 280px;
            top: -70px;
            position: relative;
            padding: 3px 7px 5px 7px;
            background-color: #f7f8f9;
            color: #333333;
            font-family: Arial;
            font-size: 13px;
            font-weight: 600;
            border: 1px solid;
            border-color: #a5a5a5;
            border-radius: 3px;
            z-index: 4;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/chaipi_chat3.png" style="position: fixed; left: 1145px; top: 45px; z-index: 2;" />
    <div style="border-left: 30px;">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </div>
</asp:Content>
