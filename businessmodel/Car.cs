using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businessmodel
{
    class Car
    {
        private int CarID;
        public int MyCarID { get { return this.CarID; } set { this.CarID = value; } }


        private string Module;
        public string MyModule { get { return this.Module; } set { this.Module = value; } }


        private string Company;
        public string MyCompany { get { return this.Company; } set { this.Company = value; } }


        private string Color;
        public string MyColor { get { return this.Color; } set { this.Color = value; } }


        private DateTime Year;
        public DateTime MyYear { get { return this.Year; } set { this.Year = value; } }


        private int NumberOfPassengers;
        public int MyNumberOfPassengers { get { return this.NumberOfPassengers; } set { this.NumberOfPassengers = value; } }


        private int Price;
        public int MyPrice { get { return this.Price; } set { this.Price = value; } }



        public Car(int CarID, string Module, string Company, string Color, DateTime Year, int NumberOfPassengers, int Price)
        {
            this.CarID = CarID;
            this.Module = Module;
            this.Company = Company;
            this.Color = Color;
            this.Year = Year;
            this.NumberOfPassengers = NumberOfPassengers;
            this.Price = Price;
        }
    }
}
