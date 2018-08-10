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
            if (!IsPostBack)
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
                lblRestaurant.Text = restaurantName + "Order";
                GetShoppingCartItems(cartId, out decimal totalPrice, out decimal totalDiscount, out decimal total);
                lblTotalItems.Text = string.Format("{0:c2}", totalPrice);
                lblTotalDiscount.Text = string.Format("{0:c2}", totalDiscount);
                lblTotalGeneral.Text = string.Format("{0:c2}", total);
            }
        }

        private void GetShoppingCartItems(long shoppingCartId, 
            out decimal totalPrice, out decimal totalDiscount, out decimal total)
        {
            totalPrice = 0;
            totalDiscount = 0;
            total = 0;

            using (SqlConnection conn = db.Connection.New())
            {
                conn.Open();
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = @"Select 
	                                        I.Id,
	                                        I.ShoppingCartId,
	                                        I.ProductId,
	                                        P.Name,
	                                        I.Quantity,
	                                        I.Price,
	                                        I.Discount,
	                                        (I.Price * I.Quantity - I.Discount) Total
                                         From ShoppingCartItems I
                                        Inner Join Products P On (P.Id = I.ProductId)
                                        Where ShoppingCartId = @shoppingCartId
                                        Order By P.Name";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@shoppingCartId", shoppingCartId);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        foreach (DataRow row in dataTable.Rows)
                        {
                            totalPrice += Convert.ToDecimal(row["Price"]);
                            totalDiscount += Convert.ToDecimal(row["Discount"]);
                            total += Convert.ToDecimal(row["Total"]);
                        }

                        rptProducts.DataSource = dataTable;
                        rptProducts.DataBind();
                    }
                }
            }
        }

        protected void btnRemove_Click(object sender, ImageClickEventArgs e)
        {
            // Get id
            long shoppingCartItemId = Convert.ToInt64(((ImageButton)sender).CommandArgument);

            // Delete
            db.Connection.DeleteShoppingCartItem(shoppingCartItemId);

            // Reload
            Response.Redirect("/Pages/ShoppingCart.aspx");
            Response.End();
        }
    }
}