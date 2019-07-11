//
//  UnitExtension.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation
extension Float
{
    public func unit() -> String
    {
        return String.init(format: "%0.2funit", self)
}
}
