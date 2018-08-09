using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using GroupProject.db;
using System.Data;

namespace GroupProject.Pages
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
        }

        protected void ShowData()
        {
            using (SqlConnection conn = db.Connection.New())
            {
                conn.Open();
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    // Search term
                    var term = Request["RestaurantId"] ?? string.Empty;

                    cmd.CommandText = string.Format(
                                        @"Select 
	                                        P.Id,
	                                        P.RestaurantId,
	                                        R.Name RestaurantName,
	                                        C.Name Category,
	                                        P.Name,
	                                        P.Description,
	                                        P.Price,
	                                        P.DiscountValue,
	                                        P.Active 
                                        From Products P
                                        Inner Join Restaurants R On (R.Id = P.RestaurantId)
                                        Inner Join Categories C On (C.Id = P.CategoryId)
                                        Where P.RestaurantId = {0}
                                        Order by C.Name, P.Name"
                                    , term);

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        rptProducts.DataSource = dataTable;
                        rptProducts.DataBind();
                    }
                }
            }
        }
    }
}