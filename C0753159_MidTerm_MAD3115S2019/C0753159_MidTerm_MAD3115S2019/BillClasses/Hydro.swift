//
//  Hydro.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
class Hydro : Bill {
    var agency_name: String?
    var unit_consumed: Float?
    
    init(bill_id: Int,bill_date: Date, bill_type: String, a_name: String, u_consume: Float) {
        self.agency_name = a_name
        self.unit_consumed = u_consume
        super.init(billid: bill_id, billdate: bill_date, billtype: bill_type)
    }
    
    override func display() {
        super.display()
        print("Agency Name : \(self.agency_name!)")
        print("Unit Consumed : \(self.unit_consumed!)")
    }
}
