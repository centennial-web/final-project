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
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get logged customer id
            long customerId = db.Connection.GetCustomerIdByEmail(Context.User.Identity.Name) ?? 0;

            // Add product
            var pid = Request["ProductId"];
            if (pid != null)
            {
                var productId = Convert.ToInt64(pid);

                // Get restaurant Id by product id
                long restaurantId = db.Connection.GetRestaurantIdByProductId(productId);

                // Inclusao do produto no shopping cart
                if (!db.Connection.CartIsOpen(customerId, out long shoppingCartId))
                {
                    // Abre shopping cart
                    shoppingCartId = db.Connection.OpenCart(customerId, restaurantId);
                }

                // Get product price and discount
                db.Connection.GetProductPriceAndDiscount(productId, out decimal price, out decimal discount);

                // Incluir produto
                db.Connection.AddProductToCart(shoppingCartId, productId, 1, price, discount);

                Response.Redirect("/Pages/Menu.aspx?RestaurantId=" + restaurantId);
                Response.End();

                return;
            }

            // Show shopping cart
            long cartId = db.Connection.GetShoppingCart(customerId, out string restaurantName, out string paymentMethod);
            lblRestaurant.Text = restaurantName;
        }
    }
}