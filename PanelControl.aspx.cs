using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class PanelControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "-1")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "Admin")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "NonAdmin")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }
    }
}