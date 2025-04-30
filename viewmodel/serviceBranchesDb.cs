using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace viewmodel
{
    public class serviceBranchesDb
    {
        Dbfunction db = new Dbfunction();
        public serviceBranchesDb() { }
        public void InsertserviceBranches(string branchNo, string compny, string branchName, string phone, string workTime)
        { 
            string sql = string.Format("Insert into [serviceBranches] values({0},{1},{2},{3},{4})", branchNo, compny, branchName, phone, workTime);
            db.DoCommand(sql);
        }
        public bool isExistserviceBranches(String branchNo)
        {
            string sql = string.Format("select * from [serviceBranches] where [branchNo]='{0}'", branchNo);
            DataSet ds = db.Selectcommand(sql);
            if (ds.Tables[0].Rows.Count == 0) return false;
            else return true;
        }
        public void deleteserviceBranches(string branchNo)
        {
            string sql = string.Format("delete from [serviceBranches] where [branchNo]='{0}'", branchNo);
            db.DoCommand(sql);
        }
        public void updateserviceBranches(string branchNo, string compny, string branchName)
        {
            string sql = string.Format("update [serviceBranches] set [branchNo]='{3}' , [UserID]='{2}' where  [price]='{1}'", branchNo, compny, branchName);
            db.DoCommand(sql);
        }
        public DataSet GetserviceBranches(string branchNo) // تعيد معطيات المستخدم  
        {
            string sql = string.Format("select * from [serviceBranches] where [branchNo]='{0}'", branchNo);
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
        public DataSet showAllserviceBranches()
        {
            string sql = string.Format("select * from [serviceBranches]");
            DataSet ds = db.Selectcommand(sql);
            return ds;
        }
    }
}
