//
//  TitleView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct TitleViewSwiftUI: View {
   @State var country : Country?
    
    var body: some View {
        
        VStack {
            if let country = country {
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text(country.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("CustomBlue"))
                        
                        Text(country.capital)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    ForEach(0..<Int(country.rate)){ _ in
                        Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                    }
                }
                .padding()
            }
        }
    }
}


