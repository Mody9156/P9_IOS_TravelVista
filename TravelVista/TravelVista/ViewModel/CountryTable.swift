//
//  CountryTable.swift
//  TravelVista
//
//  Created by KEITA on 03/09/2024.
//

import Foundation

class CountryName : ObservableObject {
    var country : [Country] = Service().load("Source.json")
   
}
