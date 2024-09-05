//
//  CountryTable.swift
//  TravelVista
//
//  Created by KEITA on 03/09/2024.
//

import Foundation
//Test
class TravelViewModel : ObservableObject {
   @Published var regions : [Region] = Service().load("Source.json")

}
