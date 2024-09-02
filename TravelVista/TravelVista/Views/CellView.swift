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
                    Section {
                        HStack{
                            Image("norvege").resizable().frame(width: 50, height: 50).aspectRatio(1, contentMode: .fit).clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("Norvège")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                Text("Oslo")
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Text("4")
                            Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                        }
                    }header: {
                        Text("Europe")
                    }
                 
                
            }.listStyle(.inset)
        }
        
    }
}


