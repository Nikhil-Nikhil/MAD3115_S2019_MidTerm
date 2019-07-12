//
//  Hydro.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class Hydro : Bill {
    var agencyName: String?
    var unitconsumed: Float?
    
    init(bill_id: Int,bill_date: Date, bill_type: String, agencyName: String, unitconsume: Float) {
        self.agencyName = agencyName
        self.unitconsumed = unitconsume
        super.init(billid: bill_id, billdate: bill_date, billtype: bill_type)
    }
    
    override func display() {
        super.display()
        print("Agency Name : \(self.agencyName!)")
        print("Unit Consumed : \(self.unitconsumed!)")
    }
}
