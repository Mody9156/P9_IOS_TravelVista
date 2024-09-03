//
//  CellView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct CellView: View {
    var body: some View {
            Section{
                VStack {
                   Text("Asie")
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
                        Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                    }
                    .padding(.vertical, 5)
                }
                
            }
        }
        
    
}



