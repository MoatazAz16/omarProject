using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    public class contacts
    {
        private string code;
        public string Mycode { get { return this.code; } set { this.code = value; } }
        private string username;
        public string Myusername { get { return this.username; } set { this.username = value; } }
        private string fullname;
        public string Myfullname { get { return this.fullname; } set { this.fullname = value; } }
        private string email;
        public string Myemail { get { return this.email; } set { this.email = value; } }
        private string subject;
        public string Mysubject { get { return this.subject; } set { this.subject = value; } }
        private string message;
        public string Mymessage { get { return this.message; } set { this.message = value; } }
        private DateTime dateof;
        public DateTime Mydateof { get { return this.dateof; } set { this.dateof = value; } }
        public contacts(string code, string username, string fullname, string email, string subject, string message, DateTime dateof)
        {
            this.code = code;
            this.username = username;
            this.fullname = fullname;
            this.email = email;
            this.subject = subject;
            this.message = message;
            this.dateof = dateof;
        }
    }
}
