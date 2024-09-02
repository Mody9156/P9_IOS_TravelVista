//
//  ListSwiftUIView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//

import SwiftUI

struct ListSwiftUIView: View {
    var body: some View {
        List{
           NavigationLink() {
               <#code#>
          } label: {
              CellView()
            }

        }
    }
}

struct DetailView : UIViewControllerRepresentable{
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError()
        }
        
        return detailVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        <#code#>
    }
}
