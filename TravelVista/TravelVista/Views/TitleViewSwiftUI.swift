//
//  TitleView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI


struct TitleViewSwiftUI: View {
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                
                Text("Vietnam")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("CustomBlue"))
                
                Text("Hanoi")
                    .fontWeight(.bold)
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


