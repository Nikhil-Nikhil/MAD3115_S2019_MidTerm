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
    var mobilenumber: Int?
    var gbused: Float?
    var minuteused: Float?
    
    init(bill_id: Int,bill_date: Date,bill_type: String, m_name: String,p_name: String,m_num: Int,gb_use: Float,min_use: Float) {
        self.manufacturername = m_name
        self.planname = p_name
        self.mobilenumber = m_num
        self.gbused = gb_use
        self.minuteused = min_use
        super.init(billid: bill_id, billdate: bill_date, billtype: bill_type)
        
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
