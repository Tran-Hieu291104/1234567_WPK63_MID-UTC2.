﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLayout_C7_
{
    
    public partial class DefaultMasterPage : System.Web.UI.MasterPage
    {
  

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public Button ButtonSearch
        {
            get { return btnSearch; }
        }
    }
}