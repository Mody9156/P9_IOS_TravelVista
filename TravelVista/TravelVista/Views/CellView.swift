//
//  CellView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        VStack{
            List {
                Section (header: Text("Europe")){
                    HStack{
                        Image("norvege").clipShape(Circle())
                        VStack{
                            Text("Norvège")
                                .font(.title)
                                .foregroundColor(.blue)
                            Text("Oslo")
                                .foregroundColor(.gray)
                        }
                    }
                   
                    
                }
                Spacer()
                Text("4")
                Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
            }
            
        }
        
    }
}


