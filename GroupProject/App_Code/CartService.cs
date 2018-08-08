using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject.App_Code
{
    public class CartService
    {
        //BRINGING DATA FROM ORDER PAGE TO THE CART
        //String prodName = datalist1.text;
        //String prodDescription = datalist.text;
        //float price = datalist.text;
       // int quantity = txtOrder_Qty.text;
        //flot total = txtOrder_Total.text;


        public static int CartItemsCount(long customerId)
        {
            using (var conn = db.Connection.New())
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


        //public static void AddItemsToCart()
        //{

        //    using (var conn = db.Connection.New())
        //    {
        //        conn.Open();
        //        using (var cmd = conn.CreateCommand())
        //        {

        //            cmd.CommandText = @"Insert name, description, price into OrderItems where productId = lblProductId;
        //        }
        //    }

        //}

    }



}