using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        // تحقق بسيط - بدون قاعدة بيانات
        if (username == "admin" && password == "1234")
        {
            // تسجيل دخول ناجح
            Response.Redirect("Home.aspx"); // عدل الرابط حسب الصفحة التي تريد فتحها بعد الدخول
        }
        else
        {
            // خطأ في الإدخال
            lblMessage.Text = "Invalid username or password.";
        }
    }
}
