using facebook.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace facebook
{
    public partial class t : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                masterPageUserName.Text = Session["userfirstname"].ToString();
                smalldp.ImageUrl = Session["profilepic"].ToString();
                profileimage.ImageUrl = Session["profilepic"].ToString();
                cover.ImageUrl = Session["coverpic"].ToString() ;
                leftsideUserNAme.Text = Session["userfirstname"].ToString() + " " + Session["userlastname"].ToString();
                LoadRequests();
        }
        public void Searchpeople(object sender, EventArgs e)
        {
            SearchText.A.globalSearchText = searchbox.Text;
            Response.Redirect("Search.aspx");
        }
        public void LoadRequests()
        {
            int myID = Convert.ToInt32(Session["id"]);
            DataTable DT = new DataTable();
            DataTable DT2 = new DataTable();
            myDAL obj = new myDAL();

            int found;

            found= obj.getallrequests(myID, ref DT);
            int Rows = DT.Rows.Count;

            for (int i = 0; i < Rows; i++)
            {

                DT2 = obj.getuserdetails(Convert.ToInt32(DT.Rows[i][0]));

                HtmlGenericControl breakline = new HtmlGenericControl("div");
                breakline.InnerHtml = "</br></br>";
                HtmlGenericControl post = new HtmlGenericControl("div");
                PlaceHolder1.Controls.Add(breakline);
                PlaceHolder1.Controls.Add(post);


                post.ID = "Profile" + i;
                post.Attributes["class"] = "Profile";
                HtmlGenericControl ProfileImage = new HtmlGenericControl("div");
                ProfileImage.ID = "ProfileImage" + i;
                ProfileImage.Attributes["class"] = "ProfileImage";


                HtmlGenericControl ProfileName = new HtmlGenericControl("div");
                ProfileName.ID = "ProfileName" + i;
                ProfileName.Attributes["class"] = "ProfileName";
                ProfileName.InnerHtml = DT2.Rows[0][0].ToString() + " " + DT2.Rows[0][1].ToString();


                HtmlGenericControl AddButton = new HtmlGenericControl("div");
                AddButton.ID = DT.Rows[i][0].ToString();
                AddButton.InnerHtml = "Accept Request";
                AddButton.Attributes["class"] = "Add_Button";
                AddButton.Attributes["runat"] = "server";

                post.Controls.Add(ProfileImage);
                post.Controls.Add(ProfileName);
                post.Controls.Add(AddButton);

                Image img = new Image();
                img.ImageUrl ="images/"+ DT2.Rows[0][2].ToString();
                img.AlternateText = "Test image";
                img.Attributes["class"] = "ImageClass";
                ProfileImage.Controls.Add(img);

            }




        }
    }
}