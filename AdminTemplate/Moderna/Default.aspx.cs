using AdminTemplate.Moderna.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminTemplate.Moderna
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCountry_Click(object sender, EventArgs e)
        {
            CountriesEntities db = new CountriesEntities();
            var country = db.Countries.FirstOrDefault(x => x.CountryName == ListView1.SelectedValue.ToString());
            txtCountry.Text = country.CountryName;
        }
        
    }
}