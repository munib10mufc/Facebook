using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using facebook.DAL;
using System.IO;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

namespace facebook
{
    public partial class Step2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        public void insertvalues(object sender, EventArgs e)
        {
            if (Text1.Value.ToString() == "" || Text2.Value.ToString() == "" || Text3.Value.ToString() == "" || Text4.Value.ToString() == "" || Text5.Value.ToString() == "" || Text6.Value.ToString() == "")
            {
                Response.Write("<script>alert('Please Enter all fields');</script>");
            }
            else
            {
                int id = Convert.ToInt32(Session["id"]);
                myDAL obj = new myDAL();
                obj.InsertValuesIntoDb(Text1.Value.ToString(), Text2.Value.ToString(), Text3.Value.ToString(), Text4.Value.ToString(), Text5.Value.ToString(),Text6.Value.ToString(), id);
                string fnam = "", lnam = "", bdate = "", gen = "", relig = "", currloc = "", hometwn = "", ppic = "", cpic = "",wo="",edu="",mob="";
                int userrid = 0;
                obj.SearchLogin2(ref userrid, Session["email"].ToString(), Session["password"].ToString(), out fnam, out lnam, out bdate, out gen, out relig, out currloc, out hometwn, out ppic, out cpic,out wo,out edu,out mob);
                Session["id"] = userrid;
                Session["currentloc"] = currloc;
                Session["hometown"] = hometwn;
                Session["religion"] = relig;
                Session["userfirstname"] = fnam;
                Session["userlastname"] = lnam;
                Session["profilepic"] = "images/" + ppic;
                Session["coverpic"] = "images/" + cpic;
                Session["workplace"] = wo;
                Session["education"] = edu;
                Session["mobilenumber"] = mob;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Login Successful');window.location.replace('Timeline.aspx');", true);
            
            }
        }
    }
}