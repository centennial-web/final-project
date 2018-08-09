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
            ShowRestauranteName();

            if (!IsPostBack)
            {
                ShowData();
            }
        }

        private void ShowRestauranteName()
        {
            var restaurantId = Request["RestaurantId"] ?? string.Empty;

            using (var conn = db.Connection.New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = "Select Name From Restaurants Where Id = " + restaurantId;
                    object obj = cmd.ExecuteScalar();
                    if (obj != null && obj != DBNull.Value)
                    {
                        lblRestaurante.Text = (string)obj + " Menu";
                    }
                }
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
                    var restaurantId = Request["RestaurantId"] ?? string.Empty;

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
                                    , restaurantId);

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