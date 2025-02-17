﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AccountingNote.Auth;
using AccountingNote.DBSource;

namespace AccountingNote
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.Session["UserLoginInfo"] != null)
            {
                this.plcLogin.Visible = false;
                Response.Redirect("/SystemAdmin/UserInfo.aspx");
            }
            else
            {
                this.plcLogin.Visible = true;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string inp_account = txtAccount.Text;
            string inp_PWD = txtPwd.Text;

            string msg;
            if(!AuthManager.TryLogin(inp_account, inp_PWD, out msg))
            {
                this.ltlMsg.Text = msg;
                return;
            }
            Response.Redirect("/SystemAdmin/UserInfo.aspx");
        }
    }
}