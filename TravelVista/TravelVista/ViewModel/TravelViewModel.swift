//
//  CountryTable.swift
//  TravelVista
//
//  Created by KEITA on 03/09/2024.
//

import Foundation

class TravelViewModel : ObservableObject {
   @Published var region : [Region] = Service().load("Source.json")

}
