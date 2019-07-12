//
//  Internet.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class Internet: Bill{
    
    var providername: String?
    var internetgbused: Float?
    
    
    init(bill_id: Int,bill_date: Date,bill_type: String,p_name: String, i_gb_used: Float) {
        self.providername = p_name
        self.internetgbused = i_gb_used
        super.init(billid: bill_id, billdate: bill_date, billtype: bill_type)
        
    }
    
    
    override func display() {
        super.display()
        print("Provider Name : \(self.providername!)")
        print("Inter Net GB Used : \(self.internetgbused!)")
    }
    
}
