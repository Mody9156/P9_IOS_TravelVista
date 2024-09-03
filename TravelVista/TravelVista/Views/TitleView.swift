//
//  TitleView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI


struct TitleView: View {
    
    var body: some View {
        
        HStack {
                
                VStack(alignment: .leading) {
                    
                    
                    Text("Norvège")
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    
                    Text("Oslo")
                        .foregroundColor(.gray)
                }
                Spacer()
                ForEach(0..<4){ _ in
                    Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                }
               
                
            
        }
        .padding()
    }
}


