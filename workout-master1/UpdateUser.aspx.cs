using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = ws.showUser(Session["username"].ToString());
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
            this.pnl1.Visible = true;
            ds = ws.showUser(Session["username"].ToString());
            this.lblUsername.Text = Session["username"].ToString();
            this.txtPass.Text = ds.Tables[0].Rows[0][1].ToString();
            this.txtphone.Text = ds.Tables[0].Rows[0][2].ToString();
            this.txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ws.UpdateUser(Session["username"].ToString(), this.txtPass.Text, this.txtphone.Text, this.txtEmail.Text);

        DataSet ds = ws.showUser(Session["username"].ToString());
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();

    }
}