using System;
using System.Data;
using System.Data.SqlClient;

namespace GroupProject.Pages
{
    public partial class Restaurants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //bool cameFromDefaultPage = (Page.Request.Url.LocalPath != Page.Request.UrlReferrer.LocalPath);

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
                    var term = Request["q"] ?? string.Empty;
                    var cuisineId = Request["CuisineId"] ?? string.Empty;

                    if (cuisineId != string.Empty)
                    {
                        cmd.CommandText = string.Format(
                                            @"Select
	                                        R.Id, R.Name, R.PhoneNumber,
	                                        R.Street, R.ZipCode, R.City,
	                                        R.Province, R.Website, R.Delivery,
	                                        R.DeliveryValue, R.Comments
                                        From Restaurants R
	                                        Inner Join RestaurantCuisines RxC On (R.Id = RxC.RestaurantId)
	                                        Inner Join Cuisines C On (Rxc.CousineId = C.Id)
                                        Where RxC.CousineId = {0}
                                        Group By 
	                                        R.Id, R.Name, R.PhoneNumber,
	                                        R.Street, R.ZipCode, R.City,
	                                        R.Province, R.Website, R.Delivery,
	                                        R.DeliveryValue, R.Comments
                                        Order by R.Name"
                                        , cuisineId);
                    }
                    else
                    {
                        cmd.CommandText = string.Format(
                                            @"Select
	                                            R.Id, R.Name, R.PhoneNumber,
	                                            R.Street, R.ZipCode, R.City,
	                                            R.Province, R.Website, R.Delivery,
	                                            R.DeliveryValue, R.Comments
                                            From Restaurants R
	                                            Inner Join RestaurantCuisines RxC On (R.Id = RxC.RestaurantId)
	                                            Inner Join Cuisines C On (Rxc.CousineId = C.Id)
                                            Where R.Name Like '%{0}%' or C.Name Like '%{0}%'
                                            Group By 
	                                            R.Id, R.Name, R.PhoneNumber,
	                                            R.Street, R.ZipCode, R.City,
	                                            R.Province, R.Website, R.Delivery,
	                                            R.DeliveryValue, R.Comments
                                            Order by R.Name"
                                        , term);
                    }

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        rptRestaurants.DataSource = dataTable;
                        rptRestaurants.DataBind();
                    }
                }
            }
        }
    }
}