//
//  StringToIntTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

struct StringToIntTransformer: TransformType {

    func transformFromJSON(value: AnyObject?) -> Int? {
        if let val = value as? String {
            return Int(val)
        }

        if let val = value as? Int {
            return val
        }

        if let val = value as? Float {
            return Int(val)
        }

        return nil
    }

    func transformToJSON(value: Int?) -> AnyObject? {
        return value
    }
    
}
