﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Pages
{
    public partial class AJAX : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void cmdRefreshTime_Click(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToLongTimeString();
        }

    }
}