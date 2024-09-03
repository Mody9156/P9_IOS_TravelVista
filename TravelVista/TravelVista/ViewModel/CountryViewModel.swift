//
//  CountryTable.swift
//  TravelVista
//
//  Created by KEITA on 03/09/2024.
//

import Foundation

class CountryViewModel : ObservableObject {
   @Published var region : [Region] = Service().load("Source.json")
    @Published var country : [Country] = Service().load("Source.json")
}
