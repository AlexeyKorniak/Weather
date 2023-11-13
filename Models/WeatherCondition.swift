//
//  WeatherCondition.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/3.
//

import Foundation
import SwiftUI
enum WeatherCondition: CustomStringConvertible {
    case sunny, cloudy, raining, partlyCloudy, thunderstorm, snowing
    
    var description: String {
        
        switch self {
        case .sunny:            return "Sunny"
        case .cloudy:           return "Cloudy"
        case .raining:          return "Raining"
        case .partlyCloudy:      return "Mostly Sunny"
        case .thunderstorm:     return "Thunderstorm"
        case .snowing:          return "Snowing"
            
        }
    }
}

extension WeatherCondition {
    var systemImage: String {
        switch self {
        case .sunny:            return "sun.max.fill"
        case .cloudy:           return "cloud.fill"
        case .raining:          return "cloud.rain.fill"
        case .partlyCloudy:     return "cloud.sun.fill"
        case .thunderstorm:     return "cloud.bolt.rain.fill"
        case .snowing:          return "snowflake"
            
        }
    }
}

//SwiftUI

extension WeatherCondition {
    var image: some View {
        let image = Image(systemName: systemImage)
        switch self {
        case .sunny:            return image.foregroundColor(.yellow)
        case .cloudy:           return image.foregroundColor(.white)
        case .raining:          return image.foregroundColor(.white)
        case .partlyCloudy:     return image.foregroundColor(.white)
        case .thunderstorm:     return image.foregroundColor(.white)
        case .snowing:          return image.foregroundColor(.white)
            
        }
    }
}
