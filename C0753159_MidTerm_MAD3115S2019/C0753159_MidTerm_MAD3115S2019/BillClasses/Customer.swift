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
    var emailId: String?
    var phoneno: String?
    var billarray: [Bill]
    var totalamount: Float
    {
        var TotalAmount:Float = 0.0
        
        for bill in billarray
        {
            //TotalAmount = TotalAmount + bill.billtotal!
        }
        return TotalAmount
    }
    
    
    
    public static var customerList=[Int:Customer]()
    
    
    init(customerid: Int,firstname: String,lastname: String,emailid: String,billarray: [Bill]) throws {
        
      
        self.customerId = customerid
        self.firstName = firstname
        self.lastName = lastname
        self.emailId = emailid
       
        self.billarray = billarray
    }
    
    static func customerDetail(customer: Customer) {
        customerList.updateValue(customer, forKey: customer.customerId!)
        
    }
    
    
    static func getCustomerById(cust_id:Int) -> Customer? {
        if let cust = customerList[cust_id] {
            return cust as Customer
        }
        else {
            return nil
        }
        
    }
    
    var fullName:String{
        return "\(self.firstName!)   \(self.lastName!)"
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
        
        print("Customer Email Id : \(self.emailId!)")
        print("      ----Bill Information----")
        print("**************************************")
        for bill in billarray {
            bill.display()
            
        }
        print("=========================================")
        print("\n")
        print("Total Amount : \(self.totalamount)")
    }

private func isEmailvalid(Str:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: Str)
   }
}
