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

        internal static void OpenCart(long customerId, object restaurantId)
        {
            throw new NotImplementedException();
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

        public static bool CartIsOpen(long customerId, out long shoppingCartId)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select Id from ShoppingCarts Where CustomerId = @customerId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@customerId", customerId);
                    object obj = cmd.ExecuteScalar();
                    if (obj != null && obj != DBNull.Value)
                    {
                        shoppingCartId = Convert.ToInt32(obj);
                        return (Convert.ToInt32(obj) > 0);
                    }
                    shoppingCartId = 0;
                    return false;
                }
            }
        }

        public static long GetRestaurantIdByProductId(long productId)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select RestaurantId from Products Where Id = @productId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@productId", productId);
                    object obj = cmd.ExecuteScalar();
                    if (obj != null && obj != DBNull.Value)
                    {
                        return (long)obj;
                    }
                    return 0;
                }
            }
        }

        public static long OpenCart(long customerId, long restaurantId)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Insert Into ShoppingCarts(RestaurantId, CustomerId) Values (@RestaurantId, @CustomerId); SELECT SCOPE_IDENTITY()";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@RestaurantId", restaurantId);
                    cmd.Parameters.AddWithValue("@CustomerId", customerId);
                    object obj = cmd.ExecuteScalar();
                    if (obj != null && obj != DBNull.Value)
                    {
                        return Convert.ToInt64(obj);
                    }
                    else return 0;
                }
            }
        }

        public static void AddProductToCart(long shoppingCart, long productId, int quantity, decimal price, decimal discount)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Insert Into ShoppingCartItems (ShoppingCartId, ProductId, Quantity, Price, Discount) 
                                        Values (@ShoppingCartId, @ProductId, @Quantity, @Price, @Discount);
                                        SELECT SCOPE_IDENTITY()";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@ShoppingCartId", shoppingCart);
                    cmd.Parameters.AddWithValue("@ProductId", productId);
                    cmd.Parameters.AddWithValue("@Quantity", quantity);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.Parameters.AddWithValue("@Discount", discount);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static void GetProductPriceAndDiscount(long productId, out decimal price, out decimal discount)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select Price, DiscountValue From Products
                                        Where Id = @ProductId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@ProductId", productId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        price = reader.GetDecimal(0);
                        discount = reader.GetDecimal(1);
                    }
                }
            }
        }

        public static long GetRestaurantIdByProductId(long productId, out string name)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select R.Name, R.Id From Restaurants R 
                                        Inner Join Products P On (P.RestaurantId = R.Id)
                                        Where P.Id = @productId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@productId", productId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        reader.Read();
                        name = reader.GetString(0);
                        return reader.GetInt64(1);
                    }
                }
            }
        }

        public static long GetShoppingCart(long customerId, out string restaurantName, out string paymentMethod)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select R.Name, S.PaymentMethod, S.Id
                                        From ShoppingCarts S
                                        Inner Join Restaurants R On (R.Id = S.RestaurantId)
                                        Where S.CustomerId = @customerId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@customerId", customerId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        restaurantName = reader.GetString(0);
                        paymentMethod = reader.IsDBNull(1) ? string.Empty : reader.GetString(1);
                        return reader.GetInt64(2);
                    }
                }
            }
        }

        public static void DeleteShoppingCartItem(long shoppingCartItemId)
        {
            using (var conn = New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Delete From ShoppingCartItems Where Id = @shoppingCartItemId";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@shoppingCartItemId", shoppingCartItemId);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}