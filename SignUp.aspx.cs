using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using facebook.DAL;
using System.Data.SqlClient;

namespace facebook
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            SearchText.A.sender_id = userrid;
            Session["email"] = contact_email.Value.ToString();
            Session["password"] = contact_Password.Value.ToString();
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
        public void ButtonClick5(object sender, EventArgs e)
        {
            bool c;
            c = CheckValues();
            if (c != true)
            {
                getvalues();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Email address already exists');window.location.replace('SignUp.aspx');", true);
            }
        }
    }
}