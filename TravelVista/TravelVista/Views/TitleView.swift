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
                Text("Vietnam")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Hanoi")
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding()
        .background(Color("AccentColor"))
        
    }
}

