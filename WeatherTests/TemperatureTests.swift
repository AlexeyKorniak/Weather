//
//  TemperatureTests.swift
//  WeatherTests
//
//  Created by elizavetavasileva on 2023/11/3.
//

import XCTest
@testable import Weather
final class TemperatureTests: XCTestCase {
    
    
    
    func testValueInC() throws {
        XCTAssertEqual(Temperature.F(68).valueInC, 20)
        XCTAssertEqual(Temperature.C(20).valueInC, 20)
    }
    func testValueInF() throws {
        XCTAssertEqual(Temperature.F(68).valueInF, 68)
        XCTAssertEqual(Temperature.C(20).valueInF, 68)
    }
    func testFahrenheitString() throws {
        XCTAssertEqual(Temperature.F(68).fahrenheitString, "68º")
        XCTAssertEqual(Temperature.C(20).fahrenheitString, "68º")
    }
    func tesCelciusString() throws {
        XCTAssertEqual(Temperature.F(68).celciusString, "20º")
        XCTAssertEqual(Temperature.C(20).celciusString, "20º")
    }
    
}
