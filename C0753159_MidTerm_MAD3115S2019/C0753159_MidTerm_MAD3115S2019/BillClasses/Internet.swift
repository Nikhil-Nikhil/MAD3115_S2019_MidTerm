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
    
    
    init(billid: Int,billdate: Date,billtype: String,providername: String, gbused: Float) {
        self.providername = providername
        self.internetgbused = gbused
        super.init(billid: billid, billdate: billdate, billtype: billtype)
        
    }
    
    
    override func display() {
        super.display()
        print("Provider Name : \(self.providername!)")
        print("Inter Net GB Used : \(self.internetgbused!)")
    }
    
}
