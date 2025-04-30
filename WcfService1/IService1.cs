using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;

namespace WcfService1
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
        void UpdateUser(string username, string password, string phonenumber, string address, string email);


        [OperationContract]
        DataSet showAllUser();


        [OperationContract]
        DataSet showUser(string username);


        [OperationContract]
        DataSet showUserByEmail(string email);





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
