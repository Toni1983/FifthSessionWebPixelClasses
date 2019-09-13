using AdminTemplate.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminTemplate.Admin.UcWebSite
{
    public partial class UcNotifications : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            DenemeDbEntities db = new DenemeDbEntities();
            db.Notifications.Add(new Notifications
            {
                Description = txtDescription.Text,
                IsActive = chkIsActive.Checked,
                RegisterDate = DateTime.Now,
                Title = txtTitle.Text
            });
            db.SaveChanges();
            GridView1.DataBind();
        }
    }
}