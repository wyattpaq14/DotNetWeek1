﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEEK1_DEMO
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            app_user au = app_user.Login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
            lblSalt.Text = au.Salt;
            lblPwd.Text = txtPassword.Text.Trim();
            lblHashedPw.Text = au.HashedPwd;
               
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            app_user you = new app_user(txtUsername.Text);

            string hsh = app_user.CreatePasswordHash(you.Salt, txtPassword.Text);

            if (hsh == you.HashedPwd)
            {
                you.validLogin = true;
            }
        }
    }
}