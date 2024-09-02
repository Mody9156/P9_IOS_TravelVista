//
//  TitleView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI



struct TitleView: View {
    var country : Country?
    
    var body: some View {
        
        HStack {
            if let country = country{
                
                VStack(alignment: .leading) {
                    
                    
                    Text(country.name)
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    
                    Text(country.capital)
                        .foregroundColor(.gray)
                }
                Spacer()
                ForEach(0..<country.rate,id: \.self){ _ in
                    Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                }
               
                
            }
            
        }
        .padding()
    }
}


