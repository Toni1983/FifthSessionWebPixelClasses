using AdminTemplate.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminTemplate.Admin.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DenemeDbEntities db = new DenemeDbEntities();
            var admin = db.Users.FirstOrDefault(a => a.UserName == txtUserName.Text
            && a.Password == txtPassword.Text);

            if (admin==null)
            {
                Response.Redirect(@"~/Admin/Pages/Login.aspx");
            }
            Session["CurrentUser"] = "admin";
            //Session.Abandon();
            Response.Redirect(@"~/Admin/Pages/Notifications.aspx");
        }
    }
}