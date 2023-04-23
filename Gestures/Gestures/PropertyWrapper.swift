//
//  PropertyWrapper.swift
//  Gestures
//
//  Created by Salmdo on 4/22/23.
//

import Foundation

@propertyWrapper
class MyUppserCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set {
            value = newValue.uppercased()
        }
    }
}
