using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class PanelControlDyanamicCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerateControl_Click(object sender, EventArgs e)
        {
            int Labelcount = Convert.ToInt32(txtLabelsControls.Text);
            int TextBoxcount = Convert.ToInt32(txtTextBoxControls.Text);
            int Buttoncount = Convert.ToInt32(txtButtonsControls.Text);

            foreach (ListItem li in cblBoxlistControlType.Items)
            {
                if (li.Selected)
                {
                    if (li.Value == "Label")
                    {
                        for (int i = 0; i < Labelcount; i++)
                        {
                            Label lbl = new Label();
                            lbl.Text = "Label " + i.ToString();
                            PnlLabel.Controls.Add(lbl);
                        }
                    }
                    else if (li.Value == "TextBox")
                    {
                        for (int i = 0; i < TextBoxcount; i++)
                        {
                            TextBox txt = new TextBox();
                            txt.Text = "Text Box " + i.ToString();
                            PnlTextBox.Controls.Add(txt);
                        }
                    }
                    else if (li.Value == "Button")
                    {
                        for (int i = 0; i < Buttoncount; i++)
                        {
                            Button btn = new Button();
                            btn.Text = "Button " + i.ToString();
                            PnlButton.Controls.Add(btn);
                        }
                    }
                }
            }
        }
    }
}
