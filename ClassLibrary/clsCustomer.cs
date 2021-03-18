﻿using System;

namespace ClassLibrary
{
    public class clsCustomer
    {
        private string mCustomerName;
        private Int32 mCustomerId;
        private DateTime mCustomerDOB;
        private string mCustomerEmail;
        private Boolean mCustomerSubscribe;

        public string CustomerName
        {
            get
            {
                return mCustomerName;
            }

            set
            {
                mCustomerName = value;
            }
        }
        public Int32 CustomerId
        {
            get
            {
                return mCustomerId;
            }
            set
            {
                mCustomerId = value;
            }
        }

        public DateTime CustomerDOB
        {
            get
            {
                return mCustomerDOB;
            }
            set
            {
                mCustomerDOB = value;
            }
        }

        public string Valid(string customerName, string customerEmail, string customerDOB)
        {
            String Error = "";

            DateTime DateTemp;
            DateTime Date1950;
            DateTime DateMax;
            if (customerName.Length == 0)
            {
                Error = Error + "The Customer Name may not be blank : ";
            }

            if (customerName.Length > 30)
            {
                Error = Error + "The Customer Name must be less than 30 characters : ";
            }

            if (customerEmail.Length == 0)
            {
                Error = Error + "The Customer email may not be blank : ";
            }

            if (customerEmail.Length > 50)
            {
                Error = Error + "The Customer email must be less than 50 characters : ";
            }

            try
            {
                DateTemp = Convert.ToDateTime(customerDOB);
                Date1950 = new DateTime(1950, 01, 01);
                DateMax = new DateTime(2010, 01, 01);
                if (DateTemp < Date1950)
                {
                    Error = Error + "The date cannot be before 1950 : ";
                }

                if (DateTemp > Date1950 && DateTemp > DateMax)
                {
                    Error = Error + "Please enter a valid DOB : ";
                }

            }
            catch
            {
                Error = Error + "The date was not a valid date : ";
            }

            return Error;
        }

        public string CustomerEmail
        {
            get
            {
                return mCustomerEmail;
            }
            set
            {
                mCustomerEmail = value;
            }
        }
                  
        public Boolean CustomerSubscribe
        {
            get
            {
                return mCustomerSubscribe;
            }
            set
            {
                mCustomerSubscribe = value;
            }
        }

        public string Valid(string cCustomerName)
        {
            if (cCustomerName.Length < 1)
            {
                return "description cannot be blank";
            }

            else
            {
                return "";
            }
        }

        public bool Find(Int32 customerId)
        {
            //create new instance of the dataconnection class
            clsDataConnection DB = new clsDataConnection();
            //add customer id parameter to customer Id table field
            DB.AddParameter("@customerId", customerId);
            //execute stored procedure
            DB.Execute("sproc_tblCustomer_FilterBycustomerId");

            //search and return all table fields if count == 1
            if (DB.Count == 1)
            {

               
                mCustomerId = Convert.ToInt32(DB.DataTable.Rows[0]["customerId"]);
                mCustomerDOB = Convert.ToDateTime(DB.DataTable.Rows[0]["customerDOB"]);
                mCustomerName = Convert.ToString(DB.DataTable.Rows[0]["customerName"]);
                mCustomerEmail = Convert.ToString(DB.DataTable.Rows[0]["customerEmail"]);
                mCustomerSubscribe = Convert.ToBoolean(DB.DataTable.Rows[0]["customerSubscribe"]);
                return true;
            }

            else
            {
                return false;
            }
        }
    }
}
