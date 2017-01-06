//
//  StringToDoubleTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

struct StringToDoubleTransformer: TransformType {

    func transformFromJSON(value: AnyObject?) -> Double? {
        if let val = value as? String {
            return Double(val)
        }

        if let val = value as? Float {
            return Double(val)
        }

        if let val = value as? Double {
            return val
        }

        if let val = value as? Int {
            return Double(val)
        }

        return nil
    }

    func transformToJSON(value: Double?) -> AnyObject? {
        return value
    }
    
}
