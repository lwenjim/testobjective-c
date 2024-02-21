//
//  Item.swift
//  DemoSwift
//
//  Created by liuwenjin on 2024/2/8.
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
