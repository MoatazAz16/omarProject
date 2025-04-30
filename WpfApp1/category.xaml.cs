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
    /// Interaction logic for category.xaml
    /// </summary>
    public partial class category : Window
    {
        public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        public category()
        {
            InitializeComponent();
            showall();


        }
        private void showall()
        {
            DataSet ds = ws.showAllCategory();
            if (ds.Tables[0].Rows.Count > 0)
                this.mygrid.ItemsSource = ds.Tables[0].DefaultView;
            else this.lblmessage.Content = "no data";
        }

        private void mygrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }



        private void Add_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtCatCode.Text != "" && this.txtCatName.Text != "")

            {
                if (!ws.isExistCategory(this.txtCatCode.Text))
                {
                    ws.AddCategory(this.txtCatCode.Text, this.txtCatName.Text);
                    showall();
                }
                else this.lblmessage.Content = "error: Category already exists";
            }
            else this.lblmessage.Content = "some data is missing";
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtCatCode.Text != "")
            {
                if (ws.isExistCategory(this.txtCatCode.Text))
                {
                    ws.DeleteCategory(this.txtCatCode.Text);
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

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtCatCode.Text != "")
            {
                if (ws.isExistCategory(this.txtCatCode.Text))
                {
                    DataSet ds = ws.showAllCategoryByCode(this.txtCatCode.Text);
                    DataTable dt = ds.Tables[0];
                    this.txtCatCode.Text = dt.Rows[0][0].ToString();
                    this.txtCatName.Text = dt.Rows[0][1].ToString();
                

                    this.btnSave.IsEnabled = true;
                }
                else this.lblmessage.Content = "Product does not exist";

            }
            else this.lblmessage.Content = "empty Product";

        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            ws.UpdateCategory(this.txtCatCode.Text, this.txtCatName.Text);
            showall();

        }


        private void Window_Closed(object sender, EventArgs e)
        {
            this.Close();
            MainWindow w = new MainWindow();
            w.ShowDialog();

        }

        private void txtProdCode_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}