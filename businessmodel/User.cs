using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    public class User
    {
        private string UserID;
        public string MyUserID { get { return this.UserID; } set { this.UserID = value; } }
        private string Username;
        public string MyUsername { get { return this.Username; } set { this.Username = value; } }
        private string Email;
        public string MyEmail { get { return this.Email; } set { this.Email = value; } }
        private string password;
        public string MyPassword { get { return this.password; } set { this.password = value; } }
        private string Address;
        public string MyAddress { get { return this.Address; } set { this.Address = value; } }
        private string phoneNumber;
        public string MyphoneNumber { get { return this.phoneNumber; } set { this.phoneNumber = value; } }

        public User(string UserID, string Username, string Email, string password, string Address, string phoneNumber)
        {
            this.UserID = UserID;
            this.Username = Username;
            this.Email = Email;
            this.password = password;
            this.Address = Address;
            this.phoneNumber = phoneNumber;
        }
    }
}
