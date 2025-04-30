using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    internal class serviceBranches
    {
        private string branchNo ,compny , branchName, phone, WorkTime;
        public string MybranchNo { get { return this.branchNo; } set { this.branchNo = value; } }
        public string Mycompny { get { return this.compny; } set {this.compny = value; } }
        public string MyPhone { get { return this.phone; } set { this.phone = value; } }
        public string MybranchName { get { return this.branchName; } set { this.branchName = value; } }
            public string MyWorkTime {  get { return this.WorkTime; } set { this.WorkTime = value; }} 
        public serviceBranches(string branchNo, string compny, string branchName, string phone, string workTime)
        {
            this.branchNo = branchNo;
            this.compny = compny;
            this.branchName = branchName;
            this.phone = phone;
            WorkTime = workTime;
        
        }
    }
}
