using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class WizardControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Redirect("~/MulitView2.aspx");
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(e.NextStepIndex == 2)
            {
                lblFirstName.Text = txtFirstName.Text;
                lblLastName.Text = txtLastName.Text;
                lblGender.Text = ddlGender.SelectedValue;
                lblEmail.Text = txtEmailAddress.Text;
                lblMobile.Text = txtMobile.Text;
            }
        }
    }
}