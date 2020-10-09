<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StepsAfterSignUp.aspx.cs" Inherits="facebook.StepsAfterSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/StepsAfterSignUp.css" type="text/css" />
    
    <link rel="short icon" href="~/images/favlogo.png" type="image/png" />
    <title>Facebook</title>
</head>
<body>
    <form id="form1" runat="server">
     <div id="up">
               
     </div>

    <div id="body">

     <div id="Body1">
          <span id="step1">
          <h3 style="color:black; font-family: arial;"> &emsp; Step 1  </h3>
       
        <font style="color:black; font-size:small; font-family: arial;">
            &emsp;&nbsp;&nbsp;
          Add Profile Pic
           
        </font>

        </span>
                        
        </div>

       <br />
        <br />
         <h3 style="color:black; font-family:Arial;">Set Your Profile Picture</h3>
        <br>
        <br>
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         <img src="images/photo-male.png" alt="pic"/>
         
         &emsp;&emsp;&emsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:Image ID="myImage" Height="250px" Width="250px" BorderStyle="None" runat="server" />
           <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server"  Text="upload" OnClick="Button1_Click" />
        
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="Steps1.aspx"><font style="color:#3b5998; text-decoration:none; font-family:Arial; font-size:small;">Next
            </font>
        </a>
        &emsp;&emsp;

       
        
              
         
         

                    

    </div>


        </form>
</body>
</html>
