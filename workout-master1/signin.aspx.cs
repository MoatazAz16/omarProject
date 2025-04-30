using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();

        if (ws.isExistUserAndPass(this.txtusername.Text, this.txtpass.Text))
        {
            Session["username"] = this.txtusername.Text;
            Response.Redirect("homeuser.aspx");
        }

        else
        {
            this.lblInfo.Text = "User Doesn't Exist!";
        }
    }
}