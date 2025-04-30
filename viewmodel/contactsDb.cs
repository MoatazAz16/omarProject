using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace viewmodel
{
    public class contactsDb
    {
        Dbfunction db = new Dbfunction();
        public contactsDb() { }
        public void InsertContacts(string username, string fullname, string email, string subject, string txtmessage)
        {

            DateTime mydate = DateTime.Now;
            string sql = string.Format("insert into contacts([username],FullName,[Email],subject,message,dateof) values('{0}','{1}','{2}','{3}','{4}',#{5}#)",
                username, fullname, email, subject, txtmessage, mydate);
            db.DoCommand(sql);
        }
        public DataSet showAllContacts()
        {
            string sql = string.Format("select * from [contacts]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }

        public DataSet getContactsByUser(string username)
        {
            string sql = string.Format("select * from [contacts] where [username]='{0}'", username);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
    }
}
