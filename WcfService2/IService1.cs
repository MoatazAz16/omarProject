using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;


namespace WcfService2
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        string GetData(int value);

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        // TODO: Add your service operations here
        //for contact
        [OperationContract]
        void InsertContacts(string username, string fullname, string email, string subject, string txtmessage);

        [OperationContract]
        DataSet showAllContacts();

        [OperationContract]
        DataSet getContactsByUser(string username);

        //for user

        [OperationContract]
        bool isExistUser(string username);


        [OperationContract]
        bool isExistUserAndPass(string username, string pass);


        [OperationContract]
        void Adduser(string username, string password, string phonenumber, string address, string email);


        [OperationContract]
        void Deleteuser(string username);


      


        [OperationContract]
        DataSet showAllUser();


        [OperationContract]
        DataSet showUser(string username);


        [OperationContract]
        DataSet showUserByEmail(string email);

     
        [OperationContract]
         void InsertCar(string CarID, string Module, string Company, string Color, DateTime Year, int NumberOfPassengers, int Price);
        [OperationContract]
        bool isExist(string CarID);
        [OperationContract]
        void DeleteCar(string CarID);

        [OperationContract]
        DataSet GetUser(string CarId);
        [OperationContract]
        DataSet showAllCars();
        [OperationContract]
        void InsertCompany(string CompanyID, string Name, int PhoneNumber, string Email, string MainAddress, string ServicesOffered);
        [OperationContract]
        bool isExistCompany(string CompanyID);
        [OperationContract]
        void DeleteCompany(string CompanyID);
        [OperationContract]
        void updateCompany(string CompanyID, string Name, string Email);
        [OperationContract]
        DataSet GetCompany(string CompanyID);

        [OperationContract]
        void InsertOrder(string CarID, string UserID, DateTime OrderDate, string fullName, int price);
        [OperationContract]
        bool isExistOrder(string CarID);
        [OperationContract]
        void DeleteOrder(string CarID);
        [OperationContract]
        void updateOrder(string CarID, string UserID, int price);
        [OperationContract]
        DataSet GetOrder(string CarID);
     
        [OperationContract]
        void InsertserviceBranches(string branchNo, string compny, string branchName, string phone, string workTime);
        [OperationContract]
        bool isExistserviceBranches(String branchNo);
        [OperationContract]
        void deleteserviceBranches(String branchNo);
        [OperationContract]
        void updateserviceBranches(string branchNo, string compny, string branchName);
        [OperationContract]
        DataSet GetserviceBranches(string branchNo);
        [OperationContract]
        DataSet showAllserviceBranches();



    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
