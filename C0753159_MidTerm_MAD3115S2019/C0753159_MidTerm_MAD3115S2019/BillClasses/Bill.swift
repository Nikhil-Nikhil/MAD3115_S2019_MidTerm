//
//  Bill.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

enum Bill_Type {
    case  Internet, Mobile, Hydro
}

class Bill : IDisplay{
    var billid: Int?
    var billdate: Date
    var billtype: String?
    var billtotal: Float?
    
    
    var totalBill:Float{
        var TotalBill:Float = 0.0
        TotalBill = self.billtotal!
        return TotalBill
    }
    
    
    init(billid:Int, billdate:Date, billtype:String ) {
        self.billid = billid
        self.billdate = billdate
        self.billtype = billtype
    }
    
    
    
    func display() {
        print("Bill Id : \(self.billid!)")
        print("Bill Date : \(self.billdate)")
        print("Bill Type : \(self.billtype!)")
        print("Bill Total : \(self.totalBill)")
        
        
    }
    init() {
        self.billid = Int()
        self.billdate = Date()
        self.billtype = String()
    }
}
