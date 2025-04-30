using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data;
namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for users.xaml
    /// </summary>
    public partial class users : Window
    {
        public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        public users()
        {
            InitializeComponent();
            showall();


        }
        private void showall()
        {
            DataSet ds = ws.showAllUser();
            if (ds.Tables[0].Rows.Count > 0)
                this.mygrid.ItemsSource = ds.Tables[0].DefaultView;
            else this.lblmessage.Content = "no data";
        }

        private void mygrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }



        private void Add_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtUsername.Text != "" && this.txtPassword.Password != "" && this.txtPhonenumber.Text != "" && this.txtEmail.Text != "")

            {
                if (!ws.isExistUser(this.txtUsername.Text))
                {
                    ws.Adduser(this.txtUsername.Text, this.txtPassword.Password, this.txtPhonenumber.Text, this.txtEmail.Text);
                    showall();
                }
                else this.lblmessage.Content = "error: username already exists";
            }
            else this.lblmessage.Content = "some data is missing";
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtUsername.Text != "")
            {
                if (ws.isExistUser(this.txtUsername.Text))
                {
                    ws.Deleteuser(this.txtUsername.Text);
                    showall();
                }
                else this.lblmessage.Content = "Product does not exist";

            }
            else this.lblmessage.Content = "empty Product ";

        }



        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            MainWindow w = new MainWindow();
            w.ShowDialog();

        }

       

     

        private void Window_Closed(object sender, EventArgs e)
        {
            this.Close();
            MainWindow w = new MainWindow();
            w.ShowDialog();

        }

      

        private void txtPassword_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void mygrid_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

      
    }
}