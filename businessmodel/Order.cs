using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    class Order
    {

        private string OrderID;
        public string MyOrderID { get { return this.OrderID; } set { this.OrderID = value; } }

        private string CarID;
        public string MyCarID { get { return this.CarID; } set { this.CarID = value; } }

        private string UserID;
        public string MyUserID { get { return this.UserID; } set { this.UserID = value; } }

        private DateTime OrderDate;
        public DateTime MyOrderDate { get { return this.OrderDate; } set { this.OrderDate = value; } }

        private int Status;
        public int MyStatus { get { return this.Status; } set { this.Status = value; } }



        public Order(string OrderID, string CarID, string UserID, DateTime OrderDate, int Status)
        {
            this.OrderID = OrderID;
            this.CarID = CarID;
            this.UserID = UserID;
            this.OrderDate = OrderDate;
            this.Status = Status;
        }









    }
}
