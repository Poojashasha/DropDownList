using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class UseSubmitBehaviour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "You Entered " + TextBox1.Text;
        }
    }
}