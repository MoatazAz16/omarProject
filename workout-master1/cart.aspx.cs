using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cart : System.Web.UI.Page
{

    public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
    static double cost = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = ws.showAllCartBy(Session["username"].ToString());
        if (ds.Tables[0].Rows.Count == 0)
        {
            this.status.Visible = true;
            this.status.Text = "the cart is empty";
        }

        if (!this.IsPostBack)
        {
            this.GridViewcart.AllowPaging = true;
            this.GridViewcart.PageSize = 4;
            bindthegridview();
            totalsum();
        }

        if (cost == 0)
        { this.checkout.Visible = false; }

        if (GridViewcart.Rows.Count == 0)
        {
            this.cartcleaner.Visible = false;
            this.checkout.Visible = false;
            totallbl.Visible = false;
            status.Text = "your cart is empty";

        }
    }

    public void bindthegridview()
    {
        if (Session["username"] == null)
        {

            this.status.Text = ("you should login");
            this.status.Visible = false;
            GridViewcart.Visible = false;
            totallbl.Visible = false;
        }
        else
        {

            this.GridViewcart.Visible = true;
            string username = Session["username"].ToString();
            DataSet ds = ws.showAllCartBy(username);
            this.GridViewcart.DataSource = ds;
            this.GridViewcart.DataBind();
            totalsum();
        }
    }

    protected void GridViewcart_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridViewcart.PageIndex = e.NewPageIndex;
        bindthegridview();

    }





    protected void totalsum()
    {
        double total = 0, price;
        int quantity;

        //string sql=string.Format("select quantity,ProdPrice from tempCart where [username ]='{0}'" , Session["username"].ToString());
        DataSet ds = ws.showAllCartBy(Session["username"].ToString());
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            quantity = int.Parse(ds.Tables[0].Rows[i]["quantity"].ToString());
            price = double.Parse(ds.Tables[0].Rows[i]["ProdPrice"].ToString());
            total += quantity * price;
        }

        totallbl.Text = "total to pay $" + total.ToString();
        cost = total;
    }


    protected void GridViewcart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        localhost.VisaWebService Check = new localhost.VisaWebService();
        bool isvalidMoney = Check.ValidMoney(this.TextBox2.Text.ToString(), cost);
        bool isValidDetails = Check.iscardexist(this.TextBox2.Text, this.TextBox3.Text, this.TextBox4.Text, int.Parse(this.TextBox5.Text), int.Parse(this.TextBox6.Text));

        if (isvalidMoney && isValidDetails)
        {

            Check.UpdateTotal(this.TextBox2.Text, cost);
            this.Label2.Text = "its done";
            string user = Session["username"].ToString();

            ws.copyData(user, cost);
            ws.DeleteFromCart(user);

            bindthegridview();
            this.Button1.Enabled = false;


        }
        else this.Label2.Text = "not ok check your visa  ";
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void cartcleaner_Click1(object sender, EventArgs e)
    {
        string user = Session["username"].ToString();
        ws.DeleteFromCart(user);
        totalsum();
        bindthegridview();

    }
    protected void checkout_Click1(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;

    }
    protected void GridViewcart_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        TextBox quantity = (TextBox)GridViewcart.Rows[e.RowIndex].FindControl("TextBox1");
        Label ProdCode = (Label)GridViewcart.Rows[e.RowIndex].FindControl("ProdCode");

        status.Visible = false;
        ws.UpdateCart(int.Parse(quantity.Text), ProdCode.Text.ToString(), Session["username"].ToString());
        //string queryStr = string.Format("UPDATE tempCart SET quantity={0} where [ProdCode]= '{1}' and [username]='{2}'", int.Parse(quantity.Text), ProdCode.Text.ToString(), Session["username"].ToString());

        this.GridViewcart.EditIndex = -1;
        totalsum();
        bindthegridview();

    }
    protected void GridViewcart_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {

        Label ProdCode = (Label)GridViewcart.Rows[e.RowIndex].FindControl("ProdCode");
        //string queryStr = string.Format("DELETE from tempCart WHERE [ProdCode]= '{0}' and [username]='{1}'", ProdCode.Text.ToString(), Session["username"].ToString());

        ws.DeleteFromCart2(ProdCode.Text.ToString(), Session["username"].ToString());
        this.GridViewcart.EditIndex = -1;
        totalsum();
        bindthegridview();

    }
    protected void GridViewcart_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewcart.EditIndex = -1;
        bindthegridview();

    }
    protected void GridViewcart_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        this.GridViewcart.EditIndex = e.NewEditIndex;
        bindthegridview();

    }
    protected void GridViewcart_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}