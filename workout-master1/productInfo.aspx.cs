using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class productInfo : System.Web.UI.Page
{
    public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string code = Request.QueryString["id"];
            this.Label1.Text = code;


            DataSet ds = ws.showAllProductsBy(code);
            this.Image1.ImageUrl = "~/ProImages/" + ds.Tables[0].Rows[0]["ProdImage"].ToString();
            this.lblName.Text = ds.Tables[0].Rows[0]["productname"].ToString();
            this.lblprice.Text = ds.Tables[0].Rows[0]["prodprice"].ToString() +"$";
            string category = ds.Tables[0].Rows[0]["category"].ToString();
           

          


           
        }

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string code = Request.QueryString["id"];
        this.Label1.Text = code;


        DataSet ds = ws.showAllProductsBy(code);
        this.Image1.ImageUrl = "~/ProImages/" + ds.Tables[0].Rows[0]["ProdImage"].ToString();
        this.lblName.Text = ds.Tables[0].Rows[0]["productname"].ToString();
        this.lblprice.Text = ds.Tables[0].Rows[0]["prodprice"].ToString() ;
        string category = ds.Tables[0].Rows[0]["category"].ToString();

        int quantity = 1;
        string sqlstr1 = string.Format("insert into tempCart values('{0}','{1}',{2},'{3}','{4}',{5})", code, this.lblName.Text, double.Parse(this.lblprice.Text), this.Image1.ImageUrl, Session["username"].ToString(), quantity);



        bool isexist = ws.isExistProductInCart(Session["username"].ToString(), code);

        if (!isexist)
        {
            ws.AddToCart(code, this.lblName.Text, double.Parse(this.lblprice.Text), this.Image1.ImageUrl, Session["username"].ToString(), quantity);
            this.Label1.Visible = true;
            this.Label1.Text = "The productId " + code + " added to the userproduct successfully";
        }
        else
        {
            Label1.Visible = true;
            this.Label1.Text = "The productId " + code + " is already in the cart";
        }
    }
}