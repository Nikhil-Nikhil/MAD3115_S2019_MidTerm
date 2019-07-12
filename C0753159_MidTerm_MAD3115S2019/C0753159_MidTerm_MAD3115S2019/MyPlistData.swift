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
}
