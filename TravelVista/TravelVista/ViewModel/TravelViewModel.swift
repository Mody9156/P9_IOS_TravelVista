//
//  TravelViewModel.swift
//  TravelVista
//
//  Created by KEITA on 05/09/2024.
//

import Foundation

class TravelViewModel : ObservableObject {
   @Published var regions : [Region] = Service().load("Source.json")

}
