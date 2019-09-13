using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminTemplate.Models;
namespace AdminTemplate.Admin.UcWebSite
{
    public partial class UcAbout : System.Web.UI.UserControl
    {
        DenemeDbEntities db = new DenemeDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtDescription.Text = db.Abouts.FirstOrDefault() == null
                        ? ""
                        : db.Abouts.FirstOrDefault().Description; 
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (db.Abouts.Any())
            {
                var editToAbout = db.Abouts.FirstOrDefault();
                editToAbout.Description = txtDescription.Text;
            }
            else
            {
                db.Abouts.Add(new Abouts
                {
                    Description = txtDescription.Text
                });
            }
            db.SaveChanges();
        }
    }
}