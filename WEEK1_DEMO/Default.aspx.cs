﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WEEK1_DEMO
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {

            }
            if (!IsPostBack)
            {
                loadDDL();
                ddlItems.Items.Insert(0, "I am an item!");
                
            }
            lblItemCount.Text = string.Concat("Number of Items: " + ddlItems.Items.Count.ToString());
            
        }

        private void loadDDL()
        {
            ddlItems.Items.Clear();
            for (int i = 0; i < 1950; i++)
            {
                ddlItems.Items.Insert(i, Convert.ToString(DateTime.Now.Year));        
            }
        }

   

        protected void cbxDisable_CheckedChanged(object sender, EventArgs e)
        {
            btnItems.Enabled = (cbxDisable.Checked)? false : true;
        }

        protected void btnItems_Click(object sender, EventArgs e)
        {
            ddlItems.Items.RemoveAt(ddlItems.Items.Count - 1);
            lblItemCount.Text = string.Concat("Number of Items: " + ddlItems.Items.Count.ToString());
        }
    }
}