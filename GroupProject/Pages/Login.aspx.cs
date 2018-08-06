using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Focus();
        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validation
            if (email == "")
            {
                lblEmailError.Text = "Email is required";
                txtEmail.Attributes["class"] = "group-input group-input-error";
            }
            else
            {
                lblEmailError.Text = "";
                txtEmail.Attributes["class"] = "group-input";
            }
            if (password == "")
            {
                lblPasswordError.Text = "Password is required";
                txtPassword.Attributes["class"] = "group-input group-input-error";
            }
            else
            {
                lblPasswordError.Text = "";
                txtPassword.Attributes["class"] = "group-input";
            }

            // Do not hit database id we don't need
            if (lblEmailError.Text != "" || lblPasswordError.Text != "")
            {
                //Session["email"] = "";

                if (lblEmailError.Text != "")
                {
                    txtEmail.Focus();
                    return;
                }
                if (lblPasswordError.Text != "")
                {
                    txtPassword.Focus();
                    return;
                }
            }

            // Database
            using (var conn = db.Connection.New())
            {
                conn.Open();
                using (var cmd = conn.CreateCommand())
                {
                    // Never use unencrypted passwords. Always use hashes at least like md5, sha# or even better, bcrypt
                    cmd.CommandText = "Select Count(*) From Customers Where Email=@Email And Password=@Password";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    if (((int)cmd.ExecuteScalar()) == 1)
                    {
                        FormsAuthentication.RedirectFromLoginPage(email, true);
                    }
                    else
                    {
                        //Session["email"] = "";
                        lblEmailError.Text = "Email or password does not match";
                        txtEmail.Attributes["class"] = "group-input group-input-error";
                        lblPasswordError.Text = "";
                        txtPassword.Attributes["class"] = "group-input";
                    }
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}