using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using viewmodel;

namespace WcfService2
{
    public class Service1 : IService1
    {
        // --- Contacts ---
        public void InsertContacts(string username, string fullname, string email, string subject, string txtmessage)
        {
            contactsDb db = new contactsDb();
            db.InsertContacts(username, fullname, email, subject, txtmessage);
        }

        public DataSet showAllContacts()
        {
            contactsDb db = new contactsDb();
            return db.showAllContacts();
        }

        public DataSet getContactsByUser(string username)
        {
            contactsDb db = new contactsDb();
            return db.getContactsByUser(username);
        }

        // --- Users ---
        public void Adduser(string username, string password, string phonenumber, string address, string email)
        {
            UserDb db = new UserDb();
            db.Adduser(username, password, phonenumber, address, email);
        }

        public bool isExistUser(string username)
        {
            UserDb db = new UserDb();
            return db.isExistUser(username);
        }

        public bool isExistUserAndPass(string username, string pass)
        {
            UserDb db = new UserDb();
            return db.isExistUserAndPass(username, pass);
        }

        public void Deleteuser(string username)
        {
            UserDb db = new UserDb();
            db.Deleteuser(username);
        }

        public void updateUser(string username, string password, string phonenumber, string address, string email)
        {
            UserDb db = new UserDb();
            db.updateUser(username, password, phonenumber, address, email);
        }

        public DataSet showAllUser()
        {
            UserDb db = new UserDb();
            return db.showAllUser();
        }

        public DataSet showUser(string username)
        {
            UserDb db = new UserDb();
            return db.showUser(username);
        }

        public DataSet showUserByEmail(string email)
        {
            UserDb db = new UserDb();
            return db.showUserByEmail(email);
        }

        // --- Cars ---
        public void InsertCar(string carID, string module, string company, string color, DateTime year, int numberOfPassengers, int price)
        {
            CarDb db = new CarDb();
            db.InsertCar(carID, module, company, color, year, numberOfPassengers, price);
        }

        public bool isExist(string CarID)
        {
            CarDb db = new CarDb();
            return isExist(CarID);
        }

        public void DeleteCar(string carID)
        {
            CarDb db = new CarDb();
            db.DeleteCar(carID);
        }

        public void UpdateCar(string carID, string module, int price)
        {
            CarDb db = new CarDb();
           UpdateCar(carID, module, price);
        }

        public DataSet GetUser(string CarId) // تعيد معطيات المستخدم  
        {
            CarDb db = new CarDb();
            return GetUser(CarId);
        }

        public DataSet showAllCars()
        {
            CarDb db = new CarDb();
            return showAllCars();
        }

        // --- Companies ---
        public void InsertCompany(string companyID, string name, int phoneNumber, string email, string mainAddress, string servicesOffered)
        {
            CompanyDb2 db = new CompanyDb2();
            db.InsertCompany(companyID, name, phoneNumber, email, mainAddress, servicesOffered);
        }

        public bool isExistCompany(string CompanyID)
        {
            CompanyDb2 db = new CompanyDb2();
            return isExistCompany(CompanyID);
        }

        public void DeleteCompany(string companyID)
        {
            CompanyDb2 db = new CompanyDb2();
            db.DeleteCompany(companyID);
        }

        public void updateCompany(string CompanyID, string Name, string Email)
        {
            CompanyDb2 db = new CompanyDb2();
            updateCompany(CompanyID, Name, Email);
        }

        public DataSet GetCompany(string companyID)
        {
            CompanyDb2 db = new CompanyDb2();
            return db.GetCompany(companyID);
        }


        // --- Orders ---
        public void InsertOrder(string carID, string userID, DateTime orderDate, string fullName, int price)
        {
            OrdersDb db = new OrdersDb();
            db.InsertOrder(carID, userID, orderDate, fullName, price);
        }

        public bool isExistOrder(string CarID)
        {
            OrdersDb db = new OrdersDb();
            return isExistOrder(CarID);
        }

        public void DeleteOrder(string carID)
        {
            OrdersDb db = new OrdersDb();
            db.DeleteOrder(carID);
        }

        public void updateOrder(string CarID, string UserID, int price)
        {
            OrdersDb db = new OrdersDb();
            updateOrder(CarID, UserID, price);
        }

        public DataSet GetOrder(string carID)
        {
            OrdersDb db = new OrdersDb();
            return db.GetOrder(carID);
        }

       

        // --- Service Branches ---
        public void InsertserviceBranches(string branchNo, string company, string branchName, string phone, string workTime)
        {
            serviceBranchesDb db = new serviceBranchesDb();
            db.InsertserviceBranches(branchNo, company, branchName, phone, workTime);
        }

        public bool isExistserviceBranches(String branchNo)
        {
            serviceBranchesDb db = new serviceBranchesDb();
            return db.isExistserviceBranches(branchNo);
        }

        public void deleteserviceBranches(string branchNo)
        {
            serviceBranchesDb db = new serviceBranchesDb();
            db.deleteserviceBranches(branchNo);
        }

        public void updateserviceBranches(string branchNo, string compny, string branchName)
        {
            serviceBranchesDb db = new serviceBranchesDb();
            db.updateserviceBranches(branchNo, compny, branchName);
        }

        public DataSet GetserviceBranches(string branchNo)
        {
            serviceBranchesDb db = new serviceBranchesDb();
            return db.GetserviceBranches(branchNo);
        }

        public DataSet showAllserviceBranches()
        {
            serviceBranchesDb db = new serviceBranchesDb();
            return db.showAllserviceBranches();
        }

        // --- Default generated methods ---
        public string GetData(int value)
        {
            return $"You entered: {value}";
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
                throw new ArgumentNullException("composite");

            if (composite.BoolValue)
                composite.StringValue += "Suffix";

            return composite;
        }
    }
}
