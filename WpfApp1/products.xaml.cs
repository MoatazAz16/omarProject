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
    /// Interaction logic for products.xaml
    /// </summary>
    public partial class products : Window
    {
        public ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        public products()
        {
            InitializeComponent();
            showall();
            DataSet DS = ws.showAllCategory();
            if (DS.Tables[0].Rows.Count > 0)
            {
                combo.ItemsSource = DS.Tables[0].DefaultView;
                combo.DisplayMemberPath = "CatName";
                combo.SelectedValuePath = "CatCode";
            }
            


        }
        private void showall()
        {
            DataSet ds = ws.showAllProducts();
            if (ds.Tables[0].Rows.Count > 0)
                this.mygrid.ItemsSource = ds.Tables[0].DefaultView;
            else this.lblmessage.Content = "no data";
        }

        private void mygrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }



        private void Add_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtProdCode.Text != "" && this.txtProdName.Text != "")

            {
                if (!ws.isExistProduct(this.txtProdCode.Text))
                {
                    ws.AddProduct(this.txtProdCode.Text, this.txtProdName.Text, this.combo.SelectedValue.ToString(), this.txtImage.Text, int.Parse(this.txtPrice.Text)) ;
                    showall();
                }
                else this.lblmessage.Content = "error: product already exists";
            }
            else this.lblmessage.Content = "some data is missing";
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (this.txtProdCode.Text != "")
            {
                if (ws.isExistProduct(this.txtProdCode.Text))
                {
                    ws.DeleteProduct(this.txtProdCode.Text);
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
            if (this.txtProdCode.Text != "")
            {
                if (ws.isExistProduct(this.txtProdCode.Text))
                {
                    DataSet ds = ws.showAllProductsBy(this.txtProdCode.Text);
                    DataTable dt = ds.Tables[0];
                    this.txtProdName.Text = dt.Rows[0][1].ToString();
                    string cat = dt.Rows[0][2].ToString();
                    DataSet DS = ws.showAllCategory();
                    if (DS.Tables[0].Rows.Count > 0)
                    {
                        combo.ItemsSource = DS.Tables[0].DefaultView;
                        combo.DisplayMemberPath = "CatName";
                        combo.SelectedValuePath = "CatCode";
                    }
                    combo.SelectedValue = cat;
                    this.txtImage.Text = dt.Rows[0][3].ToString();
                    this.txtPrice.Text = dt.Rows[0][4].ToString();

                    this.btnSave.IsEnabled = true;
                }
                else this.lblmessage.Content = "Product does not exist";

            }
            else this.lblmessage.Content = "empty Product";

        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            ws.UpdateProduct(this.txtProdCode.Text, this.txtProdName.Text, this.combo.SelectedValue.ToString(), this.txtImage.Text, int.Parse(this.txtPrice.Text));
            showall();

        }


        private void Window_Closed(object sender, EventArgs e)
        {
            this.Close();
            MainWindow w = new MainWindow();
            w.ShowDialog();

        }

       
    }
}


