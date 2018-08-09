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
            return new SqlConnection(ConfigurationManager.ConnectionStrings["LocalDb"].ConnectionString);
        }

        public static int CartItemsCount(long customerId)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select Count(*) ItemsCount From ShoppingCartItems I
                                        Join ShoppingCarts C On(I.ShoppingCartId = C.Id)
                                        Where C.CustomerId = @CustomerId
                                          And C.OrderId Is Null";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@CustomerId", customerId);
                    return (int)cmd.ExecuteScalar();
                }
            }
        }

        public static int CartItemsCountFromLoggedUser(HttpContext context)
        {
            if (context.User.Identity.IsAuthenticated)
            {
                long? customerId = GetCustomerIdByEmail(context.User.Identity.Name);
                if (customerId.HasValue)
                {
                    return CartItemsCount(customerId.GetValueOrDefault(0));
                }
            }
            return 0;
        }

        public static long? GetCustomerIdByEmail(string email)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = "Select Id From Customers Where email = @email";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@email", email);
                    object obj = cmd.ExecuteScalar();
                    if (obj != null && DBNull.Value != obj)
                    {
                        return (long)obj;
                    }
                    return null;
                }
            }
        }
    }
}