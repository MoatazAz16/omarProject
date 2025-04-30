using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DeleteUser : System.Web.UI.Page
{
    ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = ws.showUser(Session["username"].ToString());
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ws.Deleteuser(Session["username"].ToString());
        DataSet ds = ws.showUser(Session["username"].ToString());
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
        Session.Abandon();
        Session.Clear();
        //Response.Write("<script type=\"text/javascript\">alert('confiem your delete');</script>");
        Response.Redirect("Default.aspx");




    }
}