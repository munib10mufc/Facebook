using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using facebook.DAL;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.Services;

namespace facebook
{
    public partial class Timeline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            worklabelTL.Text = Session["workplace"].ToString();
            studylabelTL.Text = Session["education"].ToString();
            CurrentlocationTL.Text = Session["currentloc"].ToString();
            hometownTL.Text = Session["hometown"].ToString();
            myDAL obj = new myDAL();
            int count = 0;
            count = obj.getstatuscount(Convert.ToInt32(Session["id"]));
            if (count > 0)
                postnewstatus();
            
        }

        [WebMethod]
        public static void AcceptRequest(string temp)
        {

            myDAL d = new myDAL();
            d.AddFriends(SearchText.A.sender_id, temp);
        }

        protected void storestatus2(object sender, ImageClickEventArgs e)
        {
            myDAL obj = new myDAL();
            int id = 0;
            id = Convert.ToInt32(Session["id"]);
            obj.storestatus(TextBox1.Text.ToString(), id);
            TextBox1.Text = "";
            Response.Redirect("Timeline.aspx");
        }

        public void postnewstatus()
        {
            myDAL obj = new myDAL();
            int count = 0;
            string nam = "", profilepicture = "";

            count = obj.getstatuscount(Convert.ToInt32(Session["id"]));

            DataTable Profile = new DataTable();
            Profile = obj.getuserdetails(Convert.ToInt32(Session["id"]));
            nam = Profile.Rows[0][0].ToString() + " " + Profile.Rows[0][1].ToString();
            profilepicture = Profile.Rows[0][2].ToString();
            profilepicture = "images/" + profilepicture;

            DataTable dt = new DataTable();
            dt = obj.getstatuscontent(Convert.ToInt32(Session["id"]));
            for (int i = 0; i < count; i++)
            {


                HtmlGenericControl post = new HtmlGenericControl("div");

                post.EnableViewState = false;

                statuses.Controls.AddAt(0, post);

                post.ID = "post" + i;
                post.Attributes["class"] = "post";


                HtmlGenericControl post_image = new HtmlGenericControl("div");
                post_image.ID = "post_image" + i;
                post_image.Attributes["class"] = "post_image";

           
                Image ProfileImg = new Image();
                ProfileImg.ImageUrl = profilepicture;
                ProfileImg.AlternateText = "Test image";
                ProfileImg.Attributes["class"] = "post_image_size";
                post_image.Controls.Add(ProfileImg);


                HtmlGenericControl post_heading = new HtmlGenericControl("div");
                post_heading.ID = "post_heading" + i;
                post_heading.Attributes["class"] = "post_heading";
                post_heading.InnerHtml = nam;




                HtmlGenericControl post_heading_time = new HtmlGenericControl("div");
                post_heading_time.ID = "post_heading_time" + i;
                post_heading_time.Attributes["class"] = "post_heading_time";
                post_heading_time.InnerHtml = dt.Rows[i][1].ToString().Substring(0, 20);


                HtmlGenericControl post_content = new HtmlGenericControl("div");
                post_content.ID = "post_content" + i;
                post_content.Attributes["class"] = "post_content";

                HtmlGenericControl post_text = new HtmlGenericControl("div");
                post_text.Attributes["class"] = "content_status";
                post_text.InnerHtml = dt.Rows[i][0].ToString();


                post.Controls.Add(post_image);
                post.Controls.Add(post_heading);
                post.Controls.Add(post_heading_time);
                post.Controls.Add(post_text);
            }
        }
    }
}