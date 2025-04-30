using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace viewmodel
{
    public class UserDb
    {

        public UserDb() { }
        public Dbfunction db = new Dbfunction();

        public bool isExistUser(string username)
        {

            string sql = string.Format("select * from [User] where [Username]='{0}'", username);
            DataSet ds = db.Selectcommand(sql);
            return ds.Tables[0].Rows.Count >= 1;

        }
        public bool isExistUserAndPass(string username, string pass)
        {

            string sql = string.Format("select * from [User] where [Username]='{0}' and [password]='{1}'", username, pass);
            DataSet ds = db.Selectcommand(sql);
            return ds.Tables[0].Rows.Count >= 1;

        }
        public void Adduser(string username, string password, string phonenumber, string address, string email)
        {
            bool admin = false;
            string sql = string.Format("insert into [User] values ('{0}','{1}','{2}','{3}','{4}',{5})", username, password, phonenumber, email,address, admin);
            db.DoCommand(sql);
        }
        public void Deleteuser(string username)
        {
            string sql = string.Format("delete * from [User] where [Username]='{0}'", username);
            db.DoCommand(sql);
        }
        public void updateUser(string username, string password, string phonenumber, string address, string email)
        {
            string sql = string.Format("update [User] set [password]='{0}', [phoneNumber]='{1}', [Email]='{2}' ,[Address]='{3}' where [Username]='{4}'", password, phonenumber, email, username);
            db.DoCommand(sql);
        }
        public DataSet showAllUser()
        {
            string sql = string.Format("select * from [User]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showUser(string username)
        {
            string sql = string.Format("select * from [User] where [Username]='{0}'", username);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showUserByEmail(string email)
        {
            string sql = string.Format("select * from [User] where [Email]='{0}'", email);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
    }
}
