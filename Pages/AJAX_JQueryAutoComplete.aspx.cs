using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Pages
{
    public partial class AJAX_JQueryAutoComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientIDMode = ClientIDMode.Static;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You were searching for: " + autocomplete.Value;
        }
    }
}