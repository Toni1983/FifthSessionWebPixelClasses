using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JustPraktice
{
    public partial class TestingListView : System.Web.UI.Page
    {
        SqlConnection cons = new SqlConnection(@"Data Source=DESKTOPTONI\SQLEXPRESS;Initial Catalog=Library;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Books", cons);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            ListView2.DataSource = dt;
            ListView2.DataBind();
            ListView3.DataSource = dt;
            ListView3.DataBind();
        }
    }
}