using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{
    public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string smtpAddress = "smtp.gmail.com";
        int port = 587;
        bool useSSL = true;
        string emailFromAddress = "tahatuqa578@gmail.com";
        string password = "zbxyvjtscfsfiibg";

        string emailToAddress = this.txtEmail.Text;
        string subject = "Recover Password from anas website";
        string body = "Your Acoount is:\n";

        using (MailMessage message = new MailMessage())
        {
            string myusername = "";
            string mypassword = "";
            if (this.txtEmail.Text == "")
                this.lblInfo.Text = "Empty Email";
            else
            {
                //string sql = string.Format("select [username],[password] from [user] where [email]='{0}'", this.txtEmail.Text);

                DataSet ds = ws.showUserByEmail(this.txtEmail.Text);
                if (ds.Tables[0].Rows.Count == 0) this.lblInfo.Text = "InValid Email";
                else
                {
                    myusername = ds.Tables[0].Rows[0]["username"].ToString();
                    mypassword = ds.Tables[0].Rows[0]["password"].ToString();

                    message.From = new MailAddress(emailFromAddress);
                    message.To.Add(emailToAddress);
                    message.Subject = subject;
                    message.Body = body + "username=" + myusername + "\n   password=" + mypassword;
                    using (SmtpClient stmpClient = new SmtpClient(smtpAddress, port))
                    {
                        stmpClient.Credentials = new NetworkCredential(emailFromAddress, password);
                        stmpClient.EnableSsl = useSSL;
                        stmpClient.Send(message);
                    }
                    this.lblInfo.Text = "Password sent to your Email....check your email";
                }
            }
        }
    }
}