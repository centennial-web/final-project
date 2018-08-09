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
        SqlConnection cn = new SqlConnection(@" "); // INSERT CONNECTION INFO
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            displayData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        public void displayData()
        {
            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select Product_id,Product_Name,Product_Desc, price FROM Product join product_price", cn);//Confirm table's name (produto) and RESTRITION WITH RESTAURANT NAME 
                DataSet ds = new DataSet();
                da.Fill(ds);
                dtlShoppingList.DataSource = ds;
                dtlShoppingList.DataBind();
            }
            finally
            {

                cn.Close();
            }
        }

        protected void btnProceedToCheckout_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("~/Payment.aspx");
        }
    }
}