using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Webforms
{
    public partial class ForgotPassword : System.Web.UI.Page
    {

        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Username"].ToString();
            name = Label1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string name = Session["Username"];
            SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
            string password;
            //string query1 = "Select Password from UserDb where Username='" + name + "'";
            //SqlCommand cmd1 = new SqlCommand(query1, con);
            //password = cmd1.ExecuteScalar().ToString();
            con.Open();
            string query2 = "Select * from UserDb where Username='" + name + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataReader rd = cmd2.ExecuteReader();
            //while (rd.Read())
            //{
            //    var email = rd["Email"];
            //    Session["Username"] = TextBox1.Text;
            //    Session["Email"] = email;

            //}
            SqlCommand cmd=null;
            while (rd.Read())
            {
                var pass = rd["Password"];
                password = (string)pass;

                if (password == TextBox1.Text)
                {
                    string sql = "update UserDb set Password='" + TextBox2.Text + "' where Username = '" + name + "'";
                    cmd = new SqlCommand(sql, con);
                   
                }
            }
            rd.Close();
            cmd.ExecuteNonQuery();

            Response.Redirect("~/Login.aspx");
            con.Close();
        }
    }
}