//
//  Color+Theme.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/8.
//

import Foundation
import SwiftUI

extension Color {
    struct Theme {
        let sectionHeaderColor: Color = Color(red: 0.54, green: 0.77, blue: 0.99)
        let dawnGradientColors: [Color] = [
            Color(red: 0.23, green: 0.33, blue: 0.52),
            Color(red: 0.70, green: 0.53, blue: 0.58)
        ]
    }
   static var currentTheme: Theme {
        return Theme()
    }
}
