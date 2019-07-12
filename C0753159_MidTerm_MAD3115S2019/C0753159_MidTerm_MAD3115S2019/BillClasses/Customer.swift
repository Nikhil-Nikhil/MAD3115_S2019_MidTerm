//
//  Customer.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class Customer : IDisplay {
    let customerId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String?
    var emailId: String?
    var phoneNumber : Int
    var billarray: [Bill]
    var totalamout: Float
    {
        var TotalAmount: Float = 0.0
        
        for bill in billarray
        {
            TotalAmount = TotalAmount + bill.billtotal!
        }
        return TotalAmount
    }
    
    
    
    private static var customerList=[Int:Customer]()
    
    
    init(customerid: Int,firstname: String,lastname: String,emailid: String,phonenumber:Int,billarray: [Bill]) throws {
        
        if phoneNumber  < 10
        {
           throw ErrorType.InvalidNumber
        }
        
        self.customerId = customerid
        self.firstName = firstname
        self.lastName = lastname
        self.emailId = emailid
        self.phoneNumber = phonenumber
        self.billarray = billarray
    }
    
    static func customerDetail(customer: Customer) {
        customerList.updateValue(customer, forKey: customer.customerId!)
        
    }
    
    // fetching the customer by its id
    static func getCustomerById(cust_id:Int) -> Customer? {
        if let cust = customerList[cust_id] {
            return cust as Customer
        }
        else {
            return nil
        }
        
    }
    
    func FullName(){
        print("Customer Full Name : \(self.firstName!) \(self.lastName!)")
    }
    
    func bills(){
        
        for i in billarray{
            print("Bill Id : \(i.billid!)")
            print("Bill Date : \(i.billdate)")
            print("Bill Type : \(i.billtype!)")
            
            
            print("**************************************")
        }
        
        
    }
    
    func display() {
        print("Customer Id : \(self.customerId!)")
        print(FullName())
        print("Customer Email Id : \(self.emailId!)")
        print("      ----Bill Information----")
        print("**************************************")
        for bill in billarray {
            bill.display()
            
        }
        print("=========================================")
        print("\n")
        print("Total Amount : \(self.totalamout)")
    }
}

