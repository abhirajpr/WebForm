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
    public partial class Database : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=TestDB;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {


                int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
                SqlCommand cmd = new SqlCommand("DELETE FROM UserDb WHERE ID=" + Id + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
               Server.Transfer("Database.aspx");
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string UserID = GridView1.DataKeys[e.RowIndex].Values["ID"].ToString();
                string name = e.NewValues[0].ToString();
                string password = e.NewValues[1].ToString();
                string email = e.NewValues[2].ToString();
                con.Open();
                string sql = "update UserDb set Username='" + name + "', Password = '" + password + "', Email = '" + email + "' where ID='" + UserID + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                Server.Transfer("Database.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd3 = new SqlCommand("resetlogin", con);
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Database.aspx");
        }
    }
}