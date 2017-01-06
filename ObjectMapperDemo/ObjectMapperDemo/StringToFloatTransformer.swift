//
//  FloatToStringTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

struct StringToFloatTransformer: TransformType {

    func transformFromJSON(value: AnyObject?) -> Float? {
        if let val = value as? String {
            return Float(val)
        }

        if let val = value as? Float {
            return val
        }

        if let val = value as? Int {
            return Float(val)
        }

        return nil
    }

    func transformToJSON(value: Float?) -> AnyObject? {
        return value
    }
    
}
