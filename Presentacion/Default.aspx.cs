﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOp2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx", false);
        }

        protected void ButtonOp1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx", false);
        }
    }
}