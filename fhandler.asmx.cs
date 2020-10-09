using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using facebook.DAL;
using System.Text;
namespace facebook
{
    /// <summary>
    /// Summary description for fhandler
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class fhandler : System.Web.Services.WebService
    {

        [WebMethod(EnableSession = true)]
        public String postnewstatus(String status)
        {
            myDAL obj = new myDAL();
            int id = 0;
            id = Convert.ToInt32(Session["id"]);
            String username = Session["username"].ToString();
            String picurl = Session["profilepic"].ToString();
           int postid=obj.storestatus(status, id);
           String des = "", tim = "";
           obj.getstatuscontent(postid, out des, out tim);
            StringBuilder var = new StringBuilder();

            var.Append("{\"profileimage\": \""); 
            var.Append(picurl);
            var.Append("\",\"profilename\": \"");
            var.Append(username); 
            var.Append("\",\"posttime\": \"");
            var.Append(tim);
            var.Append("\",\"postcontent\": \"");
            var.Append(des);
            var.Append("\",\"postid\": \"");
            var.Append(postid);
            var.Append("\"}");
            //building html
            //var.Append("{\"pText\": \"");  // { "pText" : "txt" , "Uname" : "
            //var.Append(status);
            //var.Append("\",\"Uname\": \"");
            //var.Append(_uName);  //user name
            //var.Append("\",\"postID\": \"");
            //var.Append(postID);
            
            return var.ToString();
        }
    }
}
