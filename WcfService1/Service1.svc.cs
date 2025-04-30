using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using viewmodel;
using WcfService1;
using System.Data;



// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
// NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        // for contacts
        public void InsertContacts(string username, string fullname, string email, string subject, string txtmessage)
        {
        contactsDb c = new contactsDb();
        c.InsertContacts( username,  fullname,  email,  subject,  txtmessage);

        }

        public DataSet showAllContacts()
        {
            contactsDb c = new contactsDb();
            return c.showAllContacts();

        }

        public DataSet getContactsByUser(string username)
        {
        contactsDb c = new contactsDb();
        return c.getContactsByUser(username);

        }

    // for user
    public bool isExistUser(string username)
    {
        UserDb u = new UserDb();
        return u.isExistUser(username);

    }

    public bool isExistUserAndPass(string username, string pass)
    {
        UserDb u = new UserDb();
        return u.isExistUserAndPass(username, pass);
    }

    public void Adduser(string username, string password, string phonenumber, string address, string email)
    {
        UserDb u = new UserDb();
        u.Adduser(username, password, phonenumber, address, email);
    }

    public void Deleteuser(string username)
    {
        UserDb u = new UserDb();
        u.Deleteuser(username);
    }

    public void UpdateUser(string username, string password, string phonenumber, string address, string email)
    {
        UserDb u = new UserDb();

        u.UpdateUser(username, password, phonenumber, address, email);
    }

    public DataSet showAllUser()
    {
        UserDb u = new UserDb();
        return u.showAllUser();
    }

    public DataSet showUser(string username)
    {
        UserDb u = new UserDb();
        return u.showUser(username);
    }

    public DataSet showUserByEmail(string email)
    {
        UserDb u = new UserDb();
       return  u.showUserByEmail(email);
    }

}
