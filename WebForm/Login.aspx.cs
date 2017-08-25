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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" & TextBox2.Text == "admin")
            {
                Server.Transfer("Database.aspx");
                //Response.Redirect("Database.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
                Int32 verify;
                string query1 = "Select count(*) from UserDb where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                string query2 = "Select * from UserDb where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                con.Open();
                SqlDataReader rd = cmd2.ExecuteReader();
                while(rd.Read())
                {
                    var email = rd["Email"];
                    Session["Username"] = TextBox1.Text;
                    Session["Email"] = email;
                }
                rd.Close();
                verify = Convert.ToInt32(cmd1.ExecuteScalar());
                con.Close();
                if (verify > 0)
                {
                    Server.Transfer("Welcome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username and Password')</script>");
                    //Label4.Text = "Invalid Username and Password";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int attempts;
            if (TextBox1.Text == "admin" & TextBox2.Text == "admin")
            {
                Server.Transfer("Database.aspx");
                //Response.Redirect("Database.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
                string query = "Select count(*) from UserDb where Username='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int verify;
                verify = Convert.ToInt32(cmd.ExecuteScalar());
                if(verify==1)
                {
                    string password;
                    string query1 = "Select Password from UserDb where Username='" + TextBox1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    password= cmd1.ExecuteScalar().ToString();

                    Boolean isLocked; 
                    string query5 = "Select isLocked from UserDb where Username='" + TextBox1.Text + "'";
                    SqlCommand cmd5 = new SqlCommand(query5, con);
                    isLocked = Convert.ToBoolean(cmd5.ExecuteScalar());

                    if (password== TextBox2.Text)
                    {
                        if (!isLocked)
                        {
                            string query2 = "Select * from UserDb where Username='" + TextBox1.Text + "'";
                            SqlCommand cmd2 = new SqlCommand(query2, con);
                            SqlDataReader rd = cmd2.ExecuteReader();
                            while (rd.Read())
                            {
                                var email = rd["Email"];
                                Session["Username"] = TextBox1.Text;
                                Session["Email"] = email;
                            }
                            rd.Close();

                            Server.Transfer("Welcome.aspx");
                        }
                        else
                        {
                            Label4.Text = "Your acoount is locked";
                        }
                    }
                    else
                    {
                        SqlCommand cmd3 = new SqlCommand("LoginAttempt", con);
                        cmd3.CommandType = CommandType.StoredProcedure;
                        SqlParameter username = new SqlParameter("@Username", TextBox1.Text);
                        cmd3.Parameters.Add(username);
                        //attempts = (Int32)cmd.ExecuteScalar();
                        SqlParameter parm3 = new SqlParameter("@LoginAttempts", SqlDbType.Int);
                        parm3.Direction = ParameterDirection.Output;
                        cmd3.Parameters.Add(parm3);
                        //con.Open();
                        cmd3.ExecuteNonQuery();

                        attempts = (int)cmd3.Parameters["@LoginAttempts"].Value;
                        if (attempts==0)
                        {
                            Label4.Text = "Your acoount is locked";
                        }
                        else
                        {
                            Label4.Text = "Only " + attempts + " Chance Left";
                        }

                    }
                    //rd.Close();


                }
                else
                {
                    Response.Write("<script>alert('Invalid Username and Password')</script>");  
                }



                con.Close();
            }


        }
    
    }
    
}