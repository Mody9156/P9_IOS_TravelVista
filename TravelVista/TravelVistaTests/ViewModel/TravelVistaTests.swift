//
//  TravelVistaTests.swift
//  TravelVistaTests
//
//  Created by KEITA on 05/09/2024.
//

import XCTest
@testable import TravelVista

final class TravelVistaTests: XCTestCase {

    func testWhenRegionsIsNotEmpty() throws {
       //Given
        let travelViewModel = TravelViewModel()
        
        //When
        let result = travelViewModel.regions
        
        //Then
        XCTAssertEqual(result.isEmpty, false)
        XCTAssertEqual(result.first?.name == "Europe", true)
 
    }

    func testWhenRegionsNotEmpty() throws {
        //Given
        let travelViewModel = TravelViewModel()

        //When
        var result = travelViewModel.regions
        result.removeAll()
        //Then
        XCTAssertEqual(result.isEmpty, true)
    }
}
