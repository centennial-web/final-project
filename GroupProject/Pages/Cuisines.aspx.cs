using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Pages
{
    public partial class Cousines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData();
        }

        protected void ShowData()
        {
            using (var conn = db.Connection.New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select C.Id, C.Name, (Select Count(*) From RestaurantCuisines Where CousineId = C.Id) Count from Cuisines C
                                        Order By C.Name";

                    using (var adapter = new SqlDataAdapter(cmd))
                    {
                        var dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        rptCuisines.DataSource = dataTable;
                        rptCuisines.DataBind();
                    }
                }
            }
        }

    }
}