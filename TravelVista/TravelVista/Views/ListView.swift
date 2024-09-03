//
//  ListSwiftUIView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI
//Simulate a View
struct ListView: View {
    var body: some View {
        NavigationStack{
           
            List{
               NavigationLink {
                   DetailView()
              } label: {
                  
                  CellView()
                  
              }
               
            }.scrollContentBackground(.hidden) // Cache le fond de la liste
                .background(Color.clear) // Définit le fond de la liste comme transparent
           
        }
    }
}

struct DetailView : UIViewControllerRepresentable{
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
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
