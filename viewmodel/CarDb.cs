using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace viewmodel
{
    public class CarDb
    {
        Dbfunction db = new Dbfunction();

       public  CarDb() { }
        public void InsertCar(String CarID ,String Module, String Company, String Color, DateTime Year, int NumberOfPassengers, int Price)
        {
            string sql = string.Format("Insert into [Car] values({0},{1},{2},{3},{4},{5},{6})", CarID, Module, Company, Color, Year, NumberOfPassengers, Price);
            db.DoCommand(sql);
        }
        public bool isExist(string CarID)
        {
            string sql = string.Format("select * from [Car] where [CarID]='{0}'", CarID);
            DataSet ds = db.Selectcommand(sql);
            if (ds.Tables[0].Rows.Count == 0) return false;
            else return true;
        }
        public void DeleteCar(String CarID)
        {
            string sql = string.Format("delete from [Car] where [UserID]='{0}'", CarID);
            db.DoCommand(sql);
        }
        public void updateUser(string CarID, string Module, int Price)
        {
            string sql = string.Format("update [Car] set [CarID]='{3}' , [Module]='{2}' where  [Price]='{1}'", Price, Module, CarID);
            db.DoCommand(sql);
        }
        public DataSet GetUser(string CarId) // تعيد معطيات المستخدم  
        {
            string sql = string.Format("select * from [Car] where [CarId]='{0}'", CarId);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showAllCars()
        {
            string sql = string.Format("select * from [Car]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }

    }
}
