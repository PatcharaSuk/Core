//
//  IntExtension.swift
//  Core
//
//  Created by patchara_suk on 19/3/2562 BE.
//  Copyright © 2562 mdc. All rights reserved.
//

import Foundation

extension Int {
    
    public func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
    
    public func toString() -> String {
        return String(self)
    }
    
}
