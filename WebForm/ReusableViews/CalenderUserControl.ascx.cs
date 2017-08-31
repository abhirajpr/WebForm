using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.ReusableViews
{
   


    public partial class CalenderUserControl : System.Web.UI.UserControl
    {
        private string displayText;
        public string DisplayText
        {
            get { return displayText; }
            set { label1.Text = value; }
        }

        public DateTime GetDate
        {
            get { return Calendar1.SelectedDate; }
        }
        private bool disableFutureDates;

        public bool DisableFutureDates
        {
            set { disableFutureDates = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now;
            }
        }
        protected void imgbutton_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            textbox1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (disableFutureDates & e.Day.Date > DateTime.Now)
                e.Day.IsSelectable = false;
        }
    }
}