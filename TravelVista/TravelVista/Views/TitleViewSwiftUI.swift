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
                    
                    if let starCount = country.rate {
                   
                    ForEach(0..<starCount,id:\.self){ _ in
                        Image(systemName:  "star.fill").foregroundColor(Color("AccentColor"))
                    }
                }
                }
                .padding()
            }
        }
    }
}


