using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    class Payment
    {
        private string PaymentID;
        public string MyPaymentID { get { return this.PaymentID; } set { this.PaymentID = value; } }

        private string Bank;
        public string MyBank { get { return this.Bank; } set { this.Bank = value; } }

        private string UserID;
        public string MyUserID { get { return this.UserID; } set { this.Bank = value; } }

        private string PaymentMethod;
        public string MyPaymentMethod { get { return this.PaymentMethod; } set { this.Bank = value; } }

        private DateTime PaymentDate;
        public DateTime MyPaymentDate { get { return this.PaymentDate; } set { this.PaymentDate = value; } }

        private string Amount;
        public string MyAmount { get { return this.Amount; } set { this.Bank = value; } }

        private int price;
        public int Myprice { get { return this.price; } set { this.price = value; } }


        public Payment(string PaymentID, string Bank, string UserID, string PaymentMethod, DateTime PaymentDate, string Amount, int price)
        {
            this.PaymentID = PaymentID;
            this.Bank = Bank;
            this.UserID = UserID;
            this.PaymentMethod = PaymentMethod;
            this.Amount = Amount;
            this.price = price;

        }








    }
}
