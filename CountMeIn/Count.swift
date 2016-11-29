//
//  Count.swift
//  CountMeIn
//
//  Created by Chinmay Desai on 30/09/2016.
//  Copyright © 2016 Chinmay Desai. All rights reserved.
//

import Foundation

// Custom Class to Hold Count Object
class Count {
    // MARK: Variables
    var countName: String?
    var countValue: Int
    
    // MARK: Initializer
    init(name: String) {
        self.countName = name
        self.countValue = 0
    }
}
