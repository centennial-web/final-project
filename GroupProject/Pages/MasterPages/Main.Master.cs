using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Pages.MasterPages
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get customer cart count
            var cartItemsCount = db.Connection.CartItemsCountFromLoggedUser(Context);
            
            // Show badge if cart is not empty
            pnlBadge.Visible = cartItemsCount > 0;
            lblBadge.Text = Convert.ToString(cartItemsCount);
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");
        }
    }
}