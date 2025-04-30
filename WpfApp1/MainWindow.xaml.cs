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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void users_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            users w1 = new users();
            w1.ShowDialog();
        }

        private void products_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            products w1 = new products();
            w1.ShowDialog();

        }

        private void category_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            category w1 = new category();
            w1.ShowDialog();

        }
    }
}
