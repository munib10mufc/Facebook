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
    public partial class Steps1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void uploadPCXLogo()
        {

            Boolean fileOK = false;

            // string subPath = "Image";
            bool IsExists = System.IO.Directory.Exists(Server.MapPath("images/"));
            if (!IsExists)
                System.IO.Directory.CreateDirectory(Server.MapPath("images/"));

            String path = Server.MapPath("images/");
            String fileExtension = "";
            if (FileUpload1.HasFile)
            {

                System.IO.DirectoryInfo FilesToClear = new DirectoryInfo(path);

                fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg", ".tiff" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    string fulpath = path + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(fulpath);
                }
                catch (Exception ex)
                {
                }
            }
            else
            {
            }

        }



        private void setImage()
        {
            string imageName = FileUpload1.FileName;//"avatar.png";
            char a = 'c';
            int id = Convert.ToInt32(Session["id"]);
            string imgURL = "images/" + imageName;
            myImage.ImageUrl = imgURL;
            myDAL obj = new myDAL();
            obj.setImageName(imageName, id, a);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            uploadPCXLogo();
            setImage();
        }
    }
}