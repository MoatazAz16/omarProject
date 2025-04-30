using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql1 = string.Format("select * from [user] where [username]='{0}'", this.txtusername.Text);
        //this.lblsignup.Text = sql1;

        if (this.txtusername.Text == "" || this.txtPass.Text == "" || this.txtEmail.Text == "" || this.txtPhone.Text == "")
            this.lblInfo.Text = "some data is empty";
        else
        {
            ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
            if (ws.isExistUser(this.txtusername.Text))
                this.lblInfo.Text = "user already exists";
            else
            {
                ws.Adduser(this.txtusername.Text, this.txtPass.Text, this.txtPhone.Text, this.txtEmail.Text);

                this.lblInfo.Text = "you have registered successfully";
            }

            // Response.Redirect("homeUser.aspx");
        }

    }
}
