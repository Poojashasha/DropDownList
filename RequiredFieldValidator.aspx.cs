using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class RequiredFieldValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Data Saved";
            }
            else
            {
                Label1.Text = "Data Not Saved";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}