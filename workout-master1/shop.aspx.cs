using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class shop : System.Web.UI.Page
{
    public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.DropDownListCat.DataSourceID = null;
            DataSet ds = ws.showAllCategory();
            this.DropDownListCat.DataSource = ds;
            this.DropDownListCat.DataTextField = "CatName";
            this.DropDownListCat.DataValueField = "CatCode";
            this.DropDownListCat.DataBind();
            //this.DropDownListCat.DataSource

           


        }

    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            string code = e.CommandArgument.ToString();
            Response.Redirect("productInfo.aspx?id="+code);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
        string category=this.DropDownListCat.SelectedValue;
       
     

       
     
      
        this.ListView1.DataSourceID = null;
      
        DataSet ds = ws.showAllProductsByCategory(category);

        this.ListView1.DataSource = ds;
        this.ListView1.DataBind();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
      

        this.ListView1.DataSourceID = null;

        DataSet ds = ws.showAllProducts();

        this.ListView1.DataSource = ds;
        this.ListView1.DataBind();

    }
}