//
//  CellView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//
import SwiftUI

struct CellView: View {
    var regions: [Region]
    
    var body: some View {
        VStack {
            ForEach(regions, id: \.name) { region in
                // Crée une section pour chaque région avec son nom comme en-tête
                Section(header: Text(region.name).font(.headline)) {
                    
                    Divider()
                    
                    // Boucle sur chaque pays dans la région
                    ForEach(region.countries, id: \.name) { country in
                        HStack {
                            // Image du pays
                            Image(country.pictureName)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            // Informations sur le pays
                            VStack(alignment: .leading, spacing: 5) {
                                Text(country.name)
                                    .font(.title2)
                                    .foregroundColor(Color("CustomBlue"))
                                Text(country.capital)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            // Affichage de la note
                            Text("\(country.rate)")
                            
                            // Affichage des étoiles en fonction de la note
                            ForEach(0..<country.rate, id: \.self) { _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("AccentColor"))
                            }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Liste de voyages")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
        }
        }
    }
}
