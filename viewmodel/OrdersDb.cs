using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace viewmodel
{
    public class OrdersDb
    {
        Dbfunction db = new Dbfunction();

        public OrdersDb() { }
        public void InsertOrder(String CarID, String UserID, DateTime OrderDate, String fullName, int price)
        {
            string sql = string.Format("Insert into [Orders] values({0},{1},{2},{3},{4})", CarID, UserID, OrderDate, fullName, price);
            db.DoCommand(sql);
        }
        public bool isExistOrder(string CarID)
        {
            string sql = string.Format("select * from [Orders] where [CarID]='{0}'", CarID);
            DataSet ds = db.Selectcommand(sql);
            if (ds.Tables[0].Rows.Count == 0) return false;
            else return true;
        }
        public void DeleteOrder(String CarID)
        {
            string sql = string.Format("delete from [Orders] where [CarID]='{0}'", CarID);
            db.DoCommand(sql);
        }
        public void updateOrder(string CarID, string UserID, int price)
        {
            string sql = string.Format("update [Orders] set [CarID]='{3}' , [UserID]='{2}' where  [price]='{1}'", CarID, UserID, price);
            db.DoCommand(sql);
        }
        public DataSet GetOrder(string CarID) // تعيد معطيات المستخدم  
        {
            string sql = string.Format("select * from [Orders] where [CarID]='{0}'", CarID);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showAllOrder()
        {
            string sql = string.Format("select * from [Orders]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
    }
}
