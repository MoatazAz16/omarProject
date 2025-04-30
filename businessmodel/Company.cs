using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    class Company
    {
        private string CompanyID;
        public string MyCompanyID { get { return this.CompanyID; } set { this.CompanyID = value; } }

        private string Name;
        public string MyName { get { return this.Name; } set { this.Name = value; } }

        private int PhoneNumber;
        public int MyPhoneNumber { get { return this.PhoneNumber; } set { this.PhoneNumber = value; } }

        private string Email;
        public string MyEmail { get { return this.Email; } set { this.Email = value; } }

        private string MainAddress;
        public string MyMainAddress { get { return this.MainAddress; } set { this.MainAddress = value; } }

        private string ServicesOffered;
        public string MyServicesOffered { get { return this.ServicesOffered; } set { this.ServicesOffered = value; } }


        public Company(string CompanyID, string Name, int PhoneNumber, string Email, string MainAddress, string ServicesOffered)
        {
            this.CompanyID = CompanyID;
            this.Name = Name;
            this.PhoneNumber = PhoneNumber;
            this.Email = Email;
            this.MainAddress = MainAddress;
            this.ServicesOffered = ServicesOffered;
        }









    }
}
