using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace facebook
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutsmalldp.ImageUrl = Session["profilepic"].ToString();
            aboutcollegeoruni.Text = Session["education"].ToString();
            aboutbirthdate.Text=Session["birthdate"].ToString();
            aboutcurrentcity.Text=Session["currentloc"].ToString();
            aboutemail.Text = Session["email"].ToString();
            aboutgender.Text = Session["gender"].ToString();
            abouthometown.Text = Session["hometown"].ToString();
            aboutlivesin.Text=Session["currentloc"].ToString();
            aboutstudied.Text=Session["education"].ToString();
            aboutworkedat.Text=Session["workplace"].ToString();
        }
    }
}