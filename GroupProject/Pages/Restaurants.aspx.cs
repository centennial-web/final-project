using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GroupProject.db;

namespace GroupProject.Pages
{
    public partial class Restaurants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool cameFromDefaultPage = (Page.Request.Url.LocalPath != Page.Request.UrlReferrer.LocalPath);
        }

        protected String GetHtmlTableData()
        {
            StringBuilder sb = new StringBuilder();

            using (SqlConnection conn = db.Connection.New())
            {
                conn.Open();
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    // Search term
                    var term = Request["q"] ?? string.Empty;

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
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Get data
                            var id = reader.GetInt64(0);
                            var name = reader.GetString(1);
                            var phoneNumber = reader.GetString(2);
                            var street = reader.GetString(3);
                            var zipCode = reader.GetString(4);
                            var city = reader.GetString(5);
                            var province = reader.GetString(6);
                            var website = reader.IsDBNull(7) ? string.Empty : reader.GetString(7);
                            var delivery = reader.GetBoolean(8);
                            var deliveryValue = reader.GetDecimal(9);
                            var comments = reader.IsDBNull(10) ? string.Empty : reader.GetString(10);

                            sb
                                .Append("<tr>")
                                .AppendFormat("<td>{0}</td>", name)
                                .AppendFormat("<td>{0}. {1}, {2} {3}</td>", street, city, province, zipCode)
                                .AppendFormat("<td>{0:(###) ###-####}</td>", Convert.ToInt64(phoneNumber))
                                .AppendFormat("<td>{0}</td>", delivery ? "Yes" : "No")
                                .AppendFormat("<td>{0:C2}</td>", deliveryValue)
                                .Append("<tr>");
                        }
                    }
                }
            }

            return sb.ToString();
        }
    }
}