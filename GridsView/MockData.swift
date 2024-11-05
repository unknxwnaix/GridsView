//
//  MockData.swift
//  GridsView
//
//  Created by Maxim Dmitrochenko on 04-11-2024.
//

import Foundation
import SwiftUI

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 { array.append(Color.random)}
        return array
    }
}
