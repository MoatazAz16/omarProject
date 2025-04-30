using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace viewmodel
{
    public class CompanyDb2
    {
        Dbfunction db = new Dbfunction();

        public CompanyDb2() { }
        public void InsertCompany(string CompanyID, string Name, int PhoneNumber, string Email, string MainAddress, string ServicesOffered)
        {
            string sql = string.Format("Insert into [Company] values({0},{1},{2},{3},{4},{5})", CompanyID, Name, PhoneNumber, Email, MainAddress, ServicesOffered);
            db.DoCommand(sql);
        }
        public bool isExistCompany(string CompanyID)
        {
            string sql = string.Format("select * from [Company] where [CompanyID]='{0}'", CompanyID);
            DataSet ds = db.Selectcommand(sql);
            if (ds.Tables[0].Rows.Count == 0) return false;
            else return true;
        }
        public void DeleteCompany(String CompanyID)
        {
            string sql = string.Format("delete from [Company] where [CompanyID]='{0}'", CompanyID);
            db.DoCommand(sql);
        }
        public void updateCompany(string CompanyID, string Name, string Email)
        {
            string sql = string.Format("update [Company] set [CompanyID]='{3}' , [Name]='{2}' where  [Email]='{1}'", Email, Name, CompanyID);
            db.DoCommand(sql);
        }
        public DataSet GetCompany(string CompanyID) // تعيد معطيات المستخدم  
        {
            string sql = string.Format("select * from [Company] where [CompanyID]='{0}'", CompanyID);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showAllCompany()
        {
            string sql = string.Format("select * from [Company]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
    }
}
