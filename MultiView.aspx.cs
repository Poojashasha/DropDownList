using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnGoToStep2_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnGoToStep1_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblGender.Text = ddlGender.SelectedValue;
            lblEmail.Text = txtEmailAddress.Text;
            lblMobile.Text = txtMobile.Text;

        }

        protected void button2_click(object sender, EventArgs e)
        {
            Response.Redirect("~/MultiView2.aspx");
        }

        protected void button1_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}