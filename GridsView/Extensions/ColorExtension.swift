//
//  ColorExtension.swift
//  GridsView
//
//  Created by Maxim Dmitrochenko on 04-11-2024.
//

import Foundation
import SwiftUI

extension Color {
    static var random: Color {
        return Color(red: Double.random(in: 0...1),
                     green: Double.random(in: 0...1),
                     blue: Double.random(in: 0...1))
    }
}
