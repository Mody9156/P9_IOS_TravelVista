//
//  CellView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct CellView: View {
    var country : [Region]
    var body: some View {
        VStack {
            
            Section{
                VStack (alignment: .leading){
                    Text("Asie").font(.title3).fontWeight(.bold).foregroundColor(.gray)
                    Divider()
                    HStack{
                        Image("vietnam")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading,spacing: 5){
                            Text("Vietnam")
                                .font(.title2)
                                .foregroundColor(Color("CustomBlue"))
                            Text("Hanoi")
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Text("4")
                        Image(systemName:  "star.fill").resizable().aspectRatio( contentMode: .fit)
                            .frame(width: 25, height: 25).foregroundColor(Color("AccentColor"))
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



