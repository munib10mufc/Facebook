using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using facebook.DAL;

namespace facebook
{
    public partial class facebookloginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rightemail.Visible = false;
            errormsg.Visible = false;
            rightemail.Style.Add("margin-top", "8px");
            rightemail.Style.Add("margin-left", "220px");
            rightemail.Style.Add("margin-bottom", "3px");
            rightemail.Style.Add("margin-right", "3px");
            rightemail.Style.Add("height", "12px");
            rightemail.Style.Add("width", "500px");
            errormsg.Style.Add("background-color", "#FFEBE8");
            errormsg.Style.Add("border", "2px solid #F17A61");
            errormsg.Style.Add("font-size", "11px");
            errormsg.Style.Add("margin-top", "40px");
            errormsg.Style.Add("padding", "10px");
            emailorphone.InnerHtml = "Email or phone: ";
        }

        public void logintry(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            string fnam = "",lnam="",bdate="",gen="",relig="",currloc="",hometwn="", ppic="",cpic="" ,wo="", edu="",mob="";
            int userrid = 0;

            int rest = obj.SearchLogin2( ref userrid,checkbox.Value.ToString(), checkbox1.Value.ToString(), out fnam,out lnam,out bdate,out gen,out relig,out currloc,out hometwn,out ppic,out cpic,out wo,out edu,out mob);

            if (rest == 1)
            {
                Session["id"] =userrid ;
                SearchText.A.sender_id = userrid;
                Session["userfirstname"] = fnam;
                Session["userlastname"] = lnam;
                Session["username"] = fnam + " " + lnam;
                Session["birthdate"] = bdate;
                Session["email"] = checkbox.Value.ToString();
                Session["gender"] = gen;
                Session["religion"] = relig;
                Session["currentloc"] = currloc;
                Session["hometown"] = hometwn;
                Session["profilepic"] = "images/" + ppic;
                Session["coverpic"] = "images/" + cpic;
                Session["workplace"] = wo;
                Session["education"] = edu;
                Session["mobilenumber"] = mob;
                Response.Redirect("Timeline.aspx");
            }

            else if (rest == -1)
            {
                Session["username"] = fnam +" "+ lnam;
                emailorphone.InnerHtml = "Login as: ";
                errormsg.Visible = true;
                checkbox.Visible = false;
                rightemailtext.Visible = true;
                rightemailtext.Text = Session["username"] as string;
                errormsg.InnerHtml = "<b>Please ReEnter Your Password.</b></br><br/>The password you entered is incorrect.<br><br/>Please try again (make sure capsLock is off).<br/><br/>Forgot your password? Request a new one";
                rightemail.Visible = true;
            }

            else
            {
                errormsg.InnerHtml = "<b>Incorrect Email</b><br/><br/> The email you entered does not belong to any account.<br/> You can login using any email, username or mobile phone number associated with your account.<br/>  Make sure that it is typed correctly.";
                errormsg.Visible = true;
                Response.Redirect("facebookloginpage.aspx");
            }

        }
    }
}