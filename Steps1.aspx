<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Steps1.aspx.cs" Inherits="facebook.Steps1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/StepsAfterSignUp.css" type="text/css" />
    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <title>Facebook</title>
</head>
<body>
    <form id="form1" runat="server">
     <div id="up">
               
     </div>

    <div id="body" runat="server">

     <div id="Body1" runat="server">
        
         


         <span id="step1" runat="server">
          <h3 style="color:black; font-family: arial;">&emsp;&emsp;&emsp;  Step 2</h3>
       
        
        </span>
        
                 
        <font style="color:black; font-size:small; font-family: arial;">
            &emsp;&emsp;&emsp;&emsp;&nbsp;
          Add Cover pic

        </font>
           
       
        </div>

       <br />
        <br />
       

        <h3 style="color:black; font-family:Arial;"> &emsp; Set Your Cover Picture</h3>
        <br>
        <br>
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         <img src="images/photo-male.png" alt="pic"/>
         
         &emsp;&emsp;&emsp;

       <%-- <button id="ChooseImage" value="Choose Pic"style="width:145px;height:45px; background-color:#6bb933; cursor:pointer;">
            <font style="color:white; font-size:small; font-weight:bold; font-family: arial;">
            Add Picture
             </font>
        </button>--%>
        <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="myImage" runat="server" Height="200px" BorderStyle="None" Width="550px" />

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="Button1" runat="server"  Text="upload" OnClick="Button1_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%--<button id="Next1" value="Next"style="width:35px; height:20px; background-color:#4c7ab6; cursor:pointer;">
            <font style="color:white; font-size:small; font-weight:bold; font-family: arial;">
            Next
             </font>--%>
        <a href="Step2.aspx">
            <font style="color:#3b5998; text-decoration:none; font-family:Arial; font-size:small;">
            Next
            </font>
        </a>
        &emsp;&emsp;
        
        
                    

    </div>

        </form>

</body>
</html>