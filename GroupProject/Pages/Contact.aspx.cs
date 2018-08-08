using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Pages
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Submit_Click(object sender, EventArgs e)
        {

            //Variables 
            string name = txtContact_Name.Text;
            string email = txt_ContactEmail.Text;
            int phone = Convert.ToInt32(txtContact_Phone.Text);
            string subject = txtContact_Subject.Text;
            string message = txt_ContactMessage.Text;




        }
    }
}