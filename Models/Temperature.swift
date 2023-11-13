//
//  Temperature.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/3.
//

import Foundation

enum Temperature {
    static let degreeSymbol: String = "º"
    case F(_ value: Int)
    case C(_ value: Int)
    
    var valueInF: Int {
        switch self {
        case .F(let value): return value
        case .C(let value): return Int(((Double(value)*1.8) + 32.0).rounded())
        }
    }
    var valueInC: Int {
        switch self {
        case .F(let value): return Int(((Double(value) - 32.0)*0.5556).rounded())
        case .C(let value): return value
        }
    }
    
    var celciusString: String { return "\(valueInC)\(Temperature.degreeSymbol)" }
    var fahrenheitString: String { return "\(valueInF)\(Temperature.degreeSymbol)" }
            
        }
    
