using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query1 = "Select count(*) from UserDb where Username='" + TextBox1.Text + "' and Email='" + TextBox2.Text + "' ";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            Int32 verify = Convert.ToInt32(cmd1.ExecuteScalar());
            if (verify == 0)
            {

                SqlCommand cmd = new SqlCommand("insert into UserDb(Username,Email,Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
                cmd.CommandType = CommandType.Text;
                Label6.Text = "User Registerd";
                Label7.Text = "";
                cmd.ExecuteNonQuery();
            }
            else
            {
                Label7.Text = "User Already Exist";
                Label6.Text = "";
            }

            con.Close();

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Server.Transfer("~/ Webforms / Index.aspx");
        //}

    }
}