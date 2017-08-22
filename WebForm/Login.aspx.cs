using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" & TextBox2.Text == "admin")
            {
                Response.Redirect("Database.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
                Int32 verify;
                string query1 = "Select count(*) from UserDb where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                con.Open();
                verify = Convert.ToInt32(cmd1.ExecuteScalar());
                con.Close();
                if (verify > 0)
                {
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username and Password')</script>");
                    //Label4.Text = "Invalid Username and Password";
                }
            }
        }
    }
    
}