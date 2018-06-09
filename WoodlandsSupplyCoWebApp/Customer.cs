using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WoodlandsSupplyCoWebApp {
    public class Customer {

        private int mCustomer_ID;
        private string mFirstName;
        private string mLastName;
        private string mEmail;
        private string mAddress;
        private string mCity;
        private string mState;
        private int mZip;

        public Customer(string  firstName, string lastName, string email, string address, string city, string state, int zip) {

            mFirstName = firstName;
            mLastName = lastName;
            mEmail = email;
            mAddress = address;
            mCity = city;
            mState = state;
            mZip = zip;

        }

        public override string ToString() {

            return mFirstName + "\n" + mLastName + "\n" + mEmail + "\n" + mAddress + "\n" + mCity + "\n" + mState + "\n" + mZip.ToString();

        }

        public string GetFirst() { return mFirstName; }
        public string GetLast() { return mLastName; }
        public string GetEmail() { return mEmail; }
        public string GetAddress() { return mAddress; }
        public string GetCity() { return mCity; }
        public string GetState() { return mState; }
        public string Getzip() { return mZip.ToString(); }


    }
}