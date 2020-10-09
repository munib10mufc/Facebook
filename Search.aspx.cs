using facebook.DAL;
using facebook_web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using facebook.DAL;
using System.Web.UI.HtmlControls;
using System.Web.Services;
namespace facebook
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SearchPerson_();
        }
        public void SearchPerson_()
        {
            int found;
            string text = SearchText.A.globalSearchText.ToString();
            DataTable DT = new DataTable();
            DataTable DT2 = new DataTable();
            DataTable DT3 = new DataTable();
            myDAL obj = new myDAL();


            found = obj.getsearchedperson(text, ref DT);
            int Rows = DT.Rows.Count;


            for (int i = 0; i < Rows; i++)
            {
                if (DT.Rows[i][0].ToString() != SearchText.A.sender_id.ToString())
                {
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
                    ProfileName.InnerHtml = DT.Rows[i][1].ToString() + " " + DT.Rows[i][2].ToString();




                    obj.checksentrequests(Convert.ToInt32(Session["userid"]), ref DT2);
                    obj.getallfriends(Convert.ToInt32(Session["userid"]), ref DT3);
                    bool RqSent = false;
                    for (int j = 0; j < DT2.Rows.Count; j++)
                    {
                        if (DT2.Rows[j][0].ToString() == DT.Rows[i][0].ToString())
                        {
                            RqSent = true;
                        }

                    }
                    bool friend = false;
                    for (int p = 0; p < DT3.Rows.Count; p++)
                    {
                        if (DT3.Rows[p][0].ToString() == DT.Rows[i][0].ToString())
                        {
                            friend = true;
                        }

                    }

                    HtmlGenericControl AddButton = new HtmlGenericControl("div");
                    AddButton.ID = DT.Rows[i][0].ToString();
                    AddButton.Attributes["onclick"] = "AddFriend()";
                    if (RqSent == false && friend == false)
                    {
                        AddButton.InnerHtml = "+Add Friend";
                        AddButton.Attributes["class"] = "AddButton";
                    }
                    if (RqSent == true)
                    {
                        AddButton.Attributes["class"] = "AddButton2";
                        AddButton.InnerHtml = "Request Sent..";
                    }
                    if (friend == true)
                    {
                        AddButton.Attributes["class"] = "AddButton3";
                        AddButton.InnerHtml = "Friends..";
                    }

                    AddButton.Attributes["runat"] = "server";

                    post.Controls.Add(ProfileImage);
                    post.Controls.Add(ProfileName);
                    post.Controls.Add(AddButton);

                    Image img = new Image();
                    img.ImageUrl = "images/" + DT.Rows[i][3].ToString();
                    img.AlternateText = "Test image";
                    img.Attributes["class"] = "ImageClass";
                    ProfileImage.Controls.Add(img);
                }
            }
        }

        [WebMethod]
        public static void AddFriend(string temp)
        {
            myDAL obj = new myDAL();
            obj.SendRequest(SearchText.A.sender_id, temp);
        }
    }
}
