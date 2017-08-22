using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Authentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Request Executed Context : " + System.Security.Principal.WindowsIdentity.GetCurrent().Name + "<br/>");
            Response.Write("Is Athenticated : " + User.Identity.IsAuthenticated + "<br/>");
            Response.Write("Authetication Type, Is Athenticated : " + User.Identity.AuthenticationType + "<br/>");
            Response.Write("Authentication Name, Is Athenticated : " + User.Identity.Name + "<br/>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("book.xml"));
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}