using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace HRMS.Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter both Email and Password.');", true);
                return;
            }

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("sp_Auth_ValidateLogin_vy", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                             
                                Session["UserId"] = reader["UserId"].ToString();
                                Session["UserFullName"] = reader["FullName"].ToString();
                                Session["UserEmail"] = reader["Email"].ToString();
                                Session["ProfilePicture"] = reader["ProfilePicture"].ToString();

                                int roleId = Convert.ToInt32(reader["RoleId"]);
                                Session["RoleId"] = roleId;

                            
                                if (roleId == 3) // Admin User Account context
                                {
                                    Response.Redirect("~/Admin/AdminDashboard.aspx", false);
                                }
                                else if (roleId == 8) // Manager structural profile
                                {
                                    Response.Redirect("~/Manager/ManagerDashBoard.aspx", false);
                                }
                                else // Generic Employee or client roles fallback framework layout
                                {
                                    Response.Redirect("~/User/UserDashBoard.aspx", false);
                                }
                                Context.ApplicationInstance.CompleteRequest();
                            }
                            else
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Active Credentials or Hashed password mismatch.');", true);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('Auth Error: {ex.Message.Replace("'", "\\'")}');", true);
                    }
                }
            }
        }
    }
}