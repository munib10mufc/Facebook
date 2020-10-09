using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using facebook.DAL;

namespace facebook
{
    public partial class fb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void setStatus(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            string fnam = "", lnam = "", bdate = "", gen = "", relig = "", currloc = "", hometwn = "", ppic = "", cpic = "", wo = "", edu = "", mob = "";

            int userrid = 0, rest = obj.SearchLogin(checkbox.Value.ToString(), checkbox1.Value.ToString());
            if (rest > 0)
            {
                obj.SearchLogin2(ref userrid, checkbox.Value.ToString(), checkbox1.Value.ToString(), out fnam, out lnam, out bdate, out gen, out relig, out currloc, out hometwn, out ppic, out cpic, out wo, out edu, out mob);
                Session["id"] = userrid;
                Session["userfirstname"] = fnam;
                Session["userlastname"] = lnam;
                Session["email"] = checkbox.Value.ToString();
                Session["profilepic"] = "images/" + ppic;
                Session["coverpic"] = "images/" + cpic;
                Session["birthdate"] = bdate;
                Session["currentloc"] = currloc;
                Session["hometown"] = hometwn;
                Session["workplace"] = wo;
                Session["education"] = edu;
                Session["mobilenumber"] = mob;
                SearchText.A.sender_id = userrid;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Login Successful');window.location.replace('Timeline.aspx');", true);
            }
            else
            {
                Response.Write("<script>alert('Login Unsuccessful');</script>");
            }
        }



        public void getvalues()
        {
            myDAL obj = new myDAL();
            string x;
            x = Day.Value.ToString();
            x = x + "/" + Month.Value.ToString() + "/" + Year.Value.ToString();

            string gen;
            bool a = genderm.Checked;
            if (a)
            {

                gen = "Male";
            }
            else
                gen = "Female";
            obj.MainPageValues(contact_fname.Value.ToString(), contact_lname.Value.ToString(), contact_email.Value.ToString(), contact_Password.Value.ToString(), x, gen);

            int userrid = obj.getuseridonemail(contact_email.Value.ToString(), contact_Password.Value.ToString());
            Session["id"] = userrid;
            Session["email"] = contact_email.Value.ToString();
            Session["password"] = contact_Password.Value.ToString();
            Session["birthdate"] = x;
            Session["gender"]=gen;
            Response.Redirect("StepsAfterSignUp.aspx");
        }
        public bool CheckValues()
        {

            myDAL obj = new myDAL();
            int check = obj.CheckValuesInDb(contact_email.Value.ToString());
            if (check > 0)
                return true;
            else
                return false;



        }

        public void ButtonClick55(object sender, EventArgs e)
        {
            bool c;
            c = CheckValues();
            if (c != true)
            {
                getvalues();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Email address already exists');window.location.replace('fb.aspx');", true);
            }
        }

    }
}