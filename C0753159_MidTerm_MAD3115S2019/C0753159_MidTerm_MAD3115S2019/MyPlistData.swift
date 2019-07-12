//
//  MyPlistData.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class MyPlistData
{
    static var userDict : [String : String] = [:]
    static public var customersArray : [Customer] = []
    static func readDataPlist()
    {
        if let plist = Bundle.main.url(forResource: "Users", withExtension: "plist")
        {
            if let dict = NSDictionary(contentsOf: plist)
            {
                if let users = dict["Users"] as? [[String:String]]
                {
                    for user in users
                    {
                        let email = user["emailid"]!
                        let password = user["password"]!
                       
                        userDict.updateValue(password, forKey: email)
                        
                        }
                }
                
            }
        }
        print(MyPlistData.userDict)
    }
    
    

 static func GetCustomer()
{
    do{
        var bill_1  = Mobile(billid: 1, billdate: Date(), billtype: "Mobile", manfacturername: "Google", planename: "Pixel", mobilenumber: "6781234567", gbuse: 50.9, minuteuse: 30.7)
        
        var bill_2  = Mobile(billid: 2, billdate: Date(), billtype: "Mobile", manfacturername: "Sony", planename: "E2", mobilenumber: "4571234567", gbuse: 60.9, minuteuse: 70.7)
        var bill_3  = Mobile(billid: 1, billdate: Date(), billtype: "Mobile", manfacturername: "Google", planename: "Pixel", mobilenumber: "6981230067", gbuse: 30.9, minuteuse: 15.7)
        
        var bill_4 = Internet(billid: 4, billdate: Date(), billtype: "Internet", providername: "BSNL", gbused: 55.67)
        var bill_5 = Internet(billid: 5, billdate: Date(), billtype: "Internet", providername: "Tata", gbused: 39.67)
        
        var bill_6 = Hydro(bill_id: 6, bill_date: Date(), bill_type: "Hydro", a_name: "Gig Tech", u_consume: 77)
        var bill_7 = Hydro(bill_id: 7, bill_date: Date(), bill_type: "Hydro", a_name: "Info Tech", u_consume: 97)
        
        // creating customers
        var customer_1 = try Customer(customerid: 1, firstname: "Nikhil",lastname: "Nikhil", emailid: "nikhil@gmail.com",phonenumber: "6893451234", billarray: [bill_1,bill_2,bill_3])
        customer_1.display() // displaying customer detail
        Customer.customerDetail(customer: customer_1) // addind into customer dictionary
        var customer_2 = try Customer(customerid: 2, firstname: "kishore", lastname: "narang",emailid: "kishore@gmail.com",phonenumber: "6893498234", billarray: [bill_7,bill_5,bill_4])
        customer_2.display()
        Customer.customerDetail(customer: customer_2)
        
        var customer_3 = try Customer(customerid: 3, firstname: "guarav", lastname: "sharma", emailid: "guarav@gmail.com",phonenumber: "6453451234", billarray: [bill_3,bill_2,bill_6,bill_1])
        customer_3.display()
        Customer.customerDetail(customer: customer_3)
        self.customersArray = Array(Customer.customerList.values)
        
    }
    catch ErrorType.InvalidNumber {
        print("WRONG NUMBER")
    }
        
    catch {
        print("Error occured...!")
    }

}
}
