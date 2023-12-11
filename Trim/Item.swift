//
//  Item.swift
//  Trim
//
//  Created by Kevin Veldkamp on 12/10/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
