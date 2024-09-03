//
//  ListSwiftUIView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI
//Simulate a View
struct ListView: View {
    @ObservedObject var countryName : CountryName
    
    var body: some View {
        NavigationStack{
            
            List{
                ZStack{
                    NavigationLink {
                        DetailView(country: countryName.country)
                    } label: {
                        
                        EmptyView()
                        
                    }.opacity(0)
                    CellView().contentShape(Rectangle())
                    
                }
            }.scrollContentBackground(.hidden) // Cache le fond de la liste
                .background(Color.clear) // Définit le fond de la liste comme transparent
            
        }
    }
}

struct DetailView : UIViewControllerRepresentable{
    
    var country : [Country]
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //created new instance
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController")//StoryBoard ID
                as? DetailViewController else {
            fatalError()
        }
        
        return detailVC // return instance
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //Update the user interface (SwiftUI) when you have an interaction
        //Our interface is static
    }
}
