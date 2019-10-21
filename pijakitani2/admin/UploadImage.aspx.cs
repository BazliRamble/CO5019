using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pijakitani2.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //create filename using query string
            string productID = Request.QueryString["Id"];
            string filename = productID + ".jpg";

            //note that this is missing alternate text and dimensions
            Image1.ImageUrl = "../images/products/" + filename;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //get the id from the query string (keeping it as a string is OK in this case)
            string ID = Request.QueryString["Id"];

            string filename = ID + ".jpg";
            string saveLocation = Server.MapPath("../images/products/") + filename;

            imageFileUpLoadControl.SaveAs(saveLocation);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("~/admin/default.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Page.Response.Redirect("~/admin/default.aspx");
        }
    }
}