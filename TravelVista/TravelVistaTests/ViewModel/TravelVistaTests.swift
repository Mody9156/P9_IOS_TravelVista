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
    
  
    func testWhenRegionsIsEmpty() throws {
        //Given
        let mockService = MockService()
        let travelViewModel = TravelViewModel(service: mockService)
        
        //When
        travelViewModel.regions.removeAll()
        
        //Then
        XCTAssertEqual(travelViewModel.regions.isEmpty, true)
    }
}

// Mock Service class to simulate loading data without reading a real JSON file

class MockService: Service {
    func load(_ filename: String) -> [Region] {
        // Return mock data instead of reading from a file
        let country = [Country(name: "France", capital: "Paris", description: "", rate: 3, pictureName: "", coordinates: Coordinates(latitude: 22.22, longitude: 22.44))]
        return [Region(name: "Afrique", countries: country)]  // Mocked data
    }
}

