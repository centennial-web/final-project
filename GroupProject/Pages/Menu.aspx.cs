using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using GroupProject.db;
using System.Data;

namespace GroupProject.Pages
{
    public partial class Menu : System.Web.UI.Page
         
          
    {

        SqlConnection cn = new SqlConnection(@" "); // INSERT CONNECTION INFO
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Menu is gonna bring list of dishes related to a specific restaurant from db

            //Method will display data from db 
            displayData();

        }

        public void displayData()
        {
            try
            {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select Product_id,Product_Name,Product_Desc, price FROM Product join product_price", cn);//Confirm table's name (produto) and RESTRITION WITH RESTAURANT NAME 
                DataSet ds = new DataSet();
                da.Fill(ds);
                dtlMenu.DataSource = ds;
                dtlMenu.DataBind();
            }
            finally
            {

                cn.Close();
            }
        }


        protected void dtlMenu_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string id = ((Label)e.Item.FindControl("Label1")).Text;
            string name = ((Label)e.Item.FindControl("Label2")).Text;
            string description = ((Label)e.Item.FindControl("Label3")).Text;
            string price = ((Label)e.Item.FindControl("Label4")).Text;

           // cmd = new SqlCommand("insert into OrderItems values ('{0}','{1}','{2}','{3}')",id,name,description,price);


        }

    }
}