using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminTemplate.Models;
namespace AdminTemplate.Admin.UcWebSite
{
    public partial class UcProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            DenemeDbEntities db = new DenemeDbEntities();
            ImageUpload imageUpload = new ImageUpload();
            var paths = imageUpload.ImageResize(fuImage);
            db.Product.Add(new Product
            {
                Description = txtDescription.Text,
                IsActive = chkIsActive.Checked,
                ProductName = txtProductName.Text,
                RegisterDate = DateTime.Now,
                UnitPrice = Convert.ToSingle(txtUnitPrice.Text),
                UnitsInStock = Convert.ToInt16(txtUnitsInStock.Text),
                ImageURL = paths.Item1,
                ImageURLt = paths.Item2
            });
            db.SaveChanges();
        }
    }
}