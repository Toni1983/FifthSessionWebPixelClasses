﻿using AdminTemplate.Moderna.Models;
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
        CountriesEntities db = new CountriesEntities();
        protected void BtnCountry_Click(object sender, EventArgs e)
        {
            
            //foreach (var item in Repeater1.Items)
            //{
                
            //    
            //}
            
        }
        protected void btnCountry_Click(object sender, EventArgs e)
        {
            var country = db.Countries.FirstOrDefault(x => x.CountryName == ListView1.DataKeyNames.ToString());
            txtCountry.Text = country.CountryName;
        }


    }
}