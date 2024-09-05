//
//  ListSwiftUIView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//
import SwiftUI

struct ListView: View {
    let travelViewModel: TravelViewModel
    
    var body: some View {
        NavigationStack {
            List {
                // Boucle sur chaque région dans le ViewModel
                ForEach(travelViewModel.regions, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        // Boucle sur chaque pays dans la région
                        ForEach(region.countries, id: \.name) { country in
                            //NavigationLink
                            NavigationView(country: country)
                        }
                    }
                }
            }
            .scrollContentBackground(.hidden) // Cache le fond de la liste
            .background(Color.clear) // Définit le fond de la liste comme transparent
            .navigationTitle("List de voyages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView : UIViewControllerRepresentable{
    var country : Country
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //created new instance
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController")//StoryBoard ID
                as? DetailViewController else {
            fatalError()
        }
        detailVC.country = country
        
        return detailVC // return instance
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //Update the user interface (SwiftUI) when you have an interaction
        //Our interface is static
    }
}


struct NavigationView : View {
    var country : Country
    
    var body : some View{
        
        // NavigationLink pour chaque pays
        NavigationLink(destination: DetailView(country:country)) {
            
            HStack {
                
                Image(country.pictureName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(country.name)
                        .font(.title2)
                        .foregroundColor(Color("CustomBlue"))
                    Text(country.capital)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Text("\(country.rate)")
                
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("AccentColor"))
            }
        }
    }
}
