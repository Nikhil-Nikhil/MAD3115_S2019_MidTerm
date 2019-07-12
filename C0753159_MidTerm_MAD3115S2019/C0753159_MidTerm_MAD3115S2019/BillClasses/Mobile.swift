//
//  Mobile.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class Mobile : Bill {
    var manufacturername: String?
    var planname: String?
    var mobilenumber: String?
    var gbused: Float?
    var minuteused: Float?
    
    init(billid: Int,billdate: Date,billtype: String, manfacturername: String,planename: String,mobilenumber: String,gbuse: Float,minuteuse: Float) {
        self.manufacturername = manfacturername
        self.planname = planename
        self.mobilenumber = mobilenumber
        self.gbused = gbuse
        self.minuteused = minuteuse
        super.init(billid: billid, billdate: billdate, billtype: billtype)
        
    }
    
    override func display() {
        super.display()
        print("Manufacturer Name : \(self.manufacturername!)")
        print("Plan Name :\(self.planname!)" )
        print("Mobile Number : \(self.mobilenumber!)" )
        print("GB Used \(self.gbused!)")
        print("minute Used : \(self.minuteused!)")
    }
}
