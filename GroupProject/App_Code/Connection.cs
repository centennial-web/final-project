using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GroupProject.db
{
    public static class Connection
    {
        public static SqlConnection New()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["RestaurantDbAzure"].ConnectionString);
        }
    }
}