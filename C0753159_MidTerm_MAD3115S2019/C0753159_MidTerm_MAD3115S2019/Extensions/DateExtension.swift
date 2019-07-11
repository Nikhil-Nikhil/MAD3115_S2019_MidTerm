//
//  DateExtension.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

extension Date
{
    
    
    public func getFormatDate() -> String
    {
        let DateFormat = DateFormatter()
        DateFormat.dateFormat = "EEEE, dd MM, yyyy"
        let formattedDate = DateFormat.string(from: self)
        return formattedDate
    }
    
}
