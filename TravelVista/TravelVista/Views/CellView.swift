//
//  CellView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct CellView: View {
    var region : [Region]
    var country : [Country]
   
    var body: some View {
        VStack {
           
                Section{
                    VStack (alignment: .leading){
                        ForEach(region,id: \.name) { region in
                            Text(region.name).font(.title3).fontWeight(.bold).foregroundColor(.gray)
                        }
                        
                        Divider()
                        HStack{
                            ForEach(country,id: \.name) { country in
                                Image(country.pictureName)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading,spacing: 5){
                                    Text(country.name)
                                        .font(.title2)
                                        .foregroundColor(Color("CustomBlue"))
                                    Text(country.capital)
                                        .foregroundColor(.black)
                                }
                                Spacer()
                                Text("4")
                                
                                ForEach(0..<country.rate) { _ in
                                    Image(systemName:  "star.fill").resizable().aspectRatio( contentMode: .fit)
                                        .frame(width: 25, height: 25).foregroundColor(Color("AccentColor"))
                                }
                               
                                
                                
                            }
                        }
                        
                    }
                    
                } .navigationBarTitleDisplayMode(.inline)
                    .toolbar { // <2>
                        ToolbarItem(placement: .principal) { // <3>
                            VStack {
                                Text("List de voyages").font(.title2).fontWeight(.bold)
                            }
                        }
                    }

                        
        }
    }
    
}



